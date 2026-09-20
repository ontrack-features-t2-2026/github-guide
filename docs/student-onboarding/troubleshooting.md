# First-time OnTrack tutorial: troubleshooting

**Ticket:** TUT-D04 · **Updated:** 21 September 2026 · **Status:** Implementation review version

The tutorial must leave normal OnTrack use available. Close it if needed; the
[written student guide](student-guide.md) is available independently of rollout.

## The tutorial does not start

First check whether your institution has enabled the tutorial. It defaults off,
and a failed feature-settings request keeps it off. Refreshing cannot enable a
feature the institution has disabled.

Automatic prompts also stay off when:

- You are using a staff account.
- Profile setup or application data loading is incomplete.
- You are on the welcome, profile-editing, sign-in/out or SCORM page.
- The current account has existing projects, including inactive units, during
  the initial eligibility check.
- Your profile was already complete and no valid tutorial progress is saved.
- You previously completed or permanently dismissed the tutorial in this browser.
- History could not be checked, or browser storage was blocked, invalid or from
  an unsupported tutorial version.

The history check is deliberately conservative: an empty list of active units
alone does not establish a new account. Once enabled and ready, use **account
menu → Tutorial and Help** to replay without waiting for an automatic prompt.

## No unit, dashboard or target-grade control is available

Read the fallback text and continue with **Next**, or close the tour. The tutorial
does not navigate or create an enrolment for you. Open the unit yourself and
check its dashboard outside the tutorial. If it is missing there too, contact
your teaching team through the usual support route.

A hidden or offscreen target is not highlighted. The written directions remain
visible. If a **Find** button is available, it scrolls to that control without
clicking it. If a target stays missing after the page loads, report the step and
page rather than changing unrelated settings.

## Calendar is unavailable

Look for Calendar in the account menu; wider screens also show its toolbar
button. If it is unavailable, continue the tutorial or use the
[Calendar guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/CAL-DOC01-calendar-how-to.md).
The tutorial never creates a subscription or exposes a calendar URL.

## Progress cannot be saved

Tutorial progress is written to browser storage, not to a progress API. A network
failure can prevent settings or eligibility from loading, but retrying the
network does not repair blocked browser storage.

Check whether private browsing, browser settings or an extension blocks or clears
site data. You can finish reading the current tour even when a saving warning
appears, then use manual replay. Do not clear site storage as a routine repair:
it also removes the tutorial's saved decisions and may affect other app data.

Different browsers and devices have independent progress. Signing out preserves
the current browser's saved choice and clears only the active session's state.

## The prompt appears again

A temporary **Skip tutorial** or **Close** before completion permits a later
prompt on sign-in/reload. Choose **Do not show automatically again** from the
skip confirmation to stop automatic prompts in this browser. Acknowledging the
completion panel with **Finish**, **Close** or Escape also prevents them.

If a completed or permanently dismissed tour returns, check that you are using
the same account and browser profile and that its site data has not been removed.
Record what action you used to leave the tour. A tutorial version increase alone
must not re-prompt a completed or dismissed account.

## Replay is missing

**Tutorial and Help** is in the account menu for eligible signed-in students
when the runtime flag is on, setup and loading are complete, and the route is
suitable. It is intentionally absent for staff and while rollout is disabled.
Use the written guide while waiting; do not reset profile setup to reveal it.

## Report a problem

Include the step, page, browser/device, expected behaviour, actual behaviour and
whether it followed a reload, sign-in or storage warning. Share screenshots only
after removing names, IDs, marks, submissions, feedback, extension details and
credentials. Use the institution's established support route; this package does
not claim a newly confirmed support contact.
