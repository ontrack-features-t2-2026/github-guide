
# First-Time OnTrack Tutorial – Final Current-State Handover

**Ticket:** TUT-D04
**Documentation owner:** Jeffy Sam Babu
**Status:** Ready for documentation review
**Last updated:** 16 September 2026
**Project health:** Amber – documentation is complete for the current state, but the tutorial implementation is unfinished

## 1. Handover Summary

This handover records the documentation completed for the First-Time OnTrack Tutorial and the work that remains blocked by unfinished dependencies.

The student guide, troubleshooting guide, contributor guide, evidence index and maintenance information have been prepared using the approved project plans and the information currently available.

The tutorial itself is not ready for release. Several implementation, testing, security and pilot tasks remain incomplete. Behaviour that could not be verified has been clearly identified instead of being presented as complete.

## 2. Handover Location

The documentation is stored in:

`github-guide/docs/student-onboarding/`

Repository:

[github-guide](https://github.com/ontrack-features-t2-2026/github-guide)

Documentation branch:

[docs/student-onboarding-user-and-contributor-guide](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-user-and-contributor-guide)

Documentation pull request:

[Draft PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7)

## 3. Documentation Delivered

The following documents are included:

* [Documentation overview](README.md)
* [Student guide](student-guide.md)
* [Troubleshooting guide](troubleshooting.md)
* [Contributor guide](contributor-guide.md)
* [Evidence index](evidence-index.md)
* [Second-contributor review record](second-contributor-review.md)
* [Project handover](handover.md)

## 4. Current Project Status

The latest available Planner information shows that the main tutorial implementation has not been completed.

| Work item                                  | Current status             |
| ------------------------------------------ | -------------------------- |
| TUT-W01 – Tutorial shell and step registry | Not completed              |
| TUT-W02 – Eligibility and progress state   | Not completed              |
| TUT-W03 – Four core tutorial steps         | In progress, not completed |
| TUT-W04 – Replay and help access           | Not completed              |
| TUT-S01 – Security and privacy review      | In progress, not completed |
| TUT-Q01 – Tutorial testing                 | Not completed              |
| TUT-U01-RUN – Pilot sessions               | Not completed              |
| TUT-U01-FIXES – Pilot fixes and result     | Not completed              |
| TUT-MVP01 – Final MVP validation           | Not completed              |

These incomplete work items prevent final verification of the tutorial behaviour, repository locations, stable targets, progress saving and replay controls.

## 5. Planned Tutorial Behaviour

Based on the approved project information, the tutorial is intended to:

* Launch automatically for eligible first-time students.
* Remain separate from the existing welcome and profile setup flow.
* Guide students through four core areas of OnTrack.
* Allow movement using Back and Next controls.
* Provide Skip for now, dismissal, completion and close options.
* Allow students to replay the tutorial through a Tutorial or Help location.
* Leave normal OnTrack features available if the tutorial fails.
* Store only the approved tutorial version, state and current step.

The approved progress states are:

* `in-progress`
* `skipped`
* `dismissed`
* `completed`

These behaviours must be checked against the final implementation before the tutorial is released.

## 6. Welcome and Profile Setup Boundary

The tutorial must remain separate from the existing welcome and profile setup process.

The existing `has_run_first_time_setup` behaviour should not be changed or reused as tutorial progress. Completing or dismissing the tutorial must not change a student’s profile setup state.

## 7. Security and Privacy Position

The documentation does not contain real student or assessment information.

Future testing, screenshots and recordings must not include:

* Student names or identification numbers
* Marks, grades or submissions
* Feedback or extensions
* Disability information
* Unit-performance information
* Authentication details, secrets or private API responses

Only demo or synthetic accounts may be used.

Detailed activity tracking and per-click analytics are outside the approved scope. Tutorial failures should fail open so that students can continue using OnTrack.

## 8. Testing and Evidence Status

The required GitHub documentation validation for PR #7 has passed.

Application-level automated tests, manual tests, accessibility checks, security tests and pilot results are not available because the related implementation and testing tickets are incomplete.

These missing results are recorded as blocked evidence in the evidence index. They have not been presented as successful tests.

## 9. Walkthrough Decision

A fallback walkthrough has not been recorded.

The ticket requires the walkthrough to be created only after the interface is stable. Recording it now would risk producing inaccurate instructions and outdated screens.

If a walkthrough is created later, it must:

* Use demo or synthetic data.
* Show the tutorial version and recording date.
* Receive a second privacy and accuracy review.
* Support the written documentation rather than replace it.

## 10. Second-Contributor Review

A second-contributor review has been requested.

The reviewer has been asked to follow the contributor guide as far as possible and report any unclear or missing step. If the reviewer is blocked because the implementation or step registry is unavailable, that result will be recorded as an implementation dependency.

The review result must not be described as completed until an actual response is received.

## 11. Known Limitations

At the time of this handover:

* The tutorial interface is not stable.
* Final code locations have not been confirmed.
* The tutorial shell and step registry are unavailable.
* Stable targets and selectors are not available.
* Automatic launch and progress saving have not been verified.
* Replay and help access have not been verified.
* Security and privacy testing is incomplete.
* Automated and manual application test results are unavailable.
* Pilot sessions and fixes are incomplete.
* Final screenshots and walkthrough evidence are unavailable.
* The second-contributor result is pending.

## 12. Main Risks

| Risk                                            | Effect                                                | Required follow-up                               |
| ----------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------ |
| Implementation differs from the planned design  | The guides may describe behaviour that changes        | Review every guide against the completed feature |
| Stable targets change or remain unavailable     | Tutorial steps may not point to the correct interface | Confirm selectors and run regression tests       |
| Progress saving is not verified                 | Skip, completion or replay guidance may be inaccurate | Test every approved progress state               |
| Testing remains incomplete                      | The tutorial cannot be considered release-ready       | Complete TUT-Q01 and the pilot work              |
| Media is created before the interface is stable | Screenshots or recordings may become outdated         | Wait until the interface is approved             |
| Real data is accidentally captured              | Privacy requirements would be breached                | Use demo data and complete a second review       |

## 13. API and Deployment Requirements

No API work or separate deployment has been confirmed for TUT-D04.

API work is only required if the eligibility, progress-state or security work confirms that tutorial progress must be stored on the server.

A separate deployment is not required for the written documentation. Any future API, configuration or deployment requirement must be linked in the evidence index when confirmed.

## 14. Required Follow-Up

Before the tutorial is released:

1. Complete TUT-W01, TUT-W02, TUT-W03 and TUT-W04.
2. Confirm the final repository files, step registry and stable targets.
3. Complete the security and privacy review.
4. Complete automated and manual testing.
5. Run the pilot using demo or synthetic accounts.
6. Resolve or document the pilot findings.
7. Verify the student and contributor guides against the working interface.
8. Add approved screenshots only after the interface is stable.
9. Record the fallback walkthrough only if it is still required.
10. Complete and record the second-contributor review.
11. Add all final branches, pull requests and test evidence.
12. Update the documentation version and review date before release.

## 15. Final Handover Statement

The TUT-D04 documentation is ready for review as a current-state handover.

The documentation work completed so far is available through PR #7. The tutorial feature itself is not ready for release, and the remaining implementation, testing, pilot and review work is clearly recorded for the next contributors.

This handover closes the documentation work that can be completed with the information currently available. It does not claim that the unfinished tutorial implementation has been tested or approved.










































