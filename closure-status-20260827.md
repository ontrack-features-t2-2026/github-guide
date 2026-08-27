# Documentation, tutorial and MVP closure status — 2026-08-27

This page records the repository-side closure result for `DOC-2`, `TUT-F01`,
`MISC-X01`, the Docker Image Vulnerability Scan and `ON-MVP01`. Ticket wording,
assignees and source statuses came from the 26 August Planner workbook export;
GitHub refs and pull requests were audited at `2026-08-27T09:49:05Z`.

Repository evidence does not create a Planner update, team-chat announcement,
uncontacted-person approval, risk acceptance or release decision. The
requester's explicit closure approval is recorded where it applies; other
external actions are called out separately.

## DOC-2 — setup guide and video links

### Historical DOC-1 result

The earlier search artifact exists in `thoth-tech/doubtfire-astro` as the
immutable [OnTrack Dev Environment Setup Guide at
`077dac7`](https://github.com/thoth-tech/doubtfire-astro/blob/077dac7abb23982139a7115896ef608628c29c4d/docs/ontrack-dev-environment-setup.md).
It links a Deakin SharePoint video, but an unauthenticated check returned HTTP
401, so its duration and content could not be independently verified. The
written guide also describes the old 9.x/fork workflow and is not a valid T2
2026 setup source. The Jira-ticket tutorial is a different short video and was
not reused as environment-setup evidence.

### Current T2 asset

Commit `58b3913` adds and links the replacement setup package from the README's
**Getting set up** section:

- [current student setup guide](student-setup.md) — maintained written setup,
  contribution and branch workflow;
- [11 minute 37 second setup
  walkthrough](media/setup/ontrack-t2-2026-setup-walkthrough.mp4) — H.264/AAC,
  1280×720, 14,704,239 bytes, SHA-256
  `788e9065165ec268d8764ed0b1ebe388700502910b286d8d900c93e00b00f425`;
- [accessible transcript](media/setup/ontrack-t2-2026-setup-walkthrough-transcript.md)
  — SHA-256
  `f4373fde0bd2a6e37e4339fc9ad7316efe2487714677b4d34bc9e2d29a733366`.

**Repository result: complete.** The guide, correctly sized current video,
descriptions, duration and transcript are linked. After this branch is
published, the remaining human action is to paste the GitHub README link into
Planner/team chat and confirm that intended students can open it.

Planner-ready text:

```text
DOC-2 COMPLETE IN REPOSITORY — README “Getting set up” now links the maintained student setup guide, an 11:37 current T2 2026 walkthrough and its accessible transcript. The older DOC-1 9.x guide/video link was audited and is retained only as historical provenance; the Jira tutorial was not substituted. Evidence commit chain starts at 58b3913. After publication: add the GitHub README link to Planner/team chat and confirm student access.
```

## TUT-F01 — First-Time Tutorial foundation

The [objective, branch plan and evidence index](first-time-tutorial-objective.md)
records the preserved welcome/profile setup, the unchanged meaning of
`has_run_first_time_setup`, MVP boundaries, dependency order, expanded
DOC-9/10/11 mapping, evidence fields and explicit role gaps. The 27 August
audit found no public `feature/student-onboarding` branch. No API or Deploy
branch was created because no approved state or environment need was shown.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual. The branch
plan and Guide target are approved for TUT-F01 closure; downstream roles remain
explicitly Unassigned until implementation/review starts.

**Repository result: complete / publication follow-up.** Planner cross-links
and the team-chat announcement remain human publication actions.

Planner-ready text:

```text
TUT-F01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Objective, preserved setup boundaries, branch rules, ticket/dependency map, ownership gaps and evidence requirements are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Approved plan: feature/student-onboarding from observed Web 9c618c3b when implementation begins; no API or Deploy branch is justified. Next: publish, add Planner cross-links/team-chat post, and assign downstream implementation/review roles.
```

## MISC-X01 — cross-objective coordination

The [coordination register](cross-objective-coordination.md) now contains the
27 August branch/PR audit, factual ownership register, explicit Unassigned
roles, shared-surface conflict map, proposed shared settings/help structure,
required Notifications → CAL-F01 → THM-F02 → TUT-W04 order, CI staging,
conditional Deploy rules and weekly review row. Previously named umbrella and
follow-up PRs are recorded as merged; current open review items remain visible.

Local Deploy head `32c7abbf5551d172970c31acea9522ec4da29b08`
records the prior 26 August candidate only. Its gitlink commit `c4c0d9a5` pins
API `75d7337f` and Web `832d5e47`; it is not the final lock and must be
superseded when final API/Web SHAs are selected.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual and does not
convert the prior-candidate lock into release approval.

**Repository result: complete / publication follow-up.** Publish the Guide,
post the effective deadline and add the merged link to Planner/team chat.
Downstream implementation still assigns the relevant Unassigned roles.

Planner-ready text:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Current heads/PRs, owners and Unassigned roles, shared surfaces, integration order, CI/Deploy rules and weekly review are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Prior-candidate Deploy head 32c7abb is reproducibility evidence only, not the final lock. Next: publish the Guide, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles.
```

## Docker Image Vulnerability Scan

The [scan report](evidence/docker-image-vulnerability-scan-20260826.md) and its
compressed raw JSON/table artifacts identify exact API/Web candidate SHAs,
image digests, scanner/database provenance, severity counts, layer attribution,
dependency-mitigation cross-reference, checksums and rerun commands.

**Scan-ticket evidence result: complete for the exact 26 August development
images.** This is not remediation or production approval. API reported 35
Critical/577 High instances and Web reported 33 Critical/394 High instances.
Current branch heads moved, so final runtime images require applicability
review, remediation or expiring risk acceptance, rebuild and rescan.

Planner-ready text:

```text
DOCKER IMAGE VULNERABILITY SCAN — EVIDENCE COMPLETE for exact candidates API 75d7337f and Web 832d5e47. Trivy 0.74.0 raw JSON/table reports, checksums, layer attribution and dependency cross-reference are published. Result is not clean: API 35 Critical/577 High; Web 33 Critical/394 High. Next security/release work: triage, remediate or approve expiring exceptions, build final minimal runtime images and rescan their immutable digests.
```

## ON-MVP01 — combined four-stream handover

The [central MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
preserves focused passes for the exact candidates and records the 27 August
branch/PR refresh. The prior candidate is reproducibly pinned locally, but
final API/Web SHAs are still moving and the lock is unpublished.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester for this factual blocked/handover disposition. This is not a product
release approval and is not attributed to uncontacted individuals.

**Result: blocked / handed over.** No current full-suite pass, resource-
sufficient Web production-build pass, composed-stack acceptance, previous/all
CPD success, eligible live PPI browser result, real background Web Push receipt
or complete 85-response feedback traceability matrix exists. The exact-image
Critical/High findings also remain unresolved. Existing focused tests and safe
browser states must not be promoted to those missing outcomes.

Planner-ready text:

```text
ON-MVP01 BLOCKED / HANDED OVER — Exact 26-Aug API/Web candidates retain focused evidence and a local prior-candidate Deploy pin; named umbrella/follow-up PRs were merged, but final heads moved. Still required: final lock publication/fresh-clone verification, full suites and production build, composed-stack acceptance, previous/all CPD, eligible live PPI, current Sidekiq→Mailpit email, real background Web Push, all-85 feedback traceability, image triage/rescan, and authorised go/no-go/rollback records. Central evidence: docs/evidence/ontrack-mvp-2026-08-26/README.md
```
