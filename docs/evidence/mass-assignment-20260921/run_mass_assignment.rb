# Run with `bundle exec rails runner /tmp/run_mass_assignment.rb` in the isolated
# RAILS_ENV=test container described in the findings report. No external API calls.
require 'rack/test'
require 'sidekiq/testing'
require 'webmock'
require 'json'

raise 'Test environment required' unless Rails.env.test?
raise 'Isolated database required' unless ApplicationRecord.connection_db_config.database == 'mass_assignment_test_20260921'
Sidekiq::Testing.fake!
WebMock.enable!
WebMock.disable_net_connect!
ActionMailer::Base.delivery_method = :test
Rails.logger.level = Logger::ERROR
Doubtfire::Application.config.tii_enabled = false
# Grape can evaluate this entity block even when the exposed field is omitted.
# Supply external-feature metadata in memory, as repository tests do, so profile
# serialization does not attempt a Turnitin request. No permission code is stubbed.
Rails.cache.write('tii.features_enabled', TCAClient::FeaturesEnabled.new(
  tenant: TCAClient::FeaturesTenant.new(require_eula: false)
))

%w[Student Tutor Convenor Admin Auditor].each_with_index do |name, index|
  Role.find_or_create_by!(id: index + 1) { |r| r.name = name; r.description = "Synthetic test #{name}" }
end
['Not Started', 'Complete', 'Need Help', 'Working On It', 'Fix and Resubmit',
 'Feedback Exceeded', 'Redo', 'Discuss', 'Ready for Feedback', 'Demonstrate',
 'Fail', 'Time Exceeded', 'Assess in Portfolio', 'Attention Required', 'Rediscuss'].each_with_index do |name, index|
  TaskStatus.find_or_create_by!(id: index + 1) { |s| s.name = name; s.description = name }
end

class MassAssignmentEvidence
  include Rack::Test::Methods
  attr_reader :results

  def app
    Rails.application
  end

  def initialize
    @results = []
  end

  def request_as(user, method, path, body)
    header 'username', user&.username
    header 'auth_token', user&.generate_authentication_token!(token_type: :general)&.authentication_token
    public_send(method, path, JSON.generate(body), 'CONTENT_TYPE' => 'application/json', 'HTTP_ACCEPT' => 'application/json')
    @record[:request] = {
      method: method.to_s.upcase, path: path, actor: user&.username || 'anonymous',
      system_role: user&.role&.name || 'none',
      headers: { 'Content-Type' => 'application/json', 'username' => user&.username,
                 'auth_token' => user ? '[REDACTED local synthetic token]' : nil }, body: body
    }
    @record[:response] = {
      status: last_response.status,
      content_type: last_response.headers['content-type'],
      body: begin
        JSON.parse(last_response.body)
      rescue JSON::ParserError
        last_response.body
      end
    }
  end

  def check(label, expected, actual)
    @record[:checks] << { label: label, expected: expected, actual: actual, pass: expected == actual }
  end

  def snapshot(record, fields)
    record.reload.attributes.slice(*fields)
  end

  def scenario(id, purpose)
    @record = { id: id, purpose: purpose, checks: [] }
    ApplicationRecord.transaction(requires_new: true) do
      begin
        yield
      rescue StandardError => e
        @record[:execution_error] = "#{e.class}: #{e.message}"
        @record[:error_location] = e.backtrace.first(5)
      ensure
        @record[:verdict] = !@record[:execution_error] && @record[:checks].any? && @record[:checks].all? { |c| c[:pass] } ? 'PASS' : 'FAIL_OR_ERROR'
        @results << @record
        puts "#{id} #{@record[:verdict]}"
        raise ActiveRecord::Rollback
      end
    end
    Sidekiq::Job.clear_all
    ActionMailer::Base.deliveries.clear
  end

  def run
    ApplicationRecord.transaction do
      student = make_user('student', Role.student, '9100001')
      other = make_user('other-student', Role.student, '9100002')
      newcomer = make_user('new-student', Role.student, '9100003')
      convenor = make_user('convenor', Role.convenor, '9100004')
      tutor = make_user('tutor', Role.tutor, '9100005')
      admin = make_user('admin', Role.admin, '9100006')
      campus = Campus.create!(name: 'Synthetic Security Lab', abbreviation: 'SSL', mode: 'manual', active: true)
      unit = Unit.create!(name: 'Synthetic Mass Assignment Unit', description: 'Local security request evidence only',
                          code: 'MA20260921', start_date: 3.weeks.ago, end_date: 11.weeks.from_now, active: true,
                          send_notifications: false)
      unit.employ_staff(convenor, Role.convenor)
      unit.employ_staff(tutor, Role.tutor)
      project = unit.enrol_student(student, campus)
      other_project = unit.enrol_student(other, campus)
      definition = TaskDefinition.create!(unit: unit, name: 'Synthetic graded task', description: 'No upload required',
                                         abbreviation: 'MA1', weighting: 1, target_grade: 0, start_date: 2.weeks.ago,
                                         target_date: 1.week.from_now, upload_requirements: [], is_graded: true,
                                         max_quality_pts: 5, restrict_status_updates: false)
      task = project.task_for_task_definition(definition)
      other_task = other_project.task_for_task_definition(definition)
      base = "/api/projects/#{project.id}/task_def_id/#{definition.id}"
      project_fields = %w[user_id unit_id target_grade submitted_grade grade grade_rationale assessor_id enrolled spec_con_days]
      task_fields = %w[project_id task_definition_id grade quality_pts task_status_id assessment_date submission_processing_user_id]
      user_fields = %w[id username login_id role_id student_id first_name nickname]
      comment_fields = %w[user_id task_id type content_type assessor_id task_status_id extension_granted]

      scenario('U01', 'Student own-profile update ignores raw role/admin/credential/identity fields') do
        before = snapshot(student, user_fields)
        credential_before = student.encrypted_password
        request_as(student, :put, "/api/users/#{student.id}", {
          role_id: 4, admin: true,
          user: { nickname: 'Allowed nickname', system_role: 'Admin', role_id: 4, role: 'Admin', admin: true,
                  is_admin: true, username: 'ma-forged-admin', login_id: 'ma-forged-login',
                  encrypted_password: 'forged-password-hash' }
        })
        check('HTTP', 200, last_response.status)
        check('Allowed nickname saved; protected identity and role unchanged', before.merge('nickname' => 'Allowed nickname'), snapshot(student, user_fields))
        check('Password hash unchanged (hash not disclosed)', true, credential_before == student.encrypted_password)
      end

      scenario('U02', 'Student cannot update a different profile or select its owner through nested id') do
        before = snapshot(other, user_fields)
        request_as(student, :put, "/api/users/#{other.id}", user: { id: student.id, nickname: 'Forged profile', system_role: 'Admin', role_id: 4 })
        check('HTTP', 403, last_response.status)
        check('Other profile unchanged', before, snapshot(other, user_fields))
      end

      scenario('U03', 'Student cannot overwrite own managed student id') do
        before = snapshot(student, user_fields)
        request_as(student, :put, "/api/users/#{student.id}", user: { nickname: 'Must not save', student_id: '9999999' })
        check('HTTP', 422, last_response.status)
        check('Identity and allowed-field companion unchanged on rejection', before, snapshot(student, user_fields))
      end

      create_payload = { first_name: 'Synthetic', last_name: 'Created', email: 'ma-created@example.invalid',
                         username: 'ma-created', nickname: 'Created', system_role: 'Student', role_id: 4,
                         admin: true, is_admin: true, encrypted_password: 'forged-password-hash', login_id: 'forged-login' }
      scenario('U04', 'Student cannot create users, even with role/admin injection') do
        count = User.count
        request_as(student, :post, '/api/users', user: create_payload.merge(system_role: 'Admin'))
        check('HTTP', 403, last_response.status)
        check('No user created', count, User.count)
      end

      scenario('U05', 'Convenor may create Student; raw role/admin/credential fields cannot override declared role') do
        request_as(convenor, :post, '/api/users', user: create_payload)
        check('HTTP', 201, last_response.status)
        created = User.find_by(username: 'ma-created')
        check('Created requested Student', Role.student_id, created&.role_id)
        check('Protected login id ignored', nil, created&.login_id)
        check('Forged password hash ignored', false, created&.encrypted_password == 'forged-password-hash')
      end

      scenario('U06', 'Convenor cannot create declared Admin role') do
        count = User.count
        request_as(convenor, :post, '/api/users', user: create_payload.merge(system_role: 'Admin'))
        check('HTTP', 403, last_response.status)
        check('No user created', count, User.count)
      end

      enrol_payload = { unit_id: unit.id, student_num: newcomer.username, campus_id: campus.id,
                        target_grade: 3, grade: 3, submitted_grade: 3, assessor_id: student.id,
                        user_id: admin.id, enrolled: false, spec_con_days: 100,
                        project: { grade: 3, target_grade: 3, user_id: admin.id } }
      scenario('P01', 'Student cannot create enrolment/project through protected-field injection') do
        count = Project.count
        request_as(student, :post, '/api/projects', enrol_payload)
        check('HTTP', 403, last_response.status)
        check('No project created', count, Project.count)
      end

      scenario('P02', 'Authorised enrolment ignores undeclared grade/owner/extension fields') do
        request_as(convenor, :post, '/api/projects', enrol_payload)
        check('HTTP', 201, last_response.status)
        created = Project.find_by(user: newcomer, unit: unit)
        expected = { 'user_id' => newcomer.id, 'unit_id' => unit.id, 'target_grade' => 0, 'submitted_grade' => nil,
                     'grade' => 0, 'grade_rationale' => nil, 'assessor_id' => nil, 'enrolled' => true, 'spec_con_days' => 0 }
        check('Server-owned defaults and correct selected student', expected, created ? snapshot(created, project_fields) : nil)
      end

      scenario('P03', 'Student target_grade is allowed; companion assessed grade/owner fields are ignored') do
        before = snapshot(project, project_fields)
        request_as(student, :put, "/api/projects/#{project.id}", target_grade: 1, grade: 3, grade_rationale: 'Forged grade',
                   assessor_id: student.id, user_id: admin.id, unit_id: 9999999, spec_con_days: 100,
                   project: { grade: 3, target_grade: 3, user_id: admin.id })
        check('HTTP', 200, last_response.status)
        check('Only permitted own target grade changed', before.merge('target_grade' => 1), snapshot(project, project_fields))
      end

      scenario('P04', 'Student cannot write assessed project grade') do
        before = snapshot(project, project_fields)
        request_as(student, :put, "/api/projects/#{project.id}", grade: 3, old_grade: project.grade,
                   grade_rationale: 'Forged grade', assessor_id: student.id)
        check('HTTP', 403, last_response.status)
        check('Project assessment unchanged', before, snapshot(project, project_fields))
      end

      scenario('P05', 'Student cannot change own enrolment status') do
        before = snapshot(project, project_fields)
        request_as(student, :put, "/api/projects/#{project.id}", enrolled: false, target_grade: 3)
        check('HTTP', 403, last_response.status)
        check('Project unchanged', before, snapshot(project, project_fields))
      end

      scenario('P06', 'Student cannot change another student target grade') do
        before = snapshot(other_project, project_fields)
        request_as(student, :put, "/api/projects/#{other_project.id}", target_grade: 3, user_id: student.id)
        check('HTTP', 403, last_response.status)
        check('Other project unchanged', before, snapshot(other_project, project_fields))
      end

      scenario('T01', 'Student grade with submission trigger rejected before task/submission mutation') do
        before = snapshot(task, task_fields)
        submissions = task.task_submissions.count
        request_as(student, :put, base, trigger: 'ready_for_feedback', grade: 3, quality_pts: 5)
        check('HTTP', 403, last_response.status)
        check('Task assessment/status unchanged', before, snapshot(task, task_fields))
        check('No submission created', submissions, task.task_submissions.count)
      end

      scenario('T02', 'Valid student submission ignores nested grade, raw status/assessor and quality injection') do
        request_as(student, :put, base, trigger: 'ready_for_feedback', quality_pts: 5, task_status_id: 2,
                   project_id: other_project.id, assessment_date: '2099-01-01T00:00:00Z',
                   submission_processing_user_id: admin.id,
                   task: { grade: 3, task_status_id: 2, quality_pts: 5, project_id: other_project.id })
        check('HTTP', 200, last_response.status)
        expected = { 'project_id' => project.id, 'task_definition_id' => definition.id, 'grade' => nil,
                     'quality_pts' => -1, 'task_status_id' => TaskStatus.ready_for_feedback.id,
                     'assessment_date' => nil, 'submission_processing_user_id' => nil }
        check('Only allowed submission state, no injected assessment fields', expected, snapshot(task, task_fields))
      end

      scenario('T03', 'Raw model attributes cannot assign task completion or grade') do
        before = snapshot(task, task_fields)
        request_as(student, :put, base, include_in_portfolio: false, task_status_id: 2, quality_pts: 5,
                   task: { grade: 3, task_status_id: 2 }, assessment_date: '2099-01-01T00:00:00Z')
        check('HTTP', 200, last_response.status)
        check('Protected fields unchanged', before, snapshot(task, task_fields))
        check('Allowed portfolio selection saved', false, task.include_in_portfolio)
      end

      scenario('T04', 'Positive control: employed tutor can set task grade') do
        request_as(tutor, :put, base, grade: 3)
        check('HTTP', 200, last_response.status)
        check('Authorised assessment saved', 3, task.reload.grade)
      end

      comment_payload = { comment: 'Synthetic comment evidence', user_id: tutor.id, task_id: other_task.id,
                          type: 'TaskStatusComment', content_type: 'status', task_status_id: 2,
                          assessor_id: admin.id, extension_granted: true }
      scenario('C01', 'Comment creation ignores forged author, target, subtype and assessment fields') do
        request_as(student, :post, "#{base}/comments", comment_payload)
        check('HTTP', 201, last_response.status)
        comment = task.comments.find_by(comment: 'Synthetic comment evidence')
        expected = { 'user_id' => student.id, 'task_id' => task.id, 'type' => nil, 'content_type' => 'text',
                     'assessor_id' => nil, 'task_status_id' => nil, 'extension_granted' => nil }
        check('Server-bound comment identity and text type', expected, comment ? snapshot(comment, comment_fields) : nil)
      end

      scenario('C02', 'Own comment editing ignores forged author/subtype/assessment fields') do
        comment = task.add_text_comment(student, 'Synthetic before update')
        before = snapshot(comment, comment_fields)
        request_as(student, :put, "#{base}/comments/#{comment.id}", comment_payload.merge(comment: 'Synthetic after update'))
        check('HTTP', 200, last_response.status)
        check('Protected comment fields unchanged', before, snapshot(comment, comment_fields))
        check('Allowed comment text saved', 'Synthetic after update', comment.comment)
      end

      scenario('C03', 'Student cannot edit tutor comment by forging author id') do
        comment = task.add_text_comment(tutor, 'Synthetic tutor feedback')
        before = snapshot(comment, comment_fields + ['comment'])
        request_as(student, :put, "#{base}/comments/#{comment.id}", comment: 'Forged feedback', user_id: student.id,
                   type: nil, task_id: task.id)
        check('HTTP', 403, last_response.status)
        check('Tutor comment unchanged', before, snapshot(comment, comment_fields + ['comment']))
      end

      scenario('A01', 'Anonymous profile write rejected before protected fields are considered') do
        before = snapshot(student, user_fields)
        request_as(nil, :put, "/api/users/#{student.id}", user: { nickname: 'Anonymous', role_id: 4, system_role: 'Admin' })
        check('HTTP', 419, last_response.status)
        check('Profile unchanged', before, snapshot(student, user_fields))
      end
      raise ActiveRecord::Rollback
    end
  end

  def make_user(label, role, student_id)
    User.create!(username: "ma-#{label}", first_name: 'Synthetic', last_name: label,
                 email: "ma-#{label}@example.invalid", nickname: label, role: role,
                 student_id: student_id, password: 'Synthetic-local-only-20260921')
  end
end

evidence = MassAssignmentEvidence.new
evidence.run
payload = {
  tested_source_sha: 'd7f7a5b9c2d34ef279ac3a70bc58823def64005c', executed_at_utc: Time.now.utc.iso8601,
  transport: 'Rack::Test JSON requests through Rails.application and actual Grape authentication/authorization, in process',
  environment: Rails.env, database: ApplicationRecord.connection_db_config.database,
  all_network_calls_blocked_by_webmock: true, background_jobs: 'Sidekiq fake', mail_delivery: 'test',
  results: evidence.results,
  remaining_fixture_rows: { users: User.where("username LIKE 'ma-%'").count, units: Unit.where(code: 'MA20260921').count }
}
File.write('/tmp/mass-assignment-results.json', JSON.pretty_generate(payload))
puts "RESULTS #{payload[:results].count} cases / #{payload[:results].sum { |r| r[:checks].count }} checks / #{payload[:results].count { |r| r[:verdict] != 'PASS' }} failures or errors"
exit(payload[:results].all? { |r| r[:verdict] == 'PASS' } ? 0 : 1)
