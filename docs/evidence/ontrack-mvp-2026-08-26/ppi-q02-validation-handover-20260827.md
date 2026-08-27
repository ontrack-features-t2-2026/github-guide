# PPI-Q02 validation and PPI MVP handover — 2026-08-27

## Decision

**PPI-Q02 and PPI-MVP01 result: validated / handed over.** The exact merged Web
head
[`16c22c992c821e16981c8f8cb2601f0a61f73007`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/16c22c992c821e16981c8f8cb2601f0a61f73007)
contains the privacy-safe task-level PPI and the reusable mock-backed unit-level
summary. The approved MVP boundary is met: the task-level view uses the
authorised API, while the unit-level proof of concept is demonstrable with safe
mock/pre-calculated data and cannot expose its mock in production.

The supplied Planner export records `PPI-Q02` as completed on 20 August 2026
with 10/10 checklist items. Its acceptance criteria require normal, genuine
zero, suppressed, unavailable and disabled validation; separate student and
anonymous-cohort labels; privacy; non-colour meaning; desktop/narrow usability;
and an explicit API-gap handover. The `PPI-MVP01` criteria expressly allow the
unit summary to use safe mock or pre-calculated data and list a live unit-level
summary API as out of scope. A live unit-level API is therefore future work,
not a missing PPI-Q02 or MVP acceptance item.

This is validation and handover evidence. It does **not** claim delivery of a
live unit-level API, production release approval, or an independent GitHub
approval of Guide PR #2.

## Integrated implementation and design evidence

| Pull request | Merged contribution |
| --- | --- |
| Web [#31](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/31) | Typed unit-summary model, safe-state resolver, explicitly mock/demo service method, and privacy regression tests. |
| Web [#32](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/32) | Plain-language task/unit labels, privacy limits, state copy, accessibility guidance, and annotated wireframe. |
| Web [#38](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/38) | Reusable unit-summary component, responsive layout, state rendering, demo gating, screenshots, and API-gap handover. |
| Web [#39](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/39) | De-identified task-sheet design feedback and recorded design decisions used as a validation input. |

All four PRs are merged into `feature/peer-progress-indicator` and their work is
present in the exact merged closure head above. Web PR
[#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105)
merged that closure head into `11.0.x` as
[`4034e7d1`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/4034e7d1a8d5f7bb68239eb63f1089ab84a8be3d).

## Acceptance matrix

| PPI-Q02 / MVP criterion | Exact-head evidence | Result |
| --- | --- | --- |
| Normal state and separate meanings | The component renders separately labelled **Your progress** and **Anonymous cohort** panels, separate numeric values, two progress bars, and distinct accessible labels. | Pass |
| Genuine `0%` | The state resolver returns `no-data` while retaining both zero values; the component displays both `0%` values rather than an unavailable message. | Pass |
| Small-cohort suppression | A malformed suppressed response is normalised by clearing the cohort percentage before rendering; the student's own value may remain visible and the hidden percentage cannot be displayed. | Pass |
| Unavailable state | A missing cohort value produces the unavailable state, retains any valid student value, and renders only one progress bar. | Pass |
| Disabled state | Both percentages are cleared and no percentage is rendered. | Pass |
| Stale state | The cohort percentage is cleared even if a malformed stale response contains one; the neutral unavailable message is rendered. | Pass |
| Loading/error transitions | Loading and error clear previous data, so stale percentages cannot survive a transition or failed request. | Pass |
| Privacy and suppression | The component contract contains aggregate percentages and state metadata only. It renders no peer identity, student ID, project ID, raw cohort count, individual task state, mark, feedback, or ranking. Staff viewing another student's project do not receive the demo summary. | Pass |
| Meaning beyond colour | State text, headings, numeric text, icons, `role=status`/`role=alert`, and progress-bar `aria-label` values carry the meaning independently of colour. | Pass |
| Desktop and narrow layout | The component is one column by default and two columns from the medium breakpoint; its dashboard container spans the available row. PR #38 records a [desktop capture](https://github.com/user-attachments/assets/9af94bf1-7606-45b8-a8a5-6bb88af52552) and [narrow capture](https://github.com/user-attachments/assets/6081161a-b489-4a88-a53c-fd8c996424c0). | Pass |
| Production mock gating | `DEMO_TOOLS_AVAILABLE` requires both `enableDemoTools === true` and `production === false`; `showDemoPeerProgress` additionally requires enabled demo mode and a student-owned view. Production fails closed and cannot show a fabricated unit percentage. | Pass |
| Live unit-level API boundary | The handover names the future backend endpoint and frontend-adapter responsibilities. Planner explicitly places that API outside this MVP. | Deferred / future scope |

Primary exact-head sources:

- [unit-summary state resolver](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/api/models/peer-progress-unit-summary-state.ts)
  and [state tests](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/api/models/peer-progress-unit-summary-state.spec.ts);
- [unit-summary component](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/projects/states/dashboard/directives/progress-dashboard/peer-progress-unit-summary)
  and [component tests](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/projects/states/dashboard/directives/progress-dashboard/peer-progress-unit-summary/peer-progress-unit-summary.component.spec.ts);
- [demo-mode production gate](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/demo/demo-mode.store.ts);
- [dashboard integration](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/projects/states/dashboard/directives/progress-dashboard/progress-dashboard.component.ts);
- [PPI-F02 handover](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/docs/ppi-f02-unit-summary-handover.md).

## Test evidence

The exact merged Web head passed the focused fixture/state command covering:

```text
src/app/api/fixtures/peer-progress-indicator.fixtures.spec.ts
src/app/api/models/peer-progress-indicator-state.spec.ts
src/app/api/models/peer-progress-unit-summary-state.spec.ts
```

Result: **3 files passed, 40 tests passed, 3.31 seconds**. These tests validate
the shared mock fixtures, privacy-safe state mapping, genuine zero,
suppression, unavailable, stale and disabled behavior. The component's seven
targeted rendering tests are also included in the exact-head PPI matrix. The
broader exact-head PPI matrix passes 109 tests, and the hosted Web suite passes
607 tests across 104 files.

## Handover

The current unit-level presentational component and state resolver are stable
handover points. A future live unit implementation should replace only the demo
data acquisition path and must add an authorised server contract that derives
student/project context and target grade server-side, enforces cohort
suppression, avoids identifiable/raw peer data, and returns the state metadata
already consumed by the view model.

Until that separately reviewed work exists, keep the unit summary mock-backed,
development-only, and labelled as a proof of concept. Do not convert the
task-level browser acceptance result into a claim of live unit-level delivery.

Planner-ready text:

```text
PPI-MVP01 VALIDATED / HANDED OVER — Exact merged Web head 16c22c9 contains the authorised task-level PPI plus the privacy-safe mock-backed unit summary from merged PRs #31/#32/#38/#39. PPI-Q02 is recorded completed 10/10; its normal, genuine 0%, suppressed, unavailable, disabled and stale mappings, privacy suppression, non-colour labels, desktop/narrow layout and production mock gate are validated. Focused exact-head fixture/state validation passed 3 files/40 tests in 3.31s; the broader exact-head PPI matrix passes 109 tests and hosted Web passes 607/104. Per the Planner acceptance criteria, a live unit-level API is future/out-of-scope work and is not claimed as delivered. Evidence: docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md
```
