# Review script - First-Time Tutorial prototype

**Ticket:** TUT-UX01 (checklist items 8, 9 and 10)

This is the short review script for the prototype. It covers the four learning
outcomes, skip, dismissal and replay. It is deliberately aligned with the existing
pilot script in [TUT-U01-PREP](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot/pilot-script-and-consent.md)
so the early prototype review and the later pilot use the same tasks and the same
de-identified findings format. Where the two overlap, this review is the earlier,
cheaper pass on the prototype before implementation.

## Before the session

- [ ] Open the [prototype](prototype/index.html). It uses synthetic content only.
- [ ] Have the [findings table](findings-and-decisions.md) open with no name fields.
- [ ] Invite at least three reviewers where practical, including one less
      experienced OnTrack user.
- [ ] Include one teaching-staff or documentation reviewer to check the wording and
      accuracy of the copy.
- [ ] Read the consent and privacy note below to each reviewer.

## Consent and privacy note (read aloud)

This session checks whether the First-Time Tutorial prototype teaches four OnTrack
journeys and whether the wording is clear. It uses a prototype with synthetic
content. We record only de-identified notes about discoverability and wording, for
example "hesitated on step 3" or "label unclear". We do not collect real names,
marks, feedback, extension or disability detail, or click analytics. Taking part
is voluntary and you may stop at any time. Skipping or leaving the tutorial is a
valid outcome and is recorded as an observation, not a failure.

## Reviewer brief (one paragraph)

You are a new student trying OnTrack for the first time. Work through the tasks
below in the prototype. Think aloud if you like, and say when something is hard to
find or the wording is unclear. You may skip or finish the tour, and afterwards we
may ask you to replay it from Tutorial and Help. We are testing the product, not
you.

## Tasks

| Step | Outcome | Prompt to the reviewer | Pass signal |
|---|---|---|---|
| R1 | Understand and start | "Read the welcome and decide whether to start the tour." | Reviewer understands what the tour offers and starts it |
| R2 | Find and select a unit | "Follow the step about choosing your unit." | Reviewer sees the unit selector is the target and moves on |
| R3 | Open the dashboard | "Follow the step about the project or task dashboard." | Reviewer identifies the dashboard target |
| R4 | Find the target grade | "Follow the step about the target-grade option." | Reviewer identifies the target-grade control |
| R5 | Find the Calendar | "Follow the step about the Calendar area." | Reviewer identifies the Calendar target and can finish |
| R6 | Skip | "Start again and choose Skip for now without ticking the checkbox." | Tour leaves for this session, app still usable |
| R7 | Dismiss | "Choose do not show automatically again, then confirm the automatic prompt is off." | Automatic prompt is off, replay still available |
| R8 | Replay | "Replay the tour from Tutorial and Help." | Tour restarts from step 1 and the earlier dismissal choice is not lost |

## Extra checks to prompt during the tasks

Ask the reviewer to try these at least once during the session:

- Move through the whole tour using the keyboard only.
- Press Escape during a step and describe what happens.
- Point out where the step number and total appear.
- Try the tour on a narrow screen or a narrow browser window.

## Observer notes (de-identified only)

Use reviewer labels only, for example Reviewer A (novice), Reviewer B, Reviewer C,
Reviewer D (teaching staff or docs). For each step record:

1. Found quickly, found after hesitation, or not found.
2. Where the reviewer looked first, at a high level only.
3. Wording or interface that confused them.
4. Any accessibility concern, missing guidance or unnecessary step.
5. A severity guess: critical, high, medium or future.
6. A suggested decision: fix now, document or future backlog.

Do not record names, marks, feedback text or any personal detail. Move every
observation into the [findings table](findings-and-decisions.md) after the session.

## After the sessions

1. Triage the findings into the table and classify each one.
2. Update the prototype and the copy for accepted critical or high findings.
3. Record the design decision and request objective lead and accessibility
   reviewer approval.
4. Post the prototype link, the de-identified findings and the decision for
   approval, and add the links to [evidence-index.md](evidence-index.md).
