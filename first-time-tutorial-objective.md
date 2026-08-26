# First-Time Tutorial Objective, Branch Plan and Evidence Index

This document establishes the working foundation for **TUT-F01 - Establish the First-Time Tutorial objective, branch plan and evidence index**.

- **Snapshot:** 26 August 2026 (AEST)
- **Planner ticket owner:** Maple Fox
- **TUT-F01 state:** In progress. The objective map and evidence index exist, but branch, role and reviewer approvals listed below are unresolved.
- **User-facing name:** First-Time Tutorial
- **Code, folder and branch name:** `student-onboarding`

## Objective

Provide an eligible new student with a short, optional and accessible introduction to four existing OnTrack journeys:

1. select a unit;
2. find the project or task dashboard;
3. find and use the existing target-grade control; and
4. find the existing Calendar Integration.

The planned flow supports Back, Next, Skip for now, Do not show automatically again, Finish, Close and a permanent manual replay action. It must remain usable with keyboard navigation, assistive-technology checks, zoom and narrow screens.

This foundation ticket does not approve final copy, state rules, production code, a tour dependency, API work, Deploy work or release.

## Existing foundation that must be preserved

### Welcome and profile setup

Web already has a [welcome/profile setup component](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/welcome). It waits for authentication, redirects a user who has completed setup, and otherwise presents the existing profile form.

This is useful foundation, but it is **not** the guided First-Time Tutorial.

### Existing setup flag

API already exposes `has_run_first_time_setup` through the [user entity](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/11.0.x/app/api/entities/user_entity.rb) and [users API](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/11.0.x/app/api/users_api.rb). Its database migration predates this objective.

The flag means that the existing welcome/profile setup ran. It must not be renamed, reset or silently reinterpreted as tutorial completion, dismissal, replay or current step.

### Required state boundary

```text
authentication ready
  → existing profile/setup data ready
    → has_run_first_time_setup remains the existing setup boundary
      → role, enrolment, unit and project data ready
        → separately approved tutorial eligibility/state is evaluated
```

Tutorial work must not:

- mark profile setup complete;
- change enrolment, current unit, target grade, Calendar subscription, assessment status or submission data;
- include marks, feedback, extensions or detailed assessment information in saved tutorial state;
- start automatically for staff roles when the student steps are not valid; or
- block normal OnTrack use when a target, unit, project or storage mechanism is unavailable.

If progress is stored, the minimum proposed fields are tutorial version, state and current step only. TUT-D03 and TUT-S01 must approve the exact state model and storage location before implementation.

## Scope boundaries

### In the planned MVP

- optional welcome and four planned guidance steps, subject to TUT-D02 approval;
- safe missing-target, no-unit, loading and storage-failure behaviour;
- skip, dismiss, finish and explicit replay rules;
- a reusable Web shell and stable target contract;
- focused automated tests and manual accessibility/browser QA;
- synthetic-data pilot evidence, user/contributor guides and handover.

### Out of scope for TUT-F01

- production Angular implementation;
- final tutorial copy or final trigger/state decision;
- changing the API or database;
- creating a third-party tour dependency;
- production analytics or detailed behaviour tracking;
- staff onboarding or a site-wide help-centre redesign;
- production deployment.

DOC-9, DOC-10 and DOC-11 are existing cards. Expand them as TUT-D01, TUT-D03 and TUT-D02 respectively; do not create duplicate documentation cards or discard their authorship/history.

## Branch plan

The branch names below remain suggestions until the named approval is linked.

| Repository | Source/base record | Planned branch or target | Status and rule |
|---|---|---|---|
| Web | Current public `11.0.x` observed at [`11bbcbf7`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/11bbcbf700836013cbd40a44bab0d99ef30cca9f). This is an observation, not the approved objective base. | Suggested objective integration branch: `feature/student-onboarding` | **Suggested / unapproved.** Repository lead must approve the name and exact base SHA before the branch or child code branches are created. |
| API | Current public `11.0.x` observed at [`2a67e30f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/2a67e30f0f1cfebbf90ad49f264515e7618e7f79). | No API objective branch | **No branch.** Conditional only if TUT-D03 plus TUT-S01 approve server-side state and document why browser/existing storage is insufficient. Keep `has_run_first_time_setup` separate. |
| Deploy | Public local-development and integration foundations are listed in the [branch register](branch-register.md). | No Deploy objective branch | **No branch.** Conditional only if later work demonstrates a migration, submodule, environment, proxy or release requirement. |
| GitHub guide | Guide `main` at `5d20dd8d7f6451cbab01e216ab130843e4046528` | [`docs/ontrack-mvp-evidence-20260826`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/ontrack-mvp-evidence-20260826) | Published documentation candidate containing this index; pending review/merge. |
| Other documentation | Documentation lead has not provided an approved integration target here. | Suggested `docs/student-onboarding-*` task branches | **Pending documentation-lead decision.** Do not invent a repository/target. |

After the Web objective branch is approved, every child ticket must record:

- repository;
- approved source branch and full source SHA;
- child branch;
- pull-request target;
- owner and reviewers;
- dependency heads merged;
- test commands/results; and
- pull request and evidence links.

An integration or validation branch is not a child-ticket target. Ordinary task pull requests go to the lead-approved tutorial feature branch.

## Required role decisions

Planner ticket assignment is preserved below, but it does not automatically fill a reviewer or integration role.

| Role | Current assignment | Status | Required evidence |
|---|---|---|---|
| Objective and evidence owner | Maple Fox | Recorded through TUT-F01/TUT-MVP01 assignment | Link the Planner objective and written branch/scope decision |
| Documentation reviewer | **Unassigned** | Blocker | Name and linked review of TUT-D01/D02/D03 and TUT-D04 |
| Frontend integration owner | **Unassigned** | Blocker | Name and written approval of Web branch/base and shared-surface merge order |
| Security/privacy reviewer | **Unassigned** | Blocker | Name and linked TUT-S01 decision |
| Accessibility reviewer | **Unassigned** | Blocker | Name and linked prototype/QA review |
| Automated test owner | Thien Phuc Tran is assigned TUT-T01 | Ticket owner recorded; objective test-lead role not inferred | Confirm role and link test plan/results |
| Manual QA owner | Sujay Aitham is assigned TUT-Q01 | Ticket owner recorded; QA approval role not inferred | Confirm role and link QA matrix/results |
| Pilot owner | Jay Shrimpton is assigned TUT-U01 | Ticket owner recorded; approval role not inferred | Link de-identified pilot result |
| Release/deploy authority | **Unassigned** | No release/deploy approval requested by TUT-F01 | Only required if a future release or Deploy change is proposed |

## Dependency and integration order

```text
TUT-F01 objective, branch and evidence foundation
└── DOC-9 / TUT-D01 problem and user stories
    ├── DOC-11 / TUT-D02 route map and approved copy
    └── DOC-10 / TUT-D03 trigger, state, storage and version rules
        ├── TUT-UX01 prototype and early review
        └── TUT-S01 threat model, minimum data and dependency decision
            └── TUT-W01 reusable shell and target contract
                └── TUT-W02 eligibility and state integration
                    ├── TUT-W03 four core steps
                    └── TUT-W04 permanent replay/help entry
                        └── TUT-T01 automated tests
                            └── TUT-Q01 manual accessibility/browser QA
                                └── TUT-U01 pilot and critical fixes
                                    └── TUT-D04 guides and handover
                                        └── TUT-MVP01 final validation
```

TUT-W04 also depends on the proposed shared preferences/help decision in [MISC-X01](cross-objective-coordination.md). It must coordinate with existing Notification settings, CAL-F01 and THM-F02, and must not create a second settings page.

## Central ticket and evidence index

Statuses and assignees reflect the 26 August 2026 Planner workbook snapshot. Suggested branches are planning aids only.

| Ticket | Recorded owner | Repository and suggested task branch | Depends on | Snapshot status | Required evidence / current link |
|---|---|---|---|---|---|
| TUT-F01 objective foundation | Maple Fox | GitHub guide: `docs/ontrack-mvp-evidence-20260826` | None | In progress | This document; [branch register](branch-register.md); [MISC-X01 register](cross-objective-coordination.md). Planner link, approval and team-chat confirmation: **TBD**. |
| DOC-9 / TUT-D01 problem and user stories | Jeffy Sam Babu | Documentation target pending | TUT-F01 | Not started | Problem evidence, four to six user stories, review and existing-card link: **TBD**. |
| DOC-11 / TUT-D02 route map and copy | **Unassigned** | Documentation target pending | TUT-D01 | Not started | Four real targets, approved copy, fallbacks and review: **TBD**. |
| DOC-10 / TUT-D03 trigger and state rules | **Unassigned** | Documentation target pending | TUT-D01 | Not started | Eligibility, skip/dismiss/replay, storage/version decision and approval: **TBD**. |
| TUT-UX01 prototype and review | Swyam Khare | Documentation; suggested `design/student-onboarding-prototype-review` | TUT-D02 and TUT-D03 | Not started | Desktop/mobile prototype, keyboard/focus design, de-identified findings and decision: **TBD**. |
| TUT-S01 threat model | Vinh Khang Truong | Web/API read-only plus docs; suggested `docs/student-onboarding-threat-model` | TUT-D03 and early UX | Not started | Data flow, minimum data, dependency review, storage/API decision, controls and reviewer approval: **TBD**. |
| TUT-W01 shell and target contract | Duong Bao Huy Tran | Web; suggested `web/student-onboarding-shell` | TUT-D02, TUT-D03, UX and S01 | Not started | Approved source SHA, PR, commits, component/service tests and dependency decision: **TBD**. |
| TUT-W02 eligibility and state | Duong Bao Huy Tran | Web; suggested `web/student-onboarding-state-integration` | W01 and approved storage decision | Not started | PR, state tests, failure tests, setup-regression evidence and API evidence only if approved: **TBD**. |
| TUT-W03 four core steps | Niethin Rueshil Shreedharan | Web; suggested `web/student-onboarding-core-steps` | W01, W02 and TUT-D02 | In progress | Branch approval is not yet linked; PR, target/fallback tests, desktop/mobile evidence: **TBD**. Do not treat “In progress” as branch approval. |
| TUT-W04 replay/help | Julian Mirchandani | Web; suggested `web/student-onboarding-replay-help` | W01, W02, TUT-D02 and MISC-X01 decision | Not started | Placement approval, PR, menu screenshots, replay/state regression, keyboard/role/link tests: **TBD**. |
| TUT-T01 automated tests | Thien Phuc Tran | Web; suggested `test/student-onboarding-web`; API only if approved | W01 to W04 | Not started | Traceability matrix, commands, versions, exit codes, totals, lint/typecheck/build and focused tests: **TBD**. |
| TUT-Q01 accessibility/browser QA | Sujay Aitham | No branch unless one focused QA fix is assigned | W03, W04 and T01 | Not started | Browser/role/state matrix, keyboard, screen reader, zoom, responsive, route and fallback results: **TBD**. |
| TUT-U01 pilot and fixes | Jay Shrimpton | Documentation; suggested `docs/student-onboarding-pilot-result` | Q01 | In progress | Consent/script, synthetic accounts, de-identified findings, critical/high fix links and retest: **TBD**. Do not claim a working pilot before implementation and QA evidence exists. |
| TUT-D04 user/contributor guides | Jeffy Sam Babu | Current docs repository; suggested `docs/student-onboarding-user-and-contributor-guide` | U01 | In progress | Student guide, troubleshooting, contributor guide, safe screenshots, link checks and handover: **TBD**. Draft activity does not imply MVP completion. |
| TUT-MVP01 final validation | Maple Fox | Docs plus approved Web/API branches; suggested `docs/student-onboarding-mvp-validation` | All required tutorial tickets | Not started | Final PR/commit index, E2E states, regression/QA/test/pilot/docs evidence and independent approvals: **TBD**. |

## Evidence requirements

Every evidence row must use portable GitHub, Planner or approved documentation links. Do not link a private local path.

### Branch and pull-request evidence

- approved source branch and full source SHA;
- child branch and full final SHA;
- pull-request URL and target branch;
- linked review decisions, including changes requested and resolved;
- merge commit or explicit unmerged/handover state.

### Automated and manual validation

- exact command, tool/browser version, date, exit code and result totals;
- workflow run URL for the exact commit where CI exists;
- new, in-progress, skipped, dismissed, completed and replay states;
- no unit/project, missing or delayed target, staff role, storage/API failure and narrow screen;
- regression proving welcome/profile setup still works and `has_run_first_time_setup` retains its meaning;
- regression proving the tutorial never automatically changes a unit, grade, Calendar subscription or assessment data.

### Security, privacy and accessibility

- minimum stored fields and retention/version rule;
- authentication/own-user tests if an API is approved;
- no secrets, real student data, marks, feedback or detailed assessment content in screenshots, logs or saved state;
- keyboard order, visible focus, Escape and focus return;
- assistive-technology result, 200% zoom, reduced motion and supported browsers;
- dependency licence, maintenance, telemetry, bundle and accessibility review if a new package is proposed.

### Handover and approval

- final student and contributor guides;
- de-identified prototype/pilot findings and accepted decisions;
- known limitations, deferred items and named owners;
- objective, documentation, technical, security/privacy and accessibility review links;
- exact outcome: completed, partially completed or handed over, with reasons. Never translate “tests passed locally” into “released” or “deployed.”

## Approval log

| Decision | Required approver | Current state | Link/date |
|---|---|---|---|
| Objective scope and MVP boundary | Objective/product lead | Pending | TBD |
| Web objective branch name and exact base SHA | Web repository lead | Pending | TBD |
| Documentation repository/target | Documentation lead | Pending | TBD |
| Trigger, storage and version rules | Objective, frontend and security reviewers | Pending | TBD |
| API branch needed or not needed | Security reviewer plus API lead | **No API branch by default; conditional decision pending design** | TBD |
| Deploy branch needed or not needed | Deploy lead | **No Deploy branch; no demonstrated trigger** | Not required unless a trigger appears |
| Shared Tutorial and Help placement | MISC-X01/product/accessibility reviewers | Pending | See [proposed decision](cross-objective-coordination.md#proposed-shared-preferences-and-help-decision) |
| MVP completion/handover | Objective, docs, technical, security and accessibility reviewers | Not started | TBD |

## TUT-F01 completion checklist

- [x] Objective, scope and existing foundation are recorded.
- [x] Existing welcome/profile setup and setup-flag boundaries are explicit.
- [x] No API or Deploy branch has been created by this foundation plan.
- [x] Dependency order and central evidence fields are documented.
- [x] Existing DOC-9, DOC-10 and DOC-11 are mapped for expansion rather than duplication.
- [ ] Objective section/bucket and every confirmed Planner card are cross-linked.
- [ ] Required leads/reviewers are named or an authorised decision accepts the explicit Unassigned roles.
- [ ] Web repository lead approves the tutorial branch and exact base SHA.
- [ ] Documentation lead approves its repository/target.
- [ ] Planner, pull-request and review links replace every required TBD.
- [ ] Objective map, ownership, dependency order and branch rules are posted in team chat with a link to the merged document.

Until the unchecked items are resolved, record TUT-F01 as **in progress / foundation drafted**, not completed.

## Planner or team-chat update

```text
TUT-F01 foundation drafted: [LINK TO MERGED OBJECTIVE INDEX]

Recorded boundaries:
- First-Time Tutorial is separate from the existing welcome/profile setup.
- has_run_first_time_setup keeps its existing setup meaning and is not tutorial completion.
- feature/student-onboarding is suggested only; Web lead approval and exact base SHA are still required.
- No API branch unless TUT-D03 and TUT-S01 approve server-side state.
- No Deploy branch unless later work proves a Deploy-specific need.
- DOC-9, DOC-10 and DOC-11 will be expanded as TUT-D01, TUT-D03 and TUT-D02, not duplicated.

Open blockers:
[NAMES/APPROVAL LINKS FOR FRONTEND INTEGRATION, DOCS, SECURITY, ACCESSIBILITY AND TEST/QA ROLES]

Contributors must add their source SHA, branch, PR, commits, tests, screenshots and reviews to the central evidence row before handover.
```
