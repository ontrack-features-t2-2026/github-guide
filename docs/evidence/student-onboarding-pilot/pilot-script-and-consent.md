# TUT-U01 — Pilot script and consent (non-production)

## Consent / privacy statement (read to reviewers)

This session checks whether the First-Time Tutorial teaches four OnTrack journeys.
It runs in a **non-production / demo environment** with **synthetic accounts**.

We record only de-identified notes about discoverability and wording
(for example: “hesitated on step 3”, “label unclear”).

We do **not** collect or store:

- real names or contact details;
- marks, grades or feedback content;
- extension, disability or assessment detail;
- detailed click analytics or production behavioural telemetry.

Participation is voluntary. You may stop at any time. Skipping or leaving the
tutorial is a valid outcome and should be recorded as an observation, not a failure.

---

## Environment checklist (before inviting reviewers)

- [ ] Staging or local demo instance, not production
- [ ] Demo / synthetic student accounts only
- [ ] Tutorial build available to start or replay
- [ ] At least three reviewers invited where practical, including one less-experienced OnTrack user
- [ ] Findings table ready (no name fields)

---

## Reviewer brief (one paragraph)

You are a new student exploring OnTrack. Follow the tasks below. Think aloud if
you want: say when something is hard to find or the wording is unclear. You may
skip or finish the tutorial. Afterwards we may ask you to replay it from Tutorial
and Help. There is no assessment of you — we are testing the product.

---

## Task script (four learning outcomes + skip/replay)

| Step | Outcome | Prompt | Pass signal | Note if blocked |
|---|---|---|---|---|
| T1 | Find and select a unit | “From home, find and open your sample unit.” | Unit / project context opens | |
| T2 | Open project or task dashboard | “Open the project or task dashboard for this unit.” | Task/project view visible | |
| T3 | Find target-grade control | “Find where you set or change your target grade.” | Control located (do not change real data; demo only) | |
| T4 | Find Calendar | “Find Calendar / calendar integration for the unit.” | Calendar entry or surface found | |
| T5 | Skip or complete tutorial | “Continue through the tutorial, or skip/dismiss it.” | Finish, skip or dismiss works; app still usable | |
| T6 | Replay from Tutorial and Help | “Replay the tutorial from Tutorial and Help.” | Tutorial restarts from the permanent entry | |

Observers: mark found / hesitated / unclear wording per step. Do not record
marks, feedback text or personal details.

---

## Observer notes (de-identified only)

Use reviewer labels only: Reviewer A / B / C (novice | experienced).

For each step record:

1. Found quickly / Found after hesitation / Not found
2. Where they looked first (high level only)
3. Wording or UI that confused them
4. Severity guess: Critical / High / Medium / Low
5. Suggested decision: Fix now / Document / Future backlog

---

## After sessions

1. Copy observations into the findings and decisions table.
2. Open **one focused fix ticket or PR per logical critical/high issue**.
3. Re-test accepted critical/high fixes with this same script.
4. Fill the pilot result and request Objective Lead, Documentation and Technical review.
5. Post the result link in team chat.
