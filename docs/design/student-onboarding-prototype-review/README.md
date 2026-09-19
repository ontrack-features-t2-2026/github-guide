# TUT-UX01 - First-Time Tutorial prototype and review

This folder holds the prototype, wireframes, review plan and design decision for
the First-Time OnTrack Tutorial. It supports **TUT-UX01 - Prototype and review the
First-Time OnTrack Tutorial**.

- **Ticket:** TUT-UX01
- **Owner:** Swyam Khare
- **Repository:** GitHub Guide (documentation only, no production code)
- **Branch:** `design/student-onboarding-prototype-review`
- **Depends on:** TUT-D02 (route map and approved copy) and TUT-D03 (trigger and state rules)
- **Difficulty:** STANDARD

## Purpose

Test and improve the tutorial experience while changes are still cheap, before a
frontend implementation or a third-party tour dependency is chosen. The work
covers desktop and narrow-screen wireframes, a clickable prototype, a review
script, a de-identified findings table and a recommended design direction for
approval.

## What is in this folder

| File | What it covers | Checklist items |
|---|---|---|
| [design-decision.md](design-decision.md) | The three design options compared, the recommended direction and the accessibility rationale | 14 |
| [wireframes.md](wireframes.md) | Desktop and narrow-screen wireframes for the welcome panel, guided step, skip confirmation and completion panel, plus the fallback states | 1, 2, 3, 5, 6 |
| [keyboard-and-focus.md](keyboard-and-focus.md) | Focus order, initial focus, Escape behaviour, focus return, roles and names, and the step announcement | 3, 4 |
| [prototype/index.html](prototype/index.html) | The clickable prototype using the draft copy and the proposed state rules. Open the file in a browser, or use the hosted preview linked in [review-script.md](review-script.md). | 7 |
| [review-script.md](review-script.md) | The short review script covering the four outcomes, skip, dismissal and replay | 8, 9, 10 |
| [findings-and-decisions.md](findings-and-decisions.md) | The de-identified findings table with severity and decision columns, filled during the review | 11, 12, 13 |
| [evidence-index.md](evidence-index.md) | The item by item checklist mapping, the source provenance and the residual tickets | 14 |

## Source provenance and dependency status

TUT-UX01 depends on TUT-D02 and TUT-D03. In the [objective index](../../../first-time-tutorial-objective.md)
both cards are recorded as not started and unassigned, and neither has published a
route map or a state rules document yet. This prototype is the early and cheap
review step, so it draws its copy and rules from the material that already exists
and marks the formal approval as pending:

- **Copy** is taken from the TUT-D04 draft [student guide](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-user-and-contributor-guide/docs/student-onboarding/student-guide.md).
  It is a draft, not final approved copy, so TUT-D02 still needs to confirm the
  final wording.
- **State and trigger rules** are taken from the TUT-F01 objective state boundary
  and the MISC-X01 coordination default. TUT-D03 still needs to approve the exact
  eligibility, storage and version model.
- **Shared help and preferences placement** follows the MISC-X01 coordination
  default. The prototype uses one **Tutorial and Help** entry and does not invent
  a separate settings page.
- **Visual language** is matched to the live OnTrack dashboard rather than
  invented. The prototype reuses the white toolbar, the three-bar Formatif logo,
  the solid indigo current-unit pill, the QR and avatar controls, and the two-pane
  dashboard with a left task list and right progress panels. Colours follow the
  app's Material indigo primary (about `#3f3ce6`, from the formatif palette) and
  the real task-status colours from `task-status-colors.scss` (the green complete
  and blue ready-for-feedback pills). Type follows the app's pairing of a Grotesk
  display face with Inter body text. The app ships a custom `Grotesk` OTF that is
  not free to redistribute, so the prototype uses Space Grotesk as the closest
  free stand-in and Inter, which is the app's actual body face. The tutorial
  overlay is the only new surface and follows the same look.

When TUT-D02 and TUT-D03 publish their approved outputs, this prototype and the
copy should be checked against them and updated where they differ.

## The live review is a human step

The wireframes, prototype, review script and findings template are ready now. The
review sessions in items 9 to 13 need real reviewers and cannot be completed from
the repository alone. The [review script](review-script.md) is aligned with the
existing pilot script in [TUT-U01-PREP](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot/pilot-script-and-consent.md)
so the two do not duplicate each other. The [findings table](findings-and-decisions.md)
stays empty until the sessions run.

## Privacy

Everything here uses a prototype and synthetic content only. No real student
names, identification numbers, marks, submissions, feedback, extensions,
disability information or unit-performance data appear in any file, screenshot or
saved prototype state.
