# Mass Assignment Vulnerability Testing evidence

Ticket: **ST - Security Team → Mass Assignment Vulnerability Testing**

## Scope and method

Tested API source: `d7f7a5b9c2d34ef279ac3a70bc58823def64005c`, the merged
`origin/11.0.x` fetched on 21 September 2026. Source was not changed for these
checks. The isolated worktree is on `codex/mass-assignment-evidence-20260921`.

The included Ruby runner sends JSON requests through `Rails.application` using
Rack::Test. Those requests exercise the real Grape parameter parsing,
authentication, authorization, persistence and serializers. Authentication is
not bypassed: local synthetic users receive valid application-generated auth
tokens. Tokens are redacted in evidence. This is in-process local API testing,
not a request to a deployed production endpoint or a browser penetration test.

Only synthetic `ma-*` users with `example.invalid` email addresses are used.
Each case records its actual JSON request/response and compares reloaded
database attributes with expected values. An HTTP 200/201 alone is not a pass:
protected fields must remain unchanged or use the server-selected value.

Infrastructure is isolated in database `mass_assignment_test_20260921` and
container `mass-assignment-api-tests-20260921` with no published ports. The
existing MariaDB/Redis servers were not reset or restarted. Sidekiq uses its
fake adapter, email delivery uses Rails' test adapter, Turnitin is disabled for
this runner with external feature metadata supplied in memory for profile
serialization, and WebMock blocks external HTTP connections. No authentication
or permission behavior is stubbed. No background
workers or email/push deliveries were started. All synthetic users, units,
projects, tasks, tokens and case writes are rolled back at the end; only the
isolated database schema and fixed role/status reference rows remain.

## Parameter declarations reviewed

| Endpoint | Declaration and persistence boundary |
| --- | --- |
| `PUT /api/users/:id` | `app/api/users_api.rb:68` declares the nested profile hash and `system_role`; lines 123–193 allowlist ordinary profile fields. Own role changes are ignored. Other-account role changes use explicit promote/demote authorization. Raw `role_id`, `admin`, `is_admin`, credentials and `login_id` are not permitted. Managed student-ID changes are explicitly rejected. |
| `POST /api/users` | `app/api/users_api.rb:203` declares user creation fields. Lines 222–252 allowlist profile/identity inputs and resolve the declared `system_role` through per-role create authorization. Raw role IDs do not override that choice. |
| `POST /api/projects` | `app/api/projects_api.rb:223` requires unit, student identifier and campus. The authorized handler calls `unit.enrol_student(student, campus)`, constructing the model from those resolved objects; arbitrary project fields are not mass assigned. |
| `PUT /api/projects/:id` | `app/api/projects_api.rb:102` declares explicit operations. The handler uses one ordered operation branch. Students may choose their own `target_grade`; `grade` is an assessed result with a separate `:assess` permission. Enrolment changes require `:change_project_enrolment`. Other raw model attributes are not assigned. |
| `PUT /api/projects/:id/task_def_id/:task_definition_id` | `app/api/tasks_api.rb:157` declares triggers, portfolio inclusion, grade, quality points and discussion inputs. Non-staff grade requests are rejected before mutation. The transition model applies quality points only in allowed staff assessment transitions; raw model attributes and a nested `task` hash are not assigned. |
| `POST /api/projects/:project_id/task_def_id/:task_definition_id/comments` | `app/api/task_comments_api.rb:38` declares text, attachment, reply and client request ID. Creation binds task and author from the authorized route/current user and uses text-comment creation; injected STI/type/assessment attributes are not mapped to the model. |
| `PUT /api/projects/:project_id/task_def_id/:task_definition_id/comments/:id` | `app/api/task_comments_api.rb:282` declares only comment text. The handler checks project access, existing author, editable type and time window, then assigns only text. |

Line numbers above refer to the tested source SHA, not future branch heads.
`system_role`, `grade`, `target_grade` and `quality_pts` are declared inputs;
their permissibility depends on the operation and caller. `admin` and
`is_admin` are probe keys rather than actual `users` table columns; `role_id`
is the persisted privilege attribute inspected in the checks.

## Reproduction

The original isolated container is now stopped. To rerun, first check the API
checkout manually with `git rev-parse HEAD`: it must equal the tested SHA above.
The runner records that SHA as a fixed label; it does not verify source equality.
Use an equivalently isolated Rails test setup, or verify the original owned
container still mounts that exact checkout and isolated database, then start it.
For that original setup, run:

```sh
docker start mass-assignment-api-tests-20260921
docker cp run_mass_assignment.rb mass-assignment-api-tests-20260921:/tmp/run_mass_assignment.rb
docker exec mass-assignment-api-tests-20260921 bundle exec rails runner /tmp/run_mass_assignment.rb
docker cp mass-assignment-api-tests-20260921:/tmp/mass-assignment-results.json ./results.json
```

Run the first command from this evidence directory. The runner refuses any
environment except Rails test and the exact isolated database name. Its source
SHA must be checked against the container's mounted worktree before rerunning.
The source recorded in `results.json` is the tested revision, not a claim that
future revisions are covered. Do not point this runner at production or an
existing application database.

## What this closes and what it does not claim

This bounded exercise identifies seven create/update routes, reviews their
parameter/persistence boundaries, attempts protected-field injection and
records a verdict per scenario. It does not cover every endpoint, parameter
encoding, role combination, file upload/import, SSO deployment configuration,
browser behavior, race condition or infrastructure boundary. A pass means the
specific tested mutation was protected; it is not a comprehensive security
certification. Unexpected fields being silently ignored is recorded separately
from an explicit 4xx rejection.

## Exact Planner attachment steps

1. Open **OnTrack T2 2026 → ST - Security Team → Mass Assignment Vulnerability
   Testing** and confirm the task title.
2. In task details, choose **Add attachment → Link**. Paste the published GitHub
   link to this README or `findings.md` from the reviewed evidence branch/commit.
   Name it **Mass-assignment evidence — 21 September 2026** and open it once to
   confirm the report and raw evidence are readable. The local ZIP supplied with
   this follow-up is also available for a file attachment if preferred.
3. Paste the summary from [planner-summary.txt](planner-summary.txt) into the
   ticket's Notes, keeping the existing goal and scope; include the evidence URL.
4. Mark **Confirmed I have started**, **Create/update endpoints identified**,
   **Params declarations reviewed**, **Protected-field injection attempted on
   each**, and **Pass/fail documented per endpoint** using this evidence.
5. Mark **Report attached below** after the attachment is visible. Set
   **Progress → Completed** once you accept the stated local-test scope. This
   does not approve or merge code.

These attachment controls follow [Microsoft's Planner attachment instructions](https://support.microsoft.com/en-us/planner/attach-files-photos-or-links-to-a-task).
The report has not been attached and the Planner card has not been edited by
this runner. No production patch was needed for the tested cases.

## Raw metadata interpretation

The retained `all_network_calls_blocked_by_webmock` label in the raw evidence
means outbound HTTP intercepted by WebMock was blocked. It is not a claim to
block every network protocol: the runner used its isolated database and cache
connections. Raw run outputs are retained unchanged so the observed evidence
and this clarification remain distinguishable.

## Fixture correction recorded

The initial run's `results-initial.json` and `run-initial.log` are retained.
Eighteen scenarios passed; U01 and U05 reached a profile serializer that tried
to fetch missing Turnitin feature metadata. WebMock refused that external call,
and the runner then failed to parse the non-JSON error response. These were
test-environment errors, not passing security results. The corrected runner
supplies in-memory external-feature metadata, following the existing test
helper's approach, and retains a non-JSON response body if a later error occurs.
The final result files distinguish this initial attempt from the rerun.
