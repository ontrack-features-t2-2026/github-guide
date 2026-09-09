# First-Time OnTrack Tutorial – Project Handover

**Ticket:** TUT-D04
**Documentation owner:** Jeffy Sam Babu
**Status:** Interim handover
**Last updated:** 9 September 2026
**Project health:** Amber – documentation is progressing, but implementation and testing are not yet complete

## 1. Purpose

This handover records the current status of the First-Time OnTrack Tutorial and provides the information needed to continue the work.

The tutorial is intended to help new students understand the main areas of OnTrack. The planned tutorial covers selecting a unit, opening the project or task dashboard, understanding the target grade and finding the calendar.

This document only covers the tutorial and its maintenance. Calendar subscription instructions, site-wide accessibility guidance, and CSS or theme guidance remain within their separate project tickets.

## 2. Handover Location

The tutorial documentation is stored in:

`github-guide/docs/student-onboarding/`

Documentation branch:

`docs/student-onboarding-user-and-contributor-guide`

Repository:

https://github.com/ontrack-features-t2-2026/github-guide

Branch:

https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-user-and-contributor-guide

## 3. Documentation Completed

The following documentation drafts have been created:

* Student guide
* Troubleshooting guide
* Contributor and maintenance guide
* Evidence index
* Project handover
* Documentation overview

These documents are drafts because some implementation details, screenshots, test results and pull request links are not available yet.

## 4. Current Implementation Status

Based on the latest Planner information:

* **TUT-W01 – Tutorial shell and step registry:** Not started
* **TUT-W02 – Eligibility and progress state:** Not started
* **TUT-W03 – Four core tutorial steps:** In progress
* **TUT-W04 – Replay and help access:** Not started
* **TUT-S01 – Security and privacy review:** In progress
* **TUT-Q01 – Tutorial testing:** Not started
* **TUT-U01-RUN – Pilot sessions:** Not started
* **TUT-U01-FIXES – Pilot fixes and final result:** Not started
* **TUT-MVP01 – Final MVP validation:** Not started

The documentation can continue as a draft, but it cannot be marked as final until these dependent tasks provide confirmed behaviour and evidence.

## 5. Current Design Summary

The tutorial is expected to:

* Launch automatically for eligible first-time students.
* Remain separate from the existing welcome and profile setup flow.
* Let students move through the tutorial using Back and Next.
* Allow students to select Skip for now.
* Allow permanent automatic dismissal.
* Let students finish or close the tutorial.
* Provide a replay option through the planned Tutorial or Help location.
* Keep normal OnTrack features usable if the tutorial encounters an error.
* Store only the approved tutorial version, state and current step.

The approved progress states are:

* `in-progress`
* `skipped`
* `dismissed`
* `completed`

These details must be checked against the final implementation before publication.

## 6. Important Resources

* [First-Time Tutorial Objective](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/first-time-tutorial-objective.md)
* [Branch Register](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/branch-register.md)
* [Cross-Objective Coordination](https://github.com/ontrack-features-t2-2026/github-guide/blob/main/cross-objective-coordination.md)
* [Pilot Preparation Material](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot)

The following related tickets must also be linked when their locations are confirmed:

* TUT-U01 – Tutorial pilot
* CAL-D03 – Calendar subscription instructions
* A11Y-D02 – Site-wide accessibility guidance
* MG-05 – CSS and theme guidance

## 7. Security and Privacy Limits

The tutorial documentation, screenshots, recordings and testing notes must not include:

* Real student names or identification numbers
* Marks or grades
* Assessment submissions
* Feedback
* Extensions
* Disability information
* Unit-performance information
* Authentication details
* Private API responses

Only demo or synthetic accounts should be used for screenshots, recordings and pilot testing.

Tutorial progress should be limited to the approved version, state and current-step fields. Detailed student activity or per-click analytics are outside the current scope.

## 8. Known Limitations

At the time of this handover:

* The complete tutorial interface is not stable.
* The final repository file locations have not been confirmed.
* The tutorial shell and step registry have not been completed.
* Automatic launch and progress-saving behaviour have not been tested.
* Replay and help access have not been implemented.
* Final stable targets and selectors are not available.
* Security and privacy testing is incomplete.
* Automated and manual test results are not available.
* Pilot sessions have not been completed.
* Screenshots and the fallback walkthrough have not been created.
* A second contributor has not yet followed the maintenance guide.
* Final published guide and pull request links are still pending.

## 9. Main Risks

| Risk                                     | Effect                                                             | Required action                                                        |
| ---------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------------- |
| Implementation is delayed                | Documentation may contain unconfirmed behaviour                    | Review all guides after the implementation pull requests are available |
| Stable targets change                    | Tutorial steps may stop pointing to the correct interface elements | Confirm selectors with the developers and run regression tests         |
| Progress saving is not confirmed         | Skip, completion or replay instructions may be inaccurate          | Test each progress state using a demo account                          |
| Testing and pilot work remain incomplete | The tutorial cannot be considered ready for release                | Complete TUT-Q01 and the remaining TUT-U01 tasks                       |
| Screenshots are created too early        | Images may become outdated                                         | Wait until the interface is stable                                     |
| Real student data is captured            | Privacy requirements would be breached                             | Use synthetic data and perform a second privacy review                 |
| Evidence links are missing               | TUT-D04 acceptance criteria may not be met                         | Update the evidence index before final approval                        |

## 10. API and Deployment Requirements

No new API work or separate deployment is currently confirmed for this documentation ticket.

API work is only required if the eligibility, progress-state or security tasks show that tutorial progress must be stored on the server. Any such requirement must be documented and linked before the guides are finalised.

A separate deployment is not expected for the documentation itself. Deployment instructions should only be added if the implementation team confirms that the tutorial requires a specific release or configuration change.

## 11. Next Steps

Before this handover can be marked as final:

1. Complete the tutorial shell, state handling, core steps and replay access.
2. Confirm the final repository locations, step registry and stable targets.
3. Confirm automatic launch, skip, dismissal, completion and replay behaviour.
4. Confirm the tutorial version and version-change rule.
5. Complete the security and privacy review.
6. Complete automated and manual testing.
7. Run the pilot using demo or synthetic accounts.
8. Resolve or document the pilot findings.
9. Update the student and contributor guides using confirmed behaviour.
10. Add current screenshots after the interface becomes stable.
11. Record a short fallback walkthrough only if it is still required.
12. Ask a second contributor to follow the maintenance guide.
13. Record the second contributor’s feedback and any documentation changes.
14. Replace all pending entries in the evidence index with final links.
15. Submit the documentation pull request for review and approval.

## 12. Walkthrough Status

The fallback walkthrough has not been recorded because the interface is not yet stable.

If a walkthrough is created later, it must:

* Use demo or synthetic data.
* Show only the main tutorial actions.
* Display the tutorial version and recording date.
* Receive a second privacy and accuracy review.
* Support the written guides rather than replace them.

## 13. Final Handover Status

TUT-D04 is currently **partially completed**.

The main written documentation structure is available, but the final technical details and evidence depend on unfinished implementation, testing, security review and pilot work. The guides should remain marked as drafts until those dependencies are completed and verified.

