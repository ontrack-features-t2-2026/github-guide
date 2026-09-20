# First-time OnTrack tutorial: contributor guide

**Ticket:** TUT-D04 · **Updated:** 21 September 2026 · **Status:** Implementation review version

This refresh builds on Jeffy Sam Babu's original documentation in
[merged PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7).
The source locations below were read from `codex/buckets-tutorial-20260920` in
`doubtfire-web`; the implementation PR is pending. Read the shared
[trigger and state rules](../../onboarding-tutorial-trigger-and-state-rules.md)
before changing eligibility or progress.

## Repositories and review branches

| Repository | Responsibility | Current review branch / reference |
| --- | --- | --- |
| `doubtfire-web` | Shell, state, four steps, targets, replay and tests | `codex/buckets-tutorial-20260920`, PR pending |
| `doubtfire-api` | Authenticated runtime feature flag | `codex/buckets-api-20260920` |
| `doubtfire-deploy` | Forward the flag to API processes | [PR #38](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/38) |
| `github-guide` | Student/contributor guidance and shared state contract | `codex/buckets-documentation-20260920` |

Application PRs target team `11.0.x`; documentation targets `main`. The old
`feature/student-onboarding` and per-ticket branch names are planning history,
not prerequisites for working on this implementation. Record exact checked-out
commits in review evidence. Do not merge your own PR.

## Source map

Paths in this table are relative to `doubtfire-web` on the
[implementation branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920).

| Area | Actual location |
| --- | --- |
| Shell, panels and focus scheduling | `src/app/student-onboarding/student-onboarding.component.ts` |
| Controls, announcements and fallback text | `src/app/student-onboarding/student-onboarding.component.html` |
| Panel/highlight layout and theme styles | `src/app/student-onboarding/student-onboarding.component.scss` |
| Eligibility, progress schema, state and replay | `src/app/student-onboarding/student-onboarding.service.ts` |
| Typed step model, IDs, copy and version | `src/app/student-onboarding/student-onboarding.steps.ts` |
| Visible stable-target resolution | `src/app/student-onboarding/student-onboarding-target.ts` |
| State and storage regression tests | `src/app/student-onboarding/student-onboarding.service.spec.ts` |
| Shell, target and interaction tests | `src/app/student-onboarding/student-onboarding.component.spec.ts` |
| Account-menu replay entry and calendar/account targets | `src/app/common/header/header.component.html` and `.ts` |
| Unit target | `src/app/common/header/unit-dropdown/unit-dropdown.component.html` |
| Task navigation target | `src/app/common/header/task-dropdown/task-dropdown.component.html` |
| Dashboard and target-grade anchors | `src/app/projects/states/dashboard/directives/progress-dashboard/progress-dashboard.component.html` |
| Root shell mounting | `src/app/app.component.html`, `src/app/doubtfire-angular.module.ts` |
| Feature setting and reset | `src/app/config/constants/doubtfire-constants.ts` and `.spec.ts` |
| Authenticated settings readiness | `src/app/api/services/authentication.service.ts` |

The source-adjacent [validation and handover package](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding)
is pending publication with that branch. It owns the final commands, tested
revisions, results and QA limitations; do not copy changing test totals here.

## Eligibility and profile boundary

`has_run_first_time_setup` still means profile setup. The tutorial never writes
it. An automatic candidate must be observed with incomplete profile setup and
receive a successful empty response from the current-user `/projects` endpoint,
using `include_inactive=true`, `include_task_definitions=false`, `page=1` and
`per_page=1`. The query includes all history; one result is enough to disqualify
a candidate, so it does not download every project.

A failed, timed-out, malformed or non-empty response stays replay-only. Missing
browser state does not prove newness. The service cancels obsolete history
requests and checks the account and generation again before saving a result.
The prompt waits for completed profile setup and loaded globals and excludes
welcome, profile-editing, sign-in/out and SCORM routes. Staff and unauthenticated
users cannot start it. Students already enrolled can use manual replay instead
of being inferred to be new.

## Runtime rollout flag

`GET /api/settings` returns `tutorialEnabled` behind existing authentication.
`DoubtfireConstants.IsTutorialEnabled` starts false, accepts only an explicit
boolean `true`, and resets false on sign-out or failed authenticated settings.
The API reads `TUTORIAL_ENABLED` at boot using the requested existing numeric
parser: **set `1` to enable**; unset, blank, `0`, `false` and the text `true`
are disabled. See the API branch's `config/application.rb`,
`app/api/settings_api.rb`, `test/api/settings_test.rb` and README table.

Deploy PR #38 forwards the flag with a default of `0`. Updating the environment
requires API process restart or container recreation to load it; no web rebuild
is required. Do not turn it on before the API/web/docs changes are reviewed and
available. There is no tutorial-progress API or database migration.

## Steps, targets and navigation

The registry contains `unit`, `tasks`, `target-grade` and `calendar`. Each has a
stable ID, route hint, target, title, body, action label, fallback and version.
The route field describes context; the current service does not navigate for
the student. **Find** only scrolls an available target into view.

Use `data-onboarding-target` attributes and the resolver, not CSS layout chains.
The resolver rejects arbitrary selector text and ignores hidden, inert or
zero-size elements. Desktop/menu variants may share a semantic target when
only the relevant one is visible. Missing or offscreen targets retain written
directions and Back/Next/Close controls; they do not automatically perform the
underlying action or silently substitute another control.

The welcome, confirmation and completion panels trap keyboard focus. The step
panel is non-modal so students can use surrounding controls. Keep step
announcements, visible focus, Escape behaviour and return-focus fallbacks
working when changing the shell.

## Browser progress and versions

The only saved object is `{version, state, step}` under
`ontrack:student-onboarding:<current-user-id>`. States are `new`, `in-progress`,
`skipped`, `dismissed` and `completed`; the current registry version is `1`.
The parser checks the exact fields, known state/step and supported version,
and rejects oversized or malformed records. Invalid or future records suppress
automatic prompting; manual replay remains possible when enabled.

Start/Next/Back save the current stable step. Skip or Close before completion
saves `skipped` and does not reopen during the session. Permanent dismissal and
acknowledged completion suppress later automatic offers. Replay preserves the
existing saved record throughout. Sign-out clears memory, not browser progress.
Storage failures leave normal application use and manual help available.

A spelling correction need not bump the version. A material step or sequence
change requires an explicit version decision and tests. Completed/dismissed
choices survive a version increase; older incomplete progress starts from the
beginning. Removing a step makes old records using that unknown ID invalid,
which safely becomes manual-only; design an explicit migration if a different
experience is wanted. Do not reuse a removed identifier for a different purpose.

Browser storage is not an access-control boundary. Someone sharing the same
browser profile can inspect or modify it. Do not promise cross-device sync or
store names, grades, feedback, enrolment history, tokens or per-click analytics.

## Maintain one step

1. Read the [step copy](../../onboarding-tutorial-step-copy.md), state contract
   and target's current template. Keep the ID if its meaning is unchanged.
2. Update the registry and approved written copy together. Update an anchor only
   when its actual control changes. Check the fallback on routes without it.
3. Review the version decision and storage cases if you add, remove or reorder.
4. Run focused regressions from the web repository root:

   ```sh
   npx vitest run src/app/student-onboarding/student-onboarding.service.spec.ts src/app/student-onboarding/student-onboarding.component.spec.ts
   npx vitest run src/app/config/constants/doubtfire-constants.spec.ts src/app/common/header/header.component.spec.ts src/app/welcome/welcome.component.spec.ts
   ```

5. Use the web [validation package](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding)
   for final lint/typecheck/build commands and evidence. Run the relevant profile
   regressions when changing that boundary; record actual output and limitations.
6. Check keyboard navigation, screen-reader announcements, zoom, narrow screens,
   reduced motion, missing targets, sign-out and replay using synthetic accounts.
7. Update these guides and the evidence links. Request independent review.

For styling, use the [theme contract](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/theme/THEME-CONTRACT.md)
and [MG-05 CSS guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/codex/buckets-migration-20260920/docs/css-style-guide.md)
(migration review branch, publication pending). Calendar behaviour belongs to
[the Calendar guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/CAL-DOC01-calendar-how-to.md),
not the tutorial implementation.

## Evidence and human review

Use synthetic data for screenshots and recordings. Record source revision,
browser/device, method, result and uncovered cases. An automated check does not
prove a human pilot or assistive-technology experience. The
[second-contributor review](second-contributor-review.md) remains pending until
an actual reviewer response is recorded. Retain the original PR #7 provenance
when updating this package; do not relabel its earlier checks as evidence for
new application code.
