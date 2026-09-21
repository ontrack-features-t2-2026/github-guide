# First-time OnTrack tutorial: current-state handover

**Ticket:** TUT-D04
**Original documentation owner:** Jeffy Sam Babu
**Updated:** 21 September 2026
**Status:** Implementation approved and merged; rollout defaults off; human acceptance incomplete

## What has changed

The original student/contributor package was
[merged in PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7)
on 19 September 2026. This refresh replaces its planned code locations and
missing-implementation statements with the current web implementation on
`codex/buckets-tutorial-20260920`, approved and merged in [Web PR #263](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263).
The documentation refresh was merged in [Guide #12](https://github.com/ontrack-features-t2-2026/github-guide/pull/12).
Use the [21 September completion procedure](../../remaining-ticket-completion.md)
for subsequent application evidence and the precise human requirements still open.
This document does not grant release approval.

The implementation includes a reusable shell, typed four-step registry, stable
targets, authenticated student eligibility, browser progress and **Tutorial and
Help** in the account menu. The exact source map is in the
[contributor guide](contributor-guide.md#source-map).

## Behaviour and boundaries

The tour is separate from profile setup and never changes
`has_run_first_time_setup`. An automatic candidate is established only after
observing incomplete setup and an explicit `hasProjects: false` from the
authenticated current-user history summary, including inactive units and
withdrawn enrolments. An empty active-unit list alone is not
enough. Existing projects, completed-profile accounts without saved state,
failed history and invalid storage remain replay-only.

The prompt waits for completed profile setup, loaded data and a suitable
application route. Students can read the four steps without a unit or visible
target. Find controls scroll to a target; the tour does not navigate, change
grades, submit work or create Calendar subscriptions.

Only `{version, state, step}` is stored under the current account's browser key.
The read-only history summary does not store progress. There is no progress
API, server-side progress table or cross-device sync.
Completed/dismissed choices survive version increases and replay. A temporary
skip can be offered after a later sign-in/reload, while storage failures leave
normal application use available. See the
[shared state contract](../../onboarding-tutorial-trigger-and-state-rules.md)
for exact transitions and limitations.

## API, deployment and rollout

[API PR #170](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/170), from `codex/buckets-api-20260920`, adds `tutorialEnabled` to authenticated
settings and a current-user history summary used by the automatic eligibility gate. `TUTORIAL_ENABLED` defaults off; use **`1`** to enable with the existing
numeric parser. The text `true` is not an enabling value for that parser.
[Deploy PR #38](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/38)
forwards the flag to API containers with a default of `0`.

Changing the environment requires the API process to restart or its container
to be recreated; no web build is required just to change the flag. Before
rollout, verify that the reviewed API/web/configuration revisions are deployed
together and that the written guide is reachable at its published link. These
source PRs have been approved and merged. Keeping the flag off prevents
both automatic prompting and the replay entry while written guidance remains
available. No live rollout was performed for this documentation update.

## Validation and evidence

Use the source-adjacent web
[`docs/student-onboarding/` validation package](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding)
for exact tested revisions, commands, results, screenshots and limitations.
That package is published with Web PR #263. Its browser-harness results are
completed and retain their fixture-only boundary. The completion procedure links
subsequent full-application results separately; this guide does not declare an
unrun checklist passed.

The [evidence index](evidence-index.md) links the current branches and related
PRs. PR #7's original documentation checks are historical evidence for that
revision only. Documentation link validation does not prove tutorial browser
behaviour, accessibility, pilot acceptance or production readiness.

## Human work still awaiting evidence

- The [second-contributor maintenance exercise](second-contributor-review.md)
  was previously requested; no reviewer response has been supplied.
- Pilot preparation material exists, but no student session findings or pilot
  retest outcome are claimed by this refresh.
- Reuse the actual security-related PR review linked in the completion procedure;
  product/pilot and release decisions still require their own evidence.
- No new walkthrough recording or independent screenshot/privacy review is
  claimed here. Record or update media only against the reviewed interface,
  with synthetic accounts, version/date and a second privacy/accuracy review.

## Remaining risks and follow-up

| Risk or limit | Follow-up |
| --- | --- |
| Follow-up evidence can test a different build from a later deployment | Use its exact tested commits and build configuration; recheck material differences before rollout |
| Newly enrolled accounts with existing projects are conservatively replay-only | Keep this limitation explicit; a broader trigger needs a reliable reviewed account rule |
| Browser storage does not sync and is inspectable in a shared browser profile | Keep stored data minimal and explain browser-local choices; do not treat it as authorisation |
| UI changes can remove or hide targets | Update registry, attributes, fallback and regression checks together |
| Runtime flag or history request is unavailable | Remain disabled/replay-only as appropriate and keep normal OnTrack use available |
| Human pilot and independent review are pending | Record actual reviewer/session evidence rather than marking them complete from code alone |

Reviewers should follow the [student guide](student-guide.md), exercise a small
change using the [contributor guide](contributor-guide.md), and record any
corrections in the current PR. Retain the original PR #7 provenance when updating
the package. Implementation PRs are merged; follow-up documentation and evidence
remain subject to independent review.

## Related resources

- [Calendar guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/CAL-DOC01-calendar-how-to.md).
- [Theme contract](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/theme/THEME-CONTRACT.md).
- [MG-05 CSS guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/css-style-guide.md), merged in [Web PR #259](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/259); current teardown correction in [Web #269](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/269).
- [Tutorial/video index](../../tutorial-links.md).
- [Handover video template](../../handover-video-template.md).
