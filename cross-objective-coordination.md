# Cross-Objective Coordination Register

This is the working register for **MISC-X01 - Coordinate Cross-Objective Branches, Shared Surfaces, and Integration Order**.

- **Source snapshot:** Planner workbook exported 26 August 2026; public GitHub refs refreshed 27 August 2026 at 12:28:17Z and pull requests refreshed at 12:15:29Z
- **Coordinator recorded in Planner:** Maple Fox
- **Approval state:** Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. This closes MISC-X01 document/coordination approval only and is not attributed to uncontacted individuals or converted into product/release approval.

Contributors must read this register before changing a shared frontend, API contract, CI rule or Deploy configuration. A Planner assignee is not automatically an objective lead, reviewer or merge authority.

## Immediate blockers and decisions still required

| Item | Current state | Required decision or evidence |
|---|---|---|
| Web and API combined validation branches | Historical candidates remain provenance only. Closure API `6c74dbbc` and Web `16c22c99` passed hosted checks and merged into `11.0.x` through PRs #77/#105. | Preserve the exact composed predecessor boundary and do not treat merge as security disposition or release approval. |
| First-Time Tutorial Web branch | Requester approved the plan `feature/student-onboarding` from the then-current Web `11.0.x`; verified planning base `4034e7d1`. Named-leader confirmation was waived. No public branch was found or created. | Re-audit the base and assign an implementation owner before branch creation. |
| Shared preferences and help structure | Requester approved the coordination default below for MISC-X01 closure and waived named-leader confirmation. | Downstream tickets must still record owners, accessibility review and any change to this default before altering a shared surface. |
| Optional sub-category leads | All are explicitly **Unassigned** below; requester accepted that state for MISC-X01 closure. | Assign the relevant role before downstream implementation/review or retain Unassigned and escalate conflicts. |
| Final Deploy path | Lock [`ad463dc8`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ad463dc8b1b8005f0774819fe4d506da3c281947) pins API `6c74dbbc` / Web `16c22c99` and merged into `11.0.x` through PR #26. Fresh clone/Compose and running-stack acceptance belong to predecessor lock `4851fc1` with Web `5255c271`; all final Deploy hosted checks pass. | Rerun the composed acceptance at the merged Web/Deploy pair or explicitly accept that boundary, then obtain security and release decisions before production use. |
| New accessibility lint/CI gates | Coordination policy is defined, but no new gate is treated as approved here. | Demonstrate the rule on every active Web objective branch, assign remediation and obtain branch-protection approval. |
| Objective evidence indexes | Existing evidence is linked where available; several new objectives do not yet have a public index. | Publish one index per objective and replace each explicit **TBD** entry. |

## Branch and integration summary

The [branch register](branch-register.md) is the source of truth for current heads and pull-request destinations.

| Objective | Web target | API target | Integration or evidence status |
|---|---|---|---|
| Cross-Project Dashboard | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | Operational feature targets; MVP card owner is Maple Fox. Lead/merge approval link is not recorded here. |
| Email Notifications | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | Shares the canonical Notifications branches with Mobile. |
| Mobile Notifications | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | Shares the canonical Notifications branches with Email. |
| Peer Progress Indicator | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | Operational feature targets; MVP card owner is Maple Fox. Lead/merge approval link is not recorded here. |
| First-Time Tutorial | Requester-approved plan `feature/student-onboarding`; branch not created | None unless approved state design requires it | Named-leader confirmation was waived for TUT-F01 closure; downstream implementation still records owner and re-audited base. No API or Deploy branch. See the [objective index](first-time-tutorial-objective.md). |
| Calendar, Theme, Accessibility and Safe Uploads | Pending their objective branch decisions | Only where their tickets require API work | Suggested ticket-pack names do not create approved branches. |

### Combined validation candidate composition

The following describes the frozen 26 August candidate history; it is evidence of composition, not approval of later branch movement:

1. Web began from the published all-features integration foundation, merged the then-current `11.0.x`, `feature/cross-unit`, `feature/peer-progress-indicator` and `feature/notifications`, followed by the focused-test constructor repair. Candidate head: `832d5e47eb26ff2e21ce25e576daa13b3054cc3e`.
2. API began from the published all-features integration foundation, merged the then-current `11.0.x`, `feature/cross-unit` and `feature/notifications`. Candidate head: `75d7337fd0dd04f9b3a985f287e40f3ec6a467a0`.
3. Both refs are published validation candidates and remain unapproved. They are evidence/review inputs, not student task pull-request targets or release refs.
4. Deploy gitlinks introduced at `c4c0d9a5` pinned those two exact prior
   candidates; `32c7abbf` labelled the pair as prior-candidate provenance on
   public Deploy base [`5351009d`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/5351009df475c4a3d4f788110b0197ce64b3d3f4).
   Neither historical commit is the final lock or release approval.
5. Current API/Web release and feature heads moved after the candidates were tested. The [branch register](branch-register.md) records the 27 August heads; equivalent patches cannot be inferred solely from ancestry.

The 27 August closure pass produced exact **published** final validation
candidates:

1. Web `closure/web-ontrack-mvp-20260827` at
   `16c22c992c821e16981c8f8cb2601f0a61f73007` merged current `11.0.x` into
   the validated `5255c271` candidate and kept both the new page container and
   target-grade accessibility/disabled attributes. [PR #105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105)
   merged as `4034e7d1`; hosted test (104 files/607 tests), Node, lint and review
   policy pass. At `5255c271`, type-check, zero-warning lint, CPD (98 pass/one
   todo), PPI (109), notifications (177), the full suite (103 files/605
   pass/one todo) and the Node 22 production build (99.911 seconds) passed.
2. API `closure/api-ontrack-mvp-20260827` at
   `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` includes the previous/all CPD
   repair: the audited request moved from 453 to 38 SQL queries and 4.218 to
   2.390 seconds, and its focused regression passes one run/six assertions. Its
   eight deterministic CI shards assign all 129 discovered test files exactly
   once, 15–17 files and 4,278–4,284 lines per shard; the sharding unit test
   passes five runs/29 assertions, and RuboCop, actionlint and syntax checks are
   clean. Hosted [PR #77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77)
   CI passes all eight helper-backed shards and the exact-manifest roll-up;
   test steps range from 2:31 to 5:25, so the strict five-minute target is
   missed by 25 seconds.
3. The classified local unsharded API run remains a diagnostic rather than a
   suite pass because 22 helper/socket and two workflow-mount outcomes require
   the hosted environment; all 26 outcomes are classified and two stale test
   defects were fixed at the final head. Hosted CI is authoritative and green.
   The exact API scan is complete (35 Critical/579 High) and is not production
   approval.
4. Published Deploy lock `chore/ontrack-mvp-lock-20260827` at
   `ad463dc8b1b8005f0774819fe4d506da3c281947` pins those exact final
   candidates. [PR #26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26)
   merged it as `6c61802e`. A fresh recursive clone of the preceding lock
   checked out API `6c74dbbc`, Web
   `5255c271`, LTI `ec0df42` and nested JPlag viewer `4132c30`; the merged
   all-features Compose configuration rendered with the cloned component paths
   and `compose_contract_test.py` passed. The exact composed stack then passed
   CPD previous/all browser acceptance, eligible/suppressed task-level PPI and
   the four-event Sidekiq-to-Mailpit matrix. Background Web Push subscription,
   worker delivery and sign-out cleanup passed, but no OS banner/click was
   observable. The merged lock advances the Web gitlink to `16c22c99`; all
   three Deploy workflows and review policy pass. This is validation evidence,
   not a release decision.

### Current pull-request disposition gate

The public pull-request snapshot was refreshed at **2026-08-27T12:15:29Z**.
The previously named API, Web and Deploy umbrella/follow-up pull requests were
merged: API #43, #56, #57, #60, #62, #63, #65 and #74; Web #59, #60, #61,
#69, #70, #71, #77, #78, #81 and #96; Deploy #11, #12, #18, #24 and #25.
This resolves their live PR disposition; it does not retroactively extend the
focused test evidence to their later merge commits.

The remaining open review surfaces observed in the audited repositories were:

| Repository | Open pull request | Review state and coordination impact |
|---|---|---|
| API | [#72](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/72) | Changes requested; Safe Upload security work outside the four-MVP candidate but on an API shared surface. |
| Web | [#103](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/103) | Changes requested; CPD project-card work on `feature/cross-unit`. |
| Guide | [#1](https://github.com/ontrack-features-t2-2026/github-guide/pull/1) | Review required; documentation CI policy, not product approval. |
| Guide | [#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) | Closure publication PR to `main`; its evidence refresh is the final documentation surface. |

Web #72 and #104 are merged and approved. API #77, Web #105 and Deploy #26 are
also merged with their hosted checks green. Merge state does not imply release
approval or extend the exact composed-stack evidence to the later Web/Deploy
heads.

The closure candidates and source patches were reviewed before merge. A release
owner must still review the evidence boundaries and open risks before release
use. “Not an ancestor” does not prove absence; an equivalent patch can have a
different commit. The full acceptance gaps are in the
[four-stream MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md).

## Ownership and escalation

### Recorded card owners versus approval roles

| Area | Recorded card owner | Approval or integration role | Status |
|---|---|---|---|
| MISC-X01 coordination | Maple Fox | Cross-objective coordinator | Recorded Planner assignee; final branch/deploy authority is not inferred. |
| ON-MVP01, CPD-MVP01, EN-MVP01, MN-MVP01 and PPI-MVP01 | Maple Fox | MVP evidence and handover owner | Recorded Planner assignee; objective-lead and release approvals still need linked decisions. |
| TUT-F01 and TUT-MVP01 | Maple Fox | Tutorial objective/evidence owner | Recorded Planner assignee. Frontend integration, documentation, security and test reviewer roles remain Unassigned below. |
| CAL-F01 | David Tenni | Calendar feature ticket owner | Owns the ticket behaviour, not the whole shared header/preferences surface. |
| THM-F02 | Gaurav Manohar Myana | Theme preference ticket owner | Owns theme-choice behaviour after THM-F01; must coordinate shared preferences layout. |
| TUT-W04 | Julian Mirchandani | Tutorial replay ticket owner | Owns replay behaviour after branch and placement approval; must coordinate shared help/menu layout. |
| A11Y-T01 | Duong Bao Huy Tran | Accessibility CI ticket owner | May implement the ticket; enabling a blocking organisation rule still requires coordinated approval. |

### Optional sub-category lead register

Ticket authors retain attribution. A sub-category lead coordinates boundaries and evidence; the role does not transfer ticket ownership.

| Objective and sub-category | Lead | Boundary | Escalation |
|---|---|---|---|
| O1-A Tutorial foundation and documentation expansion | **Unassigned** | TUT-F01; expand DOC-9/10/11 without duplicates | Tutorial objective owner, then MISC coordinator |
| O1-B Tutorial product rules, UX and security | **Unassigned** | TUT-UX01 and TUT-S01 | Tutorial objective owner, then MISC coordinator |
| O1-C Tutorial frontend foundation and state | **Unassigned** | TUT-W01 and TUT-W02 | Frontend integration owner, currently Unassigned |
| O1-D Tutorial core steps and replay | **Unassigned** | TUT-W03 and TUT-W04 | Frontend integration owner, currently Unassigned |
| O1-E Tutorial QA, pilot, docs and handover | **Unassigned** | TUT-T01, TUT-Q01, TUT-U01, TUT-D04 and TUT-MVP01 | Tutorial objective owner |
| O2-A Accessibility foundations and evidence | **Unassigned** | A11Y-L01 and A11Y-D01 | Accessibility objective owner, currently Unassigned |
| O2-B Accessibility audits and inclusive UX | **Unassigned** | A11Y-A02/A03/A04 and A11Y-U01 | Accessibility objective owner, currently Unassigned |
| O2-C Accessibility prioritisation and shared remediation | **Unassigned** | A11Y-P01 and A11Y-F02 to F05 | Accessibility integration owner, currently Unassigned |
| O2-D Accessibility critical journeys | **Unassigned** | A11Y-F06 and A11Y-F07 | Accessibility integration owner, currently Unassigned |
| O2-E Accessibility tests, CI and independent validation | **Unassigned** | A11Y-T01/T02 and A11Y-V01 | Accessibility objective owner and repository maintainer |
| O2-F Accessibility documentation and handover | **Unassigned** | A11Y-D02 and conditional support | Accessibility objective owner |
| O3-B Theme leadership, audit and contract | **Unassigned** | THM-JL01, THM-D01 and THM-D02 | Theme objective owner, currently Unassigned |
| O3-C Theme foundation and preference | **Unassigned** | THM-F01 and THM-F02 | Theme integration owner, currently Unassigned |
| O3-D Theme shell and workflow migration | **Unassigned** | THM-M01 to THM-M04 | Theme integration owner, currently Unassigned |
| O3-E Theme testing, validation and handover | **Unassigned** | THM-T01, THM-Q01 and THM-MVP01 | Theme objective owner |
| O4-A Safe Upload leadership and policy | **Unassigned** | Objective parent and FILE-A01 | Safe Upload objective owner, currently Unassigned |
| O4-B Upload guidance and categories | **Unassigned** | FILE-F01 and FILE-F02 | Safe Upload objective owner |
| O4-C Task-chat attachment implementation | **Unassigned** | FILE-B01 and FILE-F03 | Cross-repository integration owner, currently Unassigned |
| O4-D Existing upload hardening and infrastructure | **Unassigned** | FILE-T01 and conditional FILE-DP01 | Safe Upload objective owner and Deploy lead |
| O4-E Upload security and regression | **Unassigned** | FILE-S01 and FILE-T02 | Security reviewer, currently Unassigned |
| O4-F Upload docs, integration and handover | **Unassigned** | FILE-D02 and FILE-MVP01 | Safe Upload objective owner |

Before a second contributor edits a surface owned by an Unassigned role, the ticket must name an owner, reviewer and merge order, and the coordinator must post the decision in team chat.

## Shared-surface ownership and conflict map

Paths link to the branch that currently demonstrates the surface. They identify likely conflict areas, not permission to edit every file below the path.

| Shared surface | Current files or contract | Behaviour owner | Presentation/accessibility owner | Conflict and required order |
|---|---|---|---|---|
| First-time welcome and profile setup | [Web welcome component](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/welcome), [edit profile form](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/common/edit-profile-form), API [user entity](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/11.0.x/app/api/entities/user_entity.rb) and [users API](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/11.0.x/app/api/users_api.rb) | Existing setup steward: **Unassigned**; tutorial state ticket: TUT-W02 owner Duong Bao Huy Tran | A11Y implementation owner: **Unassigned**; Theme token owner: **Unassigned** | Preserve existing setup and `has_run_first_time_setup`. Tutorial state must be separate and evaluated only after setup completes. |
| Notification preferences and device opt-in | [Notification settings](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications/src/app/common/notification-settings) and [edit profile form](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications/src/app/common/edit-profile-form) | Canonical Notifications branch steward: **Unassigned** | THM-F02 owner Gaurav Manohar Myana; A11Y owner: **Unassigned** | Notifications establishes the baseline first; Theme rebases before editing the same form. |
| Header, menus, notification bell and Calendar entry | [Header](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications/src/app/common/header) and [Calendar modal](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/common/modals/calendar-modal) | Notification owner: **Unassigned**; CAL-F01 owner David Tenni; TUT-W04 owner Julian Mirchandani | Theme owner: **Unassigned**; A11Y owner: **Unassigned** | Existing Notifications first; contextual CAL-F01 may proceed in the task view, but any header edit rebases after Notifications; TUT-W04 lands after the help/menu decision. |
| Cross-Project Dashboard | [Dashboard feature](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit/src/app/dashboard) and [project dashboard](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit/src/app/projects/states/dashboard) | Dashboard integration owner: **Unassigned**; CPD MVP card owner Maple Fox | Theme migration owner: **Unassigned**; A11Y finding owner must be named per finding | CPD tickets own dashboard logic. Theme changes tokens/presentation only; Accessibility fixes one registered finding without duplicating CPD behaviour work. |
| Task view, task cards and Calendar action | [Task viewer](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/units/task-viewer) and [task dashboard](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/projects/states/dashboard/directives/task-dashboard) | Feature owner per ticket; CAL-F01 owner David Tenni | Theme owner: **Unassigned**; A11Y owner per finding | CAL-F01 owns add-to-calendar behaviour. It must not create a competing global settings page. |
| Upload, submission and comment attachments | [File uploader](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/common/file-uploader), [upload modal](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/tasks/modals/upload-submission-modal), [comment composer](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/src/app/tasks/task-comment-composer) | Safe Upload integration owner: **Unassigned**; API remains final policy authority | Theme owner: **Unassigned**; A11Y owner per finding | FILE policy and API contract precede UI changes. The separate SLR submission defect is not absorbed into upload-format tickets. |
| Theme tokens and global styles | [Theme entry](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/src/theme.scss) and [Material theme](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/src/styles/m3-theme.scss) | Feature teams retain feature logic | THM-F01/Theme integration owner: **Unassigned** | Theme tickets own semantic tokens and presentation. They must not alter role checks, submission logic, notifications or feature state. |
| Frontend CI and lint | [Web workflows](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/.github/workflows) and [review policy](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/.github/review-policy) | Repository CI maintainer: **Unassigned**; A11Y-T01 ticket owner Duong Bao Huy Tran | Each failing feature branch needs a named remediation owner | A new blocking lint rule follows the staged-gate process below; it cannot strand an active branch. |
| API CI and shared contracts | [API workflows](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x/.github/workflows) and [review policy](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x/.github/review-policy) | API integration/CI owner: **Unassigned** | Security reviewer: **Unassigned** | Effective deadline, notification and upload contracts each keep one API source of truth. |
| Deploy and proxy configuration | [Deploy workflows](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x/.github/workflows) and immutable [merged handover](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/6c61802e964b5e9adafad8610610fba9aace467c/HANDOVER.md) | Deploy integration owner: **Unassigned** | Security/operations reviewer: **Unassigned** | Feature-specific Deploy work remains conditional; the MVP validation lock is a coordination artifact, not approval. |
| Shared documentation | [GitHub guide](https://github.com/ontrack-features-t2-2026/github-guide) plus objective docs linked below | Documentation integration owner: **Unassigned** | Objective reviewer and security/privacy reviewer: **Unassigned** | Keep one canonical evidence index per objective and link, rather than copy, existing work. |

## Proposed shared preferences and help decision

**Decision status: Requester-approved coordination default on 27 August 2026;
named-leader confirmation waived by requester.** This approval is not
attributed to an uncontacted product, accessibility or frontend lead.

The coordination default is one discoverable account/settings structure and one permanent help entry:

1. Use the existing account/edit-profile route as the host for persistent user choices. Present separate sections for **Notifications**, **Appearance** and **Calendar Integration** rather than creating another settings page.
2. Notifications retains the existing email preference controls and device-specific push opt-in. Email and Mobile stay on `feature/notifications`.
3. THM-F02 adds only Light, Dark and System under Appearance after THM-F01 is available. It stores only the approved enum and uses shared semantic tokens.
4. Calendar subscription/feed controls belong under Calendar Integration. The CAL-F01 one-task “Add to Google Calendar” action remains contextual in the task view.
5. TUT-W04 adds one **Tutorial and Help** entry in the approved student menu/help location. Replay is an action, not a preference: it starts the current tutorial without clearing the saved automatic-prompt decision.
6. Tutorial and Help links to the stable written guide and troubleshooting page when they exist. It must not create another settings page.
7. All sections require keyboard operation, visible focus, accessible names, narrow-screen behaviour and role-appropriate visibility.

Approval record to complete before shared-surface implementation:

| Reviewer role | Name | Decision | Link/date |
|---|---|---|---|
| Product/objective lead | **Unassigned** | Pending | TBD |
| Frontend integration owner | **Unassigned** | Pending | TBD |
| Accessibility reviewer | **Unassigned** | Pending | TBD |
| Documentation/UX reviewer | **Unassigned** | Pending | TBD |

## Dependency graph

```text
MISC-X01 branch + surface decision
├── canonical Notifications preference baseline
│   ├── CAL-F01 contextual task action
│   ├── THM-F01 theme foundation → THM-F02 appearance preference
│   └── Tutorial design/security chain → TUT-W04 Tutorial and Help replay
├── TUT-F01
│   └── DOC-9/TUT-D01
│       ├── DOC-11/TUT-D02 route map + copy
│       └── DOC-10/TUT-D03 trigger/state rules
│           ├── TUT-UX01 prototype
│           └── TUT-S01 threat model + storage decision
│               └── TUT-W01 shell → TUT-W02 state
│                   ├── TUT-W03 core steps
│                   └── TUT-W04 replay/help
│                       └── TUT-T01 + TUT-Q01 → TUT-U01 → TUT-D04 → TUT-MVP01
├── A11Y audit finding → one registered implementation owner
│   └── remediation on the owning feature branch → A11Y-T01 staged CI gate
└── FILE-A01 policy → API authority/contract → Web upload UI
    └── proven proxy mismatch only → FILE-DP01

SLR-E01 deadline-rule decision and approval
├── SLR-E02 canonical API calculation
├── SLR-E03 authorised per-task opt-out
└── SLR-E04 display + canonical notification event
    ├── existing Calendar feed consumes the same effective deadline
    └── SLR-E05 + CAL-D01/CAL-T02/CAL-Q02 regression evidence
```

The post-feedback effective deadline has one backend source of truth. Calendar and Notifications consume it; neither computes a second deadline.

## Shared-surface merge order

This order is a proposed conflict-control sequence. It does not replace each objective's approved target branch.

| Order | Change | Rule and current state |
|---|---|---|
| 0 | Reserve the surface | Name owner, reviewer, source SHA, target and evidence location in the ticket and this register. Unassigned work does not begin on a shared file. |
| 1 | Existing Notification settings | Treat current `feature/notifications` as the shared preference/header baseline. Resolve its open checks and review before downstream branches copy or modify the same files. |
| 2 | CAL-F01 | A task-view-only button may proceed in parallel. Any header, menu, Calendar modal or global settings edit must rebase on order 1 and receive the shared-surface review. |
| 3 | THM-F02 | Starts only after THM-F01 and the shared layout decision. Rebase on the latest Notification preference baseline; change appearance behaviour/tokens without rewriting Notification or Calendar logic. |
| 4 | TUT-W04 | Lands after the help/menu placement is approved and orders 1–3 have settled their shared files. Replay must not reset automatic-prompt state. |
| 5 | Combined validation | Merge objective heads into a fresh candidate from the recorded base, run all required checks and document exact SHAs. Do not merge the candidate into a release line without a reviewed pull request and explicit approval. |

When an earlier item changes after a later branch starts, the later owner must rebase or merge the updated target, rerun focused tests and update evidence before review.

## Feature, Accessibility and Theme boundaries

- The feature ticket owns authorised behaviour, state, data contracts and acceptance tests.
- The Accessibility register assigns each finding to one implementation ticket and one owner. Do not copy the same fix into an A11Y ticket and a feature ticket.
- The assigned implementation ticket makes the semantic/interaction fix; the Accessibility reviewer verifies it independently.
- Theme tickets own semantic tokens, contrast-safe presentation and theme infrastructure. They do not change feature logic, role checks, dates, submissions, notification delivery or tutorial state.
- Feature tickets use shared semantic tokens and do not create one-off light/dark palettes.
- If a finding spans behaviour and presentation, split the acceptance checks but keep one merge owner and a recorded order.

## CI and lint gate rules

Existing workflows are evidence inputs, not proof that every check passed for a later commit:

- [Web Actions](https://github.com/ontrack-features-t2-2026/doubtfire-web/actions)
- [API Actions](https://github.com/ontrack-features-t2-2026/doubtfire-api/actions)
- [Deploy Actions](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/actions)
- [Guide Actions](https://github.com/ontrack-features-t2-2026/github-guide/actions)

Before merge:

1. Record repository, branch and full commit tested.
2. Run the existing relevant lint, typecheck/build, automated tests, security/privacy checks and documentation validation.
3. Link the exact workflow run or attach reproducible command output.
4. Resolve or formally defer failures with an owner, rationale and follow-up ticket; never describe a failing or skipped check as passed.
5. Obtain the required reviewers for the risk and surface. A card assignee is not independent review evidence.
6. Re-run affected checks after conflict resolution or a changed base.

Before a new Accessibility or lint rule becomes blocking:

1. Run it in advisory mode against `11.0.x`, `feature/cross-unit`, `feature/notifications`, `feature/peer-progress-indicator` and every other active frontend objective branch.
2. Publish the failure inventory, including file, rule and owning ticket.
3. Give each active branch a named remediation path and target date.
4. Keep the existing stable required-check name or coordinate the branch-protection migration.
5. Obtain repository-maintainer approval, then announce the enforcement date.
6. Only then enable the blocking gate and record the first green run for each active branch.

## Deploy branch and release rules

A Web or API change does not automatically require a Deploy branch.

| Possible trigger | Branch rule | Minimum evidence before creation |
|---|---|---|
| FILE-DP01 proxy/upload limit | Conditional | Reproduce direct-API and proxy boundary behaviour, record approved application limit and show a real proxy mismatch. |
| CAL-DEP01 Calendar environment/config | Conditional | Demonstrate a missing environment, callback, proxy or compose requirement that cannot be solved in Web/API/docs. |
| TUT-DEP01 tutorial environment | **No branch now** | Only a proven migration, submodule, environment or release requirement after tutorial design and implementation exist. |
| A11Y-ENV01 accessibility environment | Conditional | Demonstrate a repeatable environment/tooling requirement and its impact on active branches. |

For proven Deploy work:

1. Name a Deploy owner and security/operations reviewer.
2. Record the approved public base branch and full SHA.
3. Keep the change focused; do not combine unrelated feature code or secrets.
4. Run configuration validation and a repeatable local/production-like smoke check.
5. Open a reviewed pull request; do not treat local compose success as production deployment.
6. Record rollback or reversal instructions and the exact validated Web/API refs.

## Master evidence index

| Objective or control | Evidence link | Current status |
|---|---|---|
| Branch heads and PR destinations | [T2 2026 branch register](branch-register.md) | Current snapshot; approvals identified separately from observations. |
| 27 August ticket closure | [Documentation, tutorial and MVP closure status](closure-status-20260827.md) | DOC-2, TUT-F01, MISC-X01, scan and ON-MVP01 Planner-ready outcomes separated from publication/release follow-up. |
| Combined four-stream validation and handover | [OnTrack MVP evidence and handover index](docs/evidence/ontrack-mvp-2026-08-26/README.md) | Published final candidates/lock and remaining blockers recorded; no MVP completion or release is claimed. |
| First-Time Tutorial | [Objective, branch plan and evidence index](first-time-tutorial-objective.md) | Repository foundation complete with requester-approved branch plan; publication and downstream role assignment remain. |
| Cross-Project Dashboard | [Web status](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/feature/cross-unit/CROSS_UNIT_STATUS.md), [data-source map](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/feature/cross-unit/docs/cpd-data-source-map.md) | Existing evidence; CPD-MVP01 must still link exact final commits, runs and reviews. |
| Email Notifications | [API notification status](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/feature/notifications/NOTIFICATIONS_STATUS.md), [event index](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/feature/notifications/docs/notifications/events/README.md) | Shared Notifications evidence; EN-MVP01 must identify email-specific final evidence. |
| Mobile Notifications | [Push setup](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/feature/notifications/docs/notifications/push-setup.md), [local push testing](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/feature/notifications/docs/notifications/testing-push-locally.md) | Shared Notifications evidence; MN-MVP01 must identify device/browser results and final review. |
| Peer Progress Indicator | [PPI-Q02 validation and MVP handover](docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md), [exact-head Web handover](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/docs/ppi-f02-unit-summary-handover.md), [API data-source map](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/feature/peer-progress-indicator/docs/peer-progress/data-source-map.md) | **Validated / handed over** at merged Web `16c22c99`; live unit API remains future/out of scope and is not claimed. |
| Combined stack | [Merged final lock](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/ad463dc8b1b8005f0774819fe4d506da3c281947/ONTRACK-MVP-VALIDATION-LOCK-20260827.md); historical prior commits [`c4c0d9a5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4c0d9a5fc37b9346206ed2963fbfa3684c2a696) / [`32c7abbf`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/32c7abbf5551d172970c31acea9522ec4da29b08) | Lock `ad463dc8` pins API `6c74dbbc` and Web `16c22c99` and merged through Deploy #26. Fresh recursive clone, Compose render/contract and running-stack acceptance passed on predecessor lock `4851fc1` with the same API and Web `5255c271`; no release decision is inferred. |
| Accessibility | **TBD - no public objective evidence index linked** | Blocker |
| Theme | **TBD - no public objective evidence index linked** | Blocker |
| Safe Uploads | **TBD - no public objective evidence index linked** | Blocker |
| Calendar and SLR effective-deadline integration | **TBD - link CAL and SLR evidence indexes after the one-source-of-truth decision** | Blocker |
| Weekly integration workflow | API [#73](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/73), Web [#98](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/98), Deploy [#25](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/25) | Automation pull requests were merged. This records repository state, not organisation-wide enforcement approval. |

## Weekly conflict review

Review this table at least weekly while the objectives are active.

| Review date | Reviewer | Branch movement | Shared-file conflict | CI/deploy change | Decision and evidence |
|---|---|---|---|---|---|
| 2026-08-26 | MISC-X01 documentation audit | Canonical Notifications targets corrected; combined Web/API validation candidates published | Preferences/help structure, objective integration owners and sub-category leads remain unresolved | Staged CI and conditional Deploy rules documented | This register and [branch register](branch-register.md); approval links remain pending |
| 2026-08-27 | MISC-X01 closure audit | Release/feature heads moved; named umbrella/follow-up PRs merged; old Web/Deploy integration refs deleted | Web #103 and API #72 remain active shared-surface review points; Web #72/#104 are merged | Weekly workflow PRs merged; prior-candidate Deploy head `32c7abb` created without release claim | [Branch register](branch-register.md), this PR table and prior gitlink commit `c4c0d9a5fc37b9346206ed2963fbfa3684c2a696` |
| 2026-08-27 | MVP final-candidate validation | API [#77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77), Web [#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) and Deploy [#26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) merged into `11.0.x`; Guide [#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) is the publication PR into `main` | Final API `6c74dbbc`, Web `16c22c99` and Deploy lock `ad463dc8` are recorded | Hosted API eight-shard/roll-up CI, exact-head Web focused/hosted checks, PPI-Q02 mock-boundary validation, exact final-lock Compose contract, predecessor running-stack CPD/PPI/email acceptance and exact merged-Web scanning pass; Mobile OS receipt/click, image disposition and release decision remain open | [Final closure validation](docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md), [PPI handover](docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md), [MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md) and [closure status](closure-status-20260827.md) |
| YYYY-MM-DD | **Unassigned** |  |  |  |  |

## Team-chat update template

The repository-side MISC-X01 deliverables are complete as a factual
coordination handover: current branches and PRs, explicit Unassigned roles,
shared surfaces, proposed preferences/help structure, dependency order,
feature/accessibility/theme boundaries, CI staging, conditional Deploy rules
and the weekly review register are recorded. Requester approval recorded 27
Aug 2026; named-leader confirmation waived by requester. MISC-X01 is therefore
**repository complete / publication follow-up**. The effective coordination
deadline and merged Guide link still need to be posted in Planner/team chat,
and downstream implementation must assign its relevant Unassigned roles.

Planner-ready status:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Branch heads and live PR dispositions were refreshed on 27 August; shared surfaces, integration order, CI/Deploy rules and explicit Unassigned roles are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. API 6c74dbb and Web 16c22c99 are merged into 11.0.x and pinned by merged Deploy lock ad463dc8; c4c0d9a/32c7abb remain prior-candidate provenance. Guide #2 is the publication PR to main. Fresh recursive clone, Compose contract, hosted API/Web/Deploy CI, PPI-Q02 mock-boundary validation, composed CPD/PPI/email acceptance and exact merged-Web scanning pass; observable Mobile OS receipt/click, image disposition and release approval remain open. Remaining publication actions: publish the Guide PR, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles.
```

```text
MISC-X01 coordination register updated: [LINK TO MERGED REGISTER]

Current operational targets:
- CPD: feature/cross-unit (Web and API)
- Email + Mobile: feature/notifications (Web and API)
- PPI: feature/peer-progress-indicator (Web and API)
- First-Time Tutorial: requester-approved Web branch plan; branch not created; no API or Deploy branch

Before changing profile, preferences, help, menus, header, dashboard, task, upload/comment, CI or Deploy files, check the ownership row and merge order. If the owner is Unassigned, stop and ask the objective owner/MISC coordinator to assign the surface. Post any ownership or order change here before a second contributor starts.

Publication/downstream follow-up:
[PLANNER/TEAM-CHAT LINKS, EFFECTIVE DEADLINE, AND RELEVANT ROLE ASSIGNMENTS]
```
