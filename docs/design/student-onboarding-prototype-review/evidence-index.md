# Evidence index - TUT-UX01

**Ticket:** TUT-UX01 - Prototype and review the First-Time OnTrack Tutorial
**Owner:** Swyam Khare
**Repository:** GitHub Guide (documentation only)
**Branch:** `design/student-onboarding-prototype-review`
**Depends on:** TUT-D02 and TUT-D03

This index maps each checklist item to where it is addressed and records the
source provenance and the residual tickets. Portable links only, no local paths.

## Checklist mapping

| # | Checklist item | Where it is addressed | Status |
|---|---|---|---|
| 1 | Desktop and narrow-screen wireframes for the welcome, guided step, skip confirmation and completion panel | [wireframes.md](wireframes.md) sections 1 to 5 | Done |
| 2 | Back, Next, Skip for now, Do not show automatically again, Finish and Close controls | [wireframes.md](wireframes.md), [design-decision.md](design-decision.md), [prototype](prototype/index.html) | Done |
| 3 | Step number and total without relying only on colour | [wireframes.md](wireframes.md), [keyboard-and-focus.md](keyboard-and-focus.md), [prototype](prototype/index.html) | Done |
| 4 | Keyboard focus order, initial focus, Escape behaviour and focus return | [keyboard-and-focus.md](keyboard-and-focus.md), [prototype](prototype/index.html) | Done |
| 5 | What happens when a target is off screen, missing or unavailable | [wireframes.md](wireframes.md) section 6, [prototype](prototype/index.html) | Done |
| 6 | No-current-unit fallback that never blocks normal OnTrack use | [wireframes.md](wireframes.md) section 7, [prototype](prototype/index.html) | Done |
| 7 | Clickable prototype using the approved copy from TUT-D02 and state rules from TUT-D03 | [prototype/index.html](prototype/index.html), opened in a browser; copy from the TUT-D04 draft guide, rules from the objective and MISC-X01, with TUT-D02 and TUT-D03 approval pending | Done against draft sources |
| 8 | Short review script covering the four outcomes, skip, dismissal and replay | [review-script.md](review-script.md) | Done |
| 9 | Safe demo content and at least three representative reviewers including a less-experienced user | [review-script.md](review-script.md) sets this up | Prototype and script ready, sessions are a human step |
| 10 | One teaching-staff or documentation reviewer to check wording and accuracy | [review-script.md](review-script.md) sets this up | Prototype and script ready, sessions are a human step |
| 11 | Record confusion, accessibility concerns, missing guidance and unnecessary steps without names | [findings-and-decisions.md](findings-and-decisions.md) | Template ready, filled during the review |
| 12 | Classify findings as critical, high, medium or future | [findings-and-decisions.md](findings-and-decisions.md) | Template ready, filled during the review |
| 13 | Update the prototype and copy for accepted critical or high findings | [findings-and-decisions.md](findings-and-decisions.md) accepted-fixes table | Done after the review triage |
| 14 | Post the prototype, de-identified findings and final design decision for approval | This branch and its pull request | Pull request carries the prototype, findings template and decision |

## Source provenance

| Input | Source | Note |
|---|---|---|
| Four journeys and controls | [Objective index](../../../first-time-tutorial-objective.md) and TUT-D04 draft [student guide](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-user-and-contributor-guide/docs/student-onboarding/student-guide.md) | Copy is draft, TUT-D02 final wording pending |
| Trigger and state rules | Objective state boundary and MISC-X01 coordination default | TUT-D03 exact eligibility, storage and version model pending |
| Shared help and preferences placement | [MISC-X01 coordination default](../../../cross-objective-coordination.md) | One Tutorial and Help entry, no separate settings page |
| Review script and findings format | [TUT-U01-PREP pilot templates](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot/pilot-script-and-consent.md) | Kept consistent to avoid duplicate formats |

## Residual and dependency tickets

- **TUT-D02** route map and approved copy is unassigned and not started. Confirm
  the final wording of the four steps and the fallback messages against this
  prototype, and update the copy where they differ.
- **TUT-D03** trigger, state, storage and version rules is unassigned and not
  started. Confirm the eligibility, storage and version model. The prototype
  assumes the objective state boundary and stores only version, state and current
  step.
- **TUT-S01** threat model reviews minimum stored data and any dependency.
- **TUT-W01** onward implement the approved direction. This prototype is design
  evidence, not production code.

## Live review evidence to add after the sessions

The following are added once the review sessions run, and none of them exists yet:

- Prototype link used in the sessions.
- Desktop and narrow-screen screenshots.
- The completed review script run.
- The filled de-identified findings table with severity and decisions.
- The decision log entry and the objective lead and accessibility reviewer
  approvals.
