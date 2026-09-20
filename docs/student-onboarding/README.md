# First-time OnTrack tutorial documentation

The tutorial introduces the unit selector, task dashboard, target-grade control
and Calendar. It is optional and does not perform those actions for the student.

This package updates the original TUT-D04 documentation by Jeffy Sam Babu,
[merged in PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7),
to describe the implementation on web branch `codex/buckets-tutorial-20260920`.
The implementation PR and final review evidence are pending. This is a guide to
the review version, not a statement that the feature is enabled in production.

## Guides and evidence

- [Student guide](student-guide.md): when the tour appears and how to use or replay it.
- [Troubleshooting](troubleshooting.md): disabled rollout, missing targets and browser storage.
- [Contributor guide](contributor-guide.md): actual source paths and maintenance checks.
- [Evidence index](evidence-index.md): source branches, related PRs and review status.
- [Handover](handover.md): implementation boundaries, rollout and outstanding human checks.
- [Second-contributor review](second-contributor-review.md): the maintenance exercise and pending response.
- [Trigger and state rules](../../onboarding-tutorial-trigger-and-state-rules.md): shared DOC-10/TUT-D03 contract.

## Current behaviour

The authenticated API flag defaults off. When enabled, the tour observes a
student's incomplete profile setup and checks for an empty project history,
including inactive units, before establishing an automatic-start candidate.
It waits until profile setup and application data loading finish before opening.
Returning students and students with existing projects can use **Tutorial and
Help** in the account menu when the feature is enabled.

Progress is stored in this browser for the current account. It does not sync
between devices. Missing or invalid state does not make a returning account new.
A missing unit or target leaves the written explanation and controls usable.

## Related guidance

- [Calendar instructions](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/CAL-DOC01-calendar-how-to.md).
- [Theme contract](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/theme/THEME-CONTRACT.md).
- [MG-05 CSS style guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/codex/buckets-migration-20260920/docs/css-style-guide.md), on the migration review branch; publication pending.
- [Accessibility baseline](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/A11Y-D01-Accessibility-Baseline_Phase1.md), with its recorded scope and limitations.
- [Tutorial and video index](../../tutorial-links.md).

## Review boundary

Source and automated evidence belong in the web implementation's
[validation package](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding)
(pending publication). Pilot sessions, independent human maintenance review and
release approval are not claimed here. Any screenshots or recordings must use
demo or synthetic accounts and receive a privacy and accuracy review. Do not
record real student names, IDs, grades, submissions, feedback or credentials.
