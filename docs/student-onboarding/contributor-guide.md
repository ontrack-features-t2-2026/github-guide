# First-Time OnTrack Tutorial – Contributor Guide

**Ticket:** TUT-D04
**Status:** Draft
**Last updated:** 9 September 2026

## Purpose

This guide explains how the First-Time OnTrack Tutorial is intended to work and how future contributors should maintain it.

The implementation tickets are still in progress, so some exact file locations are not available yet. These locations must be added after the relevant pull requests are published and reviewed.

## Repositories and Branches

The tutorial work is divided between two repositories:

* `doubtfire-web` contains the tutorial interface and frontend behaviour.
* `github-guide` contains the student guide, contributor guide, evidence index and handover documents.

The approved branch plan uses `feature/student-onboarding` as the shared Web integration branch. Individual implementation work uses focused child branches:

* `web/student-onboarding-shell` for the reusable shell and step registry.
* `web/student-onboarding-state-integration` for eligibility, progress and version behaviour.
* `web/student-onboarding-core-steps` for the four tutorial steps.
* `web/student-onboarding-replay-help` for the permanent replay entry.
* `docs/student-onboarding-user-and-contributor-guide` for TUT-D04 documentation.

A separate API branch must only be created if TUT-D03 and TUT-S01 confirm that server-side progress storage is necessary.

## Planned Architecture

The tutorial is planned as a reusable `student-onboarding` feature rather than code tied to one page.

The main parts are:

* A student-onboarding shell component.
* A student-onboarding service.
* A typed step model.
* A central step registry.
* Stable onboarding targets.
* Welcome, tutorial step, skip-confirmation and completion panels.
* Progress and version handling.
* A permanent Tutorial and Help replay entry.
* Focused component and service tests.

The exact implementation paths must be taken from the merged TUT-W01 to TUT-W04 pull requests.

| Area                           | Confirmed location |
| ------------------------------ | ------------------ |
| Tutorial shell                 | TBD after TUT-W01  |
| Tutorial service               | TBD after TUT-W01  |
| Typed step model               | TBD after TUT-W01  |
| Step registry                  | TBD after TUT-W01  |
| Eligibility and progress logic | TBD after TUT-W02  |
| Four tutorial steps            | TBD after TUT-W03  |
| Replay entry                   | TBD after TUT-W04  |
| Automated tests                | TBD after TUT-T01  |

Do not replace these entries with guessed file paths.

## Existing Welcome and Profile Setup Boundary

OnTrack already has a welcome and profile setup process. The tutorial must remain separate from that process.

The existing `has_run_first_time_setup` value means that the original profile setup has run. It must not be renamed or reused to mean that the tutorial was completed, skipped or dismissed.

The tutorial can only evaluate student eligibility after authentication, role, profile setup, unit and project information have finished loading.

Changing the tutorial must not:

* Reset profile setup.
* Redesign the profile form.
* Prevent a student from completing profile setup.
* Change the meaning of `has_run_first_time_setup`.
* Cause the welcome flow and tutorial to repeatedly trigger each other.

Run the existing welcome and profile setup tests after changing tutorial eligibility or progress behaviour.

## Tutorial Shell

The shell provides behaviour shared by every tutorial step. This includes:

* Opening and closing the tutorial.
* Moving Back and Next.
* Skipping for now.
* Permanently dismissing automatic prompts for the current version.
* Finishing the tutorial.
* Managing keyboard focus.
* Announcing the current step to assistive technology.
* Returning focus to a sensible location when the tutorial closes.
* Handling missing or delayed targets without freezing the page.

The shell should not contain behaviour that only belongs to one tutorial step. Step-specific information belongs in the step registry.

## Step Registry

The step registry is the main source for the tutorial sequence. Each step is expected to include:

* A stable step identifier.
* Route.
* Target.
* Title.
* Body text.
* Action or navigation information.
* Fallback text or behaviour.
* Tutorial version.

User-facing wording must come from the content approved under TUT-D02. Do not load untrusted remote HTML or place personal student information in tutorial text.

The four approved MVP steps are:

1. Select a unit.
2. Open the project or task dashboard and find current tasks and statuses.
3. Find and understand the target-grade control.
4. Find and open Calendar.

## Stable Target Contract

Tutorial steps must use an approved onboarding anchor, directive or data attribute. They must not rely on long CSS selector chains based on layout or visual styling.

A stable target should:

* Clearly identify one feature.
* Remain valid when surrounding styling changes.
* Be easy to find in tests.
* Be unique on the relevant page.
* Avoid containing personal or assessment information.
* Have a safe fallback when it is unavailable.

Do not silently point a step towards a different control when its original target is removed. Update the registry, fallback, tests and documentation together.

## Progress States

The approved minimum progress information is:

* Tutorial version.
* Tutorial state.
* Current step, when required.

The expected states are:

* `in-progress`
* `skipped`
* `dismissed`
* `completed`

The final names and storage format must match the approved TUT-D03 decision and the implementation.

No marks, feedback, extension details, disability information, assessment results, personal learning history or per-click analytics should be stored with tutorial progress.

A progress failure must leave normal OnTrack use available. It must not reset profile setup or create a repeated prompt loop.

## Version Rules

A tutorial version should change when a material update needs to be treated as a new tutorial experience. Examples include:

* Adding or removing a step.
* Changing the meaning or purpose of a step.
* Changing the order in a way that affects the student journey.
* Moving a step to a different feature or route.
* Replacing an important target.
* Adding important safety, privacy or workflow guidance.

A version change is normally unnecessary for a spelling correction or a small wording improvement that does not change the meaning or required action.

This is the current working rule. It must be checked against the final TUT-D03 version decision before the guide is approved.

Increasing the version must not create repeated automatic prompts. Students who completed or dismissed an earlier version should only receive a newer version according to the approved eligibility and prompting rules.

## Adding a Step

To add a step safely:

1. Confirm that the step is within the approved tutorial scope.
2. Add a new and unique step identifier.
3. Add the route, stable target, title, body, action, fallback and version information to the registry.
4. Add an approved onboarding anchor to the related interface if one does not exist.
5. Use approved wording from the documentation source.
6. Confirm that the tutorial does not perform the highlighted action automatically.
7. Decide whether the tutorial version must change.
8. Add tests for the target, navigation, fallback and keyboard behaviour.
9. Test the full tutorial sequence.
10. Update the student guide, screenshots and evidence index.

## Removing a Step

To remove a step:

1. Confirm that the removal has been approved.
2. Remove the registry entry without reusing its identifier for another purpose.
3. Check how saved progress behaves when a student previously stopped on that step.
4. Make sure the student moves safely to a valid step or completion state.
5. Remove an onboarding anchor only when no other feature uses it.
6. Update tests and documentation.
7. Treat the removal as a version change unless the approved version rule says otherwise.

## Reordering Steps

Change the sequence in the central registry rather than copying or rebuilding step components.

Keep the existing step identifiers. After reordering:

1. Check Back and Next behaviour.
2. Check saved progress from an earlier session.
3. Check route changes and browser Back behaviour.
4. Check focus placement and return.
5. Confirm that every fallback still makes sense.
6. Run the complete tutorial from beginning to end.
7. Update the version when required.

## Updating One Step

For a small wording change, update the approved copy source and registry together.

Keep the existing identifier when the purpose of the step has not changed. If the update changes the target, route, action or meaning, treat it as a material change and review the version.

After updating a step:

1. Run its focused tests.
2. Run the full tutorial sequence.
3. Test its missing-target fallback.
4. Check keyboard navigation and narrow-screen placement.
5. Update screenshots if the visible content changed.
6. Record the change in the evidence index.

## Security and Privacy

Tutorial progress must belong only to the authenticated user. If server-side storage is introduced, the update path must not accept an arbitrary user identifier.

Contributors must confirm that:

* Users cannot read or update another user’s progress.
* Invalid state values are handled safely.
* Tutorial wording and targets cannot inject unsafe content.
* Sensitive student information is not written to storage or logs.
* Browser-storage risks on shared devices have been considered.
* A broken trigger does not repeatedly interrupt the user.
* The overlay does not hide warnings, navigation or security messages.
* Any third-party dependency has been reviewed for licensing, maintenance, telemetry, accessibility, bundle size and supply-chain risk.

## Required Automated Tests

Relevant changes should include focused tests for:

* Shell controls.
* Back, Next, Skip, Dismiss, Finish and Close behaviour.
* Focus placement and return.
* Step announcements.
* Target resolution.
* Missing, hidden and delayed targets.
* Student eligibility.
* Staff-role exclusion.
* Progress-state transitions.
* Completion and dismissal.
* Replay behaviour.
* Version changes.
* Storage, network and API failures.
* Existing welcome and profile setup regression.
* Confirmation that no student action is completed automatically.

The final project also requires passing lint, type checking and production build checks.

## Required Manual Tests

Manual testing should cover:

* Keyboard-only navigation.
* Visible focus and logical focus order.
* Escape and close behaviour.
* Screen-reader or accessibility-inspector announcements.
* 200% browser zoom.
* Narrow-screen layouts.
* Reduced-motion behaviour.
* Chrome, Edge and Firefox.
* Safari when a supported environment is available.
* Route changes and browser Back.
* New, in-progress, skipped, dismissed and completed states.
* No-unit and missing-feature states.
* Storage or API failure.
* Existing profile setup.
* Manual replay.

Record the browser, device, result and evidence for each test.

## Updating Screenshots

Wait until the interface is stable before replacing screenshots.

Use a demo or synthetic account and check every image for:

* Student names and IDs.
* Marks and assessment results.
* Feedback.
* Extension details.
* Unit-performance information.
* Notifications containing personal information.
* Browser tabs or desktop content that should not be shared.

A second person should review the screenshots before they are published.

## Contributor Review

Before closing TUT-D04, another contributor must follow this guide and attempt a small update to one tutorial step.

Record:

* Reviewer name.
* Review date.
* Change attempted.
* Whether the update was completed.
* Any missing or unclear instruction.
* Changes made to this guide after the review.

## Known Limitations

At the time of this draft:

* TUT-W01 and TUT-W02 are not started.
* TUT-W03 is in progress.
* TUT-W04 is not started.
* Exact implementation paths are not available.
* The permanent replay location is not confirmed.
* Automated and manual testing is incomplete.
* The pilot result is not available.
* The final tutorial version and storage decision are not confirmed.
* A fallback walkthrough cannot be recorded until the interface is stable.

These limitations must be reviewed and updated before the final handover.

