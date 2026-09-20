# Tutorial trigger and state rules

DOC-10 / TUT-D03. Implementation contract for PR review, 20 September 2026.
This extends the existing [problem and user stories](onboarding-tutorial-problem-statement-and-user-stories.md)
and [step copy](onboarding-tutorial-step-copy.md). It does not claim product,
security or pilot approval. The runtime switch defaults off.

## Eligibility and safe defaults

Evaluate only for an authenticated student with the tutorial enabled. The
existing `has_run_first_time_setup` field continues to mean profile setup; the
tutorial reads that boundary and never writes or repurposes it.

To establish a new-student candidate, observe incomplete profile setup and
successfully read that current user's complete project history, including
inactive projects. Zero projects establishes the no-prior-units condition.
Missing, failed or non-empty history means replay only. Do not infer newness
from an empty list of active units or missing browser storage.

Offer the tutorial only after profile setup and account/unit/project loading
finish and the user is on a normal authenticated application route. Never cover
the welcome/profile, sign-in/out or SCORM route. Missing units or targets use
written guidance and leave the application usable.

This deliberately misses some newly enrolled students: an existing project is
not enough evidence to distinguish a brand-new enrolment from earlier use.
Those students can use **Tutorial and Help**. A broader automatic trigger would
need an explicit, reliable account/enrolment rule and a reviewed change.

## State transitions

| Current state / action | Saved result | Automatic offer |
| --- | --- | --- |
| New candidate completes profile setup | `new` until Start | Once the remaining readiness checks pass. |
| Start, Next or Back | `in-progress` and stable step ID | A new session resumes the saved step for this version. |
| Skip for now or Close | `skipped` | No repeat this session; offer the welcome panel on a later sign-in/reload. |
| Open skip confirmation, then Go back | Unchanged | Continue the current tutorial. |
| Confirm Do not show automatically again | `dismissed` | No automatic offer. |
| Finish | `completed` | No automatic offer. |
| Replay from Tutorial and Help | Existing saved decision preserved | Explicit replay starts at the beginning; it does not clear completion/dismissal. |
| Flag off, staff role or sign-out | Close and clear in-memory state | No offer; persisted choices remain. |
| Invalid storage or storage failure | Reject invalid state; continue normal use | No automatic loop; manual help remains available when enabled. |

Skip for now and permanent dismissal must have different labels. A confirmation
must identify which choice it records. Escape from a guided step opens that
confirmation; Escape from the confirmation returns to the step. Escape from
the welcome panel skips for this session; Escape from completion closes it.

## Three worked cases

1. **Brand-new student:** incomplete profile plus a successful empty full-history
   response establishes eligibility. Finish normal profile setup, then offer the
   tour after data loads. With no units, explain the unit selector and fallback;
   do not create an enrolment.
2. **Returning student:** completed profile with no tutorial record, or any prior
   project during eligibility checking, gets no unsolicited prompt. Use the
   account menu's Tutorial and Help entry to replay when enabled.
3. **Student who skipped once:** saved `skipped` prevents another prompt in the
   same session. A later sign-in/reload offers the welcome panel. Confirming
   permanent dismissal prevents further automatic offers.

## Storage, versions and replay

Store only `{version, state, step}` in browser storage under the authenticated
current user's namespace. Do not store marks, task content, names, feedback,
click history or enrolment history. There is no tutorial-progress API and no
cross-device synchronisation. Browser storage is not a security boundary:
people sharing a browser profile can inspect or change its non-sensitive state.
Clear storage only as an explicit user/browser action, not on sign-out.

Validate the exact schema and known step/state values. Preserve completed and
dismissed choices when the tutorial version increases; a version bump alone
does not authorise interrupting all students again. Incomplete older versions
restart at the current beginning; unsupported future versions fail safely to
manual replay. Document any later change to this version policy with its tests.

Replay belongs in the existing account menu as **Tutorial and Help**, alongside
existing account controls. It opens the same shell and four-step registry. It
does not create another settings screen or trigger Calendar subscriptions,
target-grade writes or task submissions. The written student guide remains
available when the runtime feature is disabled.
