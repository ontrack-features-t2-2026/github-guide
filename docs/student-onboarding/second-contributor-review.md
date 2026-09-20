# TUT-D04 second-contributor review

**Original documentation owner:** Jeffy Sam Babu
**Review status:** Previously requested; response pending
**Updated:** 21 September 2026

The original review request was recorded with the documentation later
[merged in PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7).
This update does not send another request or claim that a reviewer has replied.

## Maintenance exercise

Use the [contributor guide](contributor-guide.md) to update one tutorial step
in a separate local review branch. The implementation now exists on
`doubtfire-web:codex/buckets-tutorial-20260920`; the shell, registry, service,
targets and tests have actual paths in the guide. Its PR is pending, so record
the exact reviewed commit rather than assuming that `11.0.x` contains it.

1. Read the source map and [state contract](../../onboarding-tutorial-trigger-and-state-rules.md).
2. Choose a small wording correction in `student-onboarding.steps.ts` and
   identify the matching [copy source](../../onboarding-tutorial-step-copy.md).
3. Explain whether the stable ID or version needs to change.
4. Follow the guide's focused tests and manually check the step and its missing-target fallback.
5. Record what was unclear, what was attempted and what actually passed or failed.
6. Propose corrections to the contributor guide. Do not merge or modify production.

Check authentication/flag readiness, browser-only progress, replay preservation
and keyboard behaviour if the exercise touches those areas. The new API setting
is a default-off rollout gate, not a progress-storage endpoint. Use synthetic
accounts and enable it only in the disposable review environment.

## Result record

| Item | Recorded result |
| --- | --- |
| Reviewer | Awaiting response |
| Review date and tested commit | Awaiting response |
| Process attempted | Proposed: update one step using the contributor guide |
| Outcome | Awaiting actual attempt |
| Missing or unclear instructions | Awaiting response |
| Environment or implementation blocker | None established by this update; record actual failure if encountered |
| Suggested improvements | Awaiting response |
| Documentation changes following review | Awaiting response |

An earlier absence of implementation is no longer the assumed blocker. A
reviewer might still lack a published branch, working environment or required
runtime flag; record that specific evidence without marking the exercise passed.
Source reading, automated checks and an AI review do not substitute for the
requested independent human maintenance exercise.

## Privacy and completion

Do not record real student names, IDs, grades, submissions, feedback, extensions,
unit-performance information, credentials or calendar subscription URLs. Use
synthetic data and inspect screenshots before sharing them.

Update this record only when the reviewer's response is available, retaining
name, date, tested source, attempted steps, outcome and resulting corrections.
The [evidence index](evidence-index.md) should link that response without copying
private information into the repository.
