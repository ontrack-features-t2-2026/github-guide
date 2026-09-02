# TUT-U01 — Student Onboarding Pilot (prep pack)

**Ticket:** TUT-U01 (Planner O1-E — Testing, Pilot, Documentation and Handover)  
**Owner:** Jay Shrimpton  
**Branch:** `docs/student-onboarding-pilot-result`  
**Depends on:** TUT-Q01 (manual accessibility/browser QA) and a testable tutorial on staging/demo  
**Status:** Prep only — script, consent and templates ready. Pilot sessions are **not started**.

This pack does **not** claim a completed pilot, working tutorial, or handover approval.
Do not run reviewer sessions until TUT-Q01 evidence exists and a non-production
environment with synthetic accounts is available.

## Contents

| File | Purpose |
|---|---|
| [pilot-script-and-consent.md](./pilot-script-and-consent.md) | Approved-style pilot script and privacy/consent statement |
| [findings-and-decisions-template.md](./findings-and-decisions-template.md) | De-identified findings / triage table (blank) |
| [pilot-result-template.md](./pilot-result-template.md) | Final result, re-test and approval record (blank until execution) |

## Split work (proposed board tickets)

| ID | Title | When | Depends on |
|---|---|---|---|
| **TUT-U01a** | Pilot prep — script, consent, templates | Now | None for prep |
| **TUT-U01b** | Pilot sessions + triage + focused fix PRs | After tutorial is testable | TUT-Q01 |
| **TUT-U01c** | Re-test, approvals, chat handover | After U01b | TUT-U01b |

## Privacy rule (always)

Use demo/synthetic accounts only. Record de-identified observations only.
Do **not** collect or paste names, marks, feedback, extension details, disability
information, unit performance or detailed behavioural analytics into evidence.
