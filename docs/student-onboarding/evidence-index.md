# TUT-D04 – Evidence Index

**Owner:** Jeffy Sam Babu
**Status:** In progress
**Last checked:** 9 September 2026

## Purpose

This index keeps the main evidence for the First-Time OnTrack Tutorial in one place. It will be updated as the implementation, testing, pilot and documentation work is completed.

A Planner status by itself is not evidence that a feature works. Where a branch, pull request, test result or review is not available, it is marked as pending instead of being treated as complete.

## Documentation Evidence

| Evidence                   | Status                       | Link or location                                                                                                                                                       |
| -------------------------- | ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Documentation repository   | Available                    | [github-guide](https://github.com/ontrack-features-t2-2026/github-guide)                                                                                               |
| TUT-D04 branch             | Available                    | [docs/student-onboarding-user-and-contributor-guide](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-user-and-contributor-guide) |
| Documentation pull request | Not created                  | Add after the documentation is ready for review                                                                                                                        |
| Documentation folder       | Available                    | `docs/student-onboarding/`                                                                                                                                             |
| Documentation overview     | Draft complete               | `docs/student-onboarding/README.md`                                                                                                                                    |
| Student guide              | Draft complete               | `docs/student-onboarding/student-guide.md`                                                                                                                             |
| Troubleshooting guide      | Draft complete               | `docs/student-onboarding/troubleshooting.md`                                                                                                                           |
| Contributor guide          | Draft complete               | `docs/student-onboarding/contributor-guide.md`                                                                                                                         |
| Evidence index             | In progress                  | `docs/student-onboarding/evidence-index.md`                                                                                                                            |
| Project handover           | Not created                  | `docs/student-onboarding/handover.md`                                                                                                                                  |
| Fallback walkthrough       | Waiting for stable interface | Link to be added                                                                                                                                                       |
| Second-contributor review  | Not completed                | Review result to be added                                                                                                                                              |

## Project Foundation

| Evidence                                      | Status                              | Link                                                                                                                                 |
| --------------------------------------------- | ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| First-Time Tutorial objective and branch plan | Available                           | [First-Time Tutorial objective](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/first-time-tutorial-objective.md) |
| Branch register                               | Available                           | [Branch register](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/branch-register.md)                             |
| Cross-objective coordination                  | Available                           | [Cross-objective coordination](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/cross-objective-coordination.md)   |
| Existing welcome/profile setup audit          | Recorded in objective documentation | See the objective and branch-plan documents                                                                                          |
| Approved Web base                             | Recorded planning reference         | Web `11.0.x`; recheck before implementation                                                                                          |
| Shared Web integration branch                 | Not publicly available              | Planned name: `feature/student-onboarding`                                                                                           |
| API branch                                    | Not required unless approved        | Requires TUT-D03 and TUT-S01 approval                                                                                                |
| Deploy work                                   | Not currently required              | Open only if a later technical need is confirmed                                                                                     |

## Ticket and Implementation Evidence

Planner links should be added when portable ticket URLs are available.

| Ticket        | Work                                          | Current status             | Branch, PR or evidence                                                                                                                                                |
| ------------- | --------------------------------------------- | -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TUT-F01       | Objective, ownership and evidence foundation  | Repository work available  | First-Time Tutorial objective document                                                                                                                                |
| TUT-D01       | Problem evidence and user stories             | Status to be confirmed     | Planner and document links required                                                                                                                                   |
| TUT-D02       | Step map and approved wording                 | Status to be confirmed     | Approved content and design links required                                                                                                                            |
| TUT-D03       | Trigger, storage, state and version rules     | Status to be confirmed     | Approved decision document required                                                                                                                                   |
| TUT-UX01      | Prototype and early user review               | Status to be confirmed     | Prototype and review links required                                                                                                                                   |
| TUT-S01       | Threat model and privacy review               | In progress in Planner     | Threat model, storage decision and approval links required                                                                                                            |
| TUT-W01       | Reusable shell and stable-target contract     | Not started in Planner     | No public implementation branch or PR found                                                                                                                           |
| TUT-W02       | Eligibility and progress integration          | Not started in Planner     | No public implementation branch or PR found                                                                                                                           |
| TUT-W03       | Four tutorial steps                           | In progress in Planner     | No public implementation branch or PR found                                                                                                                           |
| TUT-W04       | Tutorial and Help replay entry                | Not started in Planner     | No public implementation branch or PR found                                                                                                                           |
| TUT-T01       | Automated testing                             | Not started                | Test commands, versions and results required                                                                                                                          |
| TUT-Q01       | Accessibility and browser QA                  | Not started                | QA matrix and results required                                                                                                                                        |
| TUT-U01-PREP  | Pilot preparation                             | Repository files available | [Pilot preparation branch](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot) |
| TUT-U01-RUN   | Pilot sessions                                | Not started                | De-identified findings required                                                                                                                                       |
| TUT-U01-FIXES | Fixes, retesting and pilot result             | Not started                | Fix PRs, retest results and approvals required                                                                                                                        |
| TUT-D04       | Student guide, contributor guide and handover | In progress                | Current documentation branch                                                                                                                                          |
| TUT-MVP01     | Final MVP validation                          | Not started                | Final validation and approval links required                                                                                                                          |

## Required Test Evidence

The following evidence has not yet been published:

* Shell component and service tests.
* Back, Next, Skip, Dismiss, Finish and Close tests.
* Eligibility and state-transition tests.
* Missing-target and fallback tests.
* Progress-storage failure tests.
* Replay tests.
* Welcome and profile setup regression tests.
* Security and privacy tests.
* Lint results.
* Type-checking results.
* Production build results.
* Keyboard-only test.
* Screen-reader or accessibility-inspector test.
* Browser and responsive-layout QA.
* Pilot findings and retest results.

Each result should include the date, tested branch or commit, command or method, outcome and a portable evidence link.

## Required Visual Evidence

Screenshots and recordings must wait until the interface is stable.

The final evidence should include:

* Tutorial welcome screen.
* Each of the four tutorial steps.
* Skip confirmation.
* Completion screen.
* Tutorial and Help replay entry.
* Missing-unit or missing-target fallback.
* Desktop layout.
* Narrow-screen layout.
* Short fallback walkthrough.

Only demo or synthetic data may be used. Every screenshot and recording must be checked for names, IDs, marks, feedback, extensions, assessment details and other private information.

## Required Reviews

Before TUT-D04 is closed, the following reviews are needed:

| Review                                             | Status  |
| -------------------------------------------------- | ------- |
| Documentation review                               | Pending |
| Technical accuracy review                          | Pending |
| Security and privacy review                        | Pending |
| Link and screenshot review                         | Pending |
| Second contributor following the maintenance guide | Pending |
| Fallback walkthrough review                        | Pending |

The second-contributor result should record the reviewer, date, task attempted, outcome, unclear instructions and any changes made after the review.

## Cross-Objective Links

The final published documentation must link to:

* CAL-D03 for calendar subscription instructions.
* A11Y-D02 for site-wide accessibility guidance.
* MG-05 for CSS and theme guidance.

These links are pending until their published locations are confirmed.

## Current Evidence Summary

The TUT-D04 documentation branch and initial written guides are available. Pilot preparation material also exists. The tutorial implementation, automated testing, manual QA, pilot result, screenshots, walkthrough and independent review are still pending.

This index must be updated before the final pull request and handover. Pending items must not be presented as completed evidence.

