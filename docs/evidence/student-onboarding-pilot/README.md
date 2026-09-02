# TUT-U01 — Student Onboarding Pilot (prep pack)

**Ticket:** TUT-U01 (Planner O1-E — Testing, Pilot, Documentation and Handover)  
**Owner:** Jay Shrimpton  
**Branch:** `docs/student-onboarding-pilot-result`  
**Depends on:** TUT-Q01 (manual accessibility/browser QA) and a testable tutorial on staging/demo  
**Status:** Prep only — script, consent and templates ready. Pilot sessions are **not started**.

This pack does **not** claim a completed pilot or working tutorial.
Do not run reviewer sessions until TUT-Q01 evidence exists and a non-production
environment with synthetic accounts is available.

Guides and final MVP handover stay with Maple (**TUT-D04**, **TUT-MVP01**). This
split only covers the original TUT-U01 pilot scope.

## Contents

| File | Purpose |
|---|---|
| [pilot-script-and-consent.md](./pilot-script-and-consent.md) | Pilot script and privacy/consent statement |
| [findings-and-decisions-template.md](./findings-and-decisions-template.md) | De-identified findings / triage table (blank) |
| [pilot-result-template.md](./pilot-result-template.md) | Pilot result, re-test and approval record (blank until execution) |

## Split of original TUT-U01 (two tickets only)

| ID | Title | Scope from original checklist | When | Depends on |
|---|---|---|---|---|
| **TUT-U01-PREP** | Prepare pilot script, consent and evidence templates | Script + consent; privacy rules; blank findings and result tables | Now | None for prep |
| **TUT-U01-RUN** | Run pilot, triage findings, fix critical issues and record result | Invite reviewers; run four outcomes + skip/replay; log de-identified findings; triage; focused fix PRs; re-test; short pilot result; request objective/docs/tech approval; post result link in team chat | After tutorial is testable | TUT-Q01 + TUT-U01-PREP |

**Out of this split (already owned elsewhere):**

- **TUT-D04** / **TUT-MVP01** — user/contributor guides and final MVP handover (Maple)

## Privacy rule (always)

Use demo/synthetic accounts only. Record de-identified observations only.
Do **not** collect or paste names, marks, feedback, extension details, disability
information, unit performance or detailed behavioural analytics into evidence.
