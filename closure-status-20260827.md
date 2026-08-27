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

Deploy commits `c4c0d9a5` and `32c7abbf` preserve the prior 26 August lock as
historical provenance: API `75d7337f` and Web `832d5e47`. Published Deploy
branch `chore/ontrack-mvp-lock-20260827` now ends at
`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd` and pins the published final
validation candidates API `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` and Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d`. The API, Web, Deploy and Guide
closure branches are published, but no pull requests are open for them.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual and does not
convert the final validation lock into release approval.

**Repository result: complete / publication follow-up.** Publish the Guide,
post the effective deadline and add the merged link to Planner/team chat.
Downstream implementation still assigns the relevant Unassigned roles.

Planner-ready text:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Current heads/PRs, owners and Unassigned roles, shared surfaces, integration order, CI/Deploy rules and weekly review are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Published final candidates API 6c74dbb and Web 5255c27 are pinned by published Deploy lock 4851fc1; ff4aad5 and c4c0d9a/32c7abb remain prior-lock provenance. A fresh recursive clone of 4851fc1 plus Compose render/contract validation passed. No PR, running composed-stack or release approval is claimed. Next: open/review the required PRs, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles.
```

## Docker Image Vulnerability Scan

The [historical scan report](evidence/docker-image-vulnerability-scan-20260826.md)
and its compressed raw JSON/table artifacts identify the 26 August API/Web
candidate SHAs, image digests, scanner/database provenance, severity counts,
layer attribution, dependency-mitigation cross-reference, checksums and rerun
commands. Local final-candidate packs add the 27 August Web/API results; the
final API raw pack is checksum-verified but not yet committed here.

**Scan-ticket execution result: final-candidate scans complete; raw API pack
publication open.** The 26 August API/Web development-image evidence remains
reproducible. The final Web candidate `5255c271` was scanned at immutable digest
`sha256:ae5a90c845bbfec38e2dc1f84c5447fe4b301c189ea9c7f19d910c6b2c7bf23c`
and reported 33 Critical/395 High/1,592 Medium/1,197 Low/163 Unknown instances.
All 16 language findings are in bundled npm dependencies in the base Node
image; the project `npm ci` layer and `npm audit` reported zero. The final API
candidate `6c74dbbc` was scanned at local OCI index/tag digest
`sha256:f938fef1889985574c3dd22290ea41db3df7431474710ac3c125fe62ccdbb312`
and Linux/ARM64 manifest
`sha256:d351d2c79a55eac1f59024c67709124702b6451c35d2efab340e6699bb0fddc5`.
Trivy 0.74.0 reported 35 Critical/579 High/1,843 Medium/1,368 Low/247
Unknown instances: 4,072 instances across 2,312 unique IDs. It reports 49
fixable High instances across 12 unique IDs and no fixable Critical instance.
None of these results is remediation or production approval; both scanned
development images retain unresolved Critical/High findings and are not
production-safe.

Planner-ready text:

```text
DOCKER IMAGE VULNERABILITY SCAN — FINAL REFRESH COMPLETE / REMEDIATION OPEN. Historical Trivy evidence remains complete for API 75d7337f and Web 832d5e47. Final Web 5255c27 at digest sha256:ae5a90c8… reports 33 Critical/395 High/1,592 Medium/1,197 Low/163 Unknown; 16 language findings are in bundled base-image npm, while the project npm layer/audit report zero. Final API 6c74dbb at OCI index digest sha256:f938fef1… reports 35 Critical/579 High/1,843 Medium/1,368 Low/247 Unknown (4,072 instances/2,312 unique IDs), including 49 fixable High instances/12 unique IDs and no fixable Critical. These root development images are not production-safe. Next: publish the raw final API pack, triage/remediate or approve named expiring exceptions, build minimal non-root runtime images and rescan immutable release digests.
```

## ON-MVP01 — combined four-stream handover

The [central MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
preserves focused passes for the exact candidates and records the 27 August
branch/PR refresh. Published final candidates API `6c74dbbc` and Web `5255c271`
are pinned by published Deploy lock `4851fc1`. The earlier `ff4aad5` and
`c4c0d9a`/`32c7abb` locks remain historical provenance. A fresh recursive clone
resolved API `6c74dbbc`, Web `5255c271`, LTI `ec0df42` and nested JPlag viewer
`4132c30`; the merged Compose configuration rendered and
`compose_contract_test.py` passed.
No pull request, running composed-stack validation or release approval is
claimed.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester for this factual blocked/handover disposition. This is not a product
release approval and is not attributed to uncontacted individuals.

**Result: blocked / handed over.** Web `5255c271` now has green lint,
type-check, focused packs, the full 103-file suite (605 passed/one todo) and a
Node 22 production build (99.911 seconds). API `6c74dbbc` retains the
previous/all CPD query reduction (453 to 38 SQL queries; 4.218 to 2.390 seconds),
passes its focused regression (one run/six assertions), and introduces eight
deterministic CI shards covering 129/129 test files exactly once. The local API
unsharded run completed 1,145 runs/16,245 assertions/zero skips in 2,785.068
seconds, but it is not a suite pass. Its 26 non-green tests classify as 22
Docker-helper/socket-dependent cases, two standalone-image workflow-mount
cases, and two stale notification expectations fixed by the final two
test-only commits. The focused fixes pass, but the full run was not rerun at
`6c74dbbc`; hosted CI is pending and remains the authoritative gate.
Composed-stack and browser previous/all CPD acceptance,
eligible live PPI, current Sidekiq-to-Mailpit email, real background Web Push,
the complete 85-response matrix, running-stack verification, image
remediation/risk decisions and an authorised release decision remain open.
Both final development images have unresolved Critical/High findings and are
not production-safe.

Planner-ready text:

```text
ON-MVP01 BLOCKED / HANDED OVER — Published final candidates API 6c74dbb and Web 5255c27 are pinned by published Deploy lock 4851fc1; ff4aad5 and c4c0d9a/32c7abb remain historical provenance. Web lint/type-check, focused packs, the 103-file full suite (605 pass/1 todo) and Node 22 production build pass; API previous/all CPD performance/regression and deterministic 8-way test partition checks pass. A fresh recursive clone of 4851fc1 plus Compose render/contract validation passed; this is not a running-stack pass. No PR is open. The API local run completed 1,145 runs/16,245 assertions/0 skips in 2,785.068s but is not a suite pass: 22 tests need Docker helper/socket access, two need the workflow checkout mounted, and two stale expectations were fixed afterwards; hosted CI is pending. The exact API image scan is complete (35 critical/579 high), but neither development image is production-safe. Still required: running composed-stack verification, browser previous/all CPD acceptance, eligible live PPI, current Sidekiq→Mailpit email, real background Web Push, all-85 feedback traceability, image remediation/risk decisions, plus authorised go/no-go/rollback records. Central evidence: docs/evidence/ontrack-mvp-2026-08-26/README.md
```
