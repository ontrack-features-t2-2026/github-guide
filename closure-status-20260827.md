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
superseded. The exact local final candidates are now API
`f25945d228c1a3b321412047dcfe304e43cb7658` and Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d`; neither candidate nor a successor
Deploy lock has been published.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual and does not
convert the prior-candidate lock into release approval.

**Repository result: complete / publication follow-up.** Publish the Guide,
post the effective deadline and add the merged link to Planner/team chat.
Downstream implementation still assigns the relevant Unassigned roles.

Planner-ready text:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Current heads/PRs, owners and Unassigned roles, shared surfaces, integration order, CI/Deploy rules and weekly review are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Final local candidates are API f25945d and Web 5255c27; prior-candidate Deploy head 32c7abb is reproducibility evidence only and still needs a successor lock. Next: publish the Guide, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles.
```

## Docker Image Vulnerability Scan

The [scan report](evidence/docker-image-vulnerability-scan-20260826.md) and its
compressed raw JSON/table artifacts identify exact API/Web candidate SHAs,
image digests, scanner/database provenance, severity counts, layer attribution,
dependency-mitigation cross-reference, checksums and rerun commands.

**Scan-ticket evidence result: historical evidence complete; final-candidate
refresh partial.** The 26 August API/Web development-image evidence remains
reproducible. The final Web candidate `5255c271` was scanned at immutable digest
`sha256:ae5a90c845bbfec38e2dc1f84c5447fe4b301c189ea9c7f19d910c6b2c7bf23c`
and reported 33 Critical/395 High/1,592 Medium/1,197 Low/163 Unknown instances.
All 16 language findings are in bundled npm dependencies in the base Node
image; the project `npm ci` layer and `npm audit` reported zero. The final API
candidate scan is **pending**. None of these results is remediation or
production approval; the Web development image is not production-safe.

Planner-ready text:

```text
DOCKER IMAGE VULNERABILITY SCAN — FINAL REFRESH PARTIAL. Historical Trivy evidence remains complete for API 75d7337f and Web 832d5e47. Final Web 5255c27 at digest sha256:ae5a90c8… reports 33 Critical/395 High/1,592 Medium/1,197 Low/163 Unknown; 16 language findings are in bundled base-image npm, while the project npm layer/audit report zero. Final API f25945d scan is pending. The Web development image is not production-safe. Next: publish the final API scan, triage/remediate or approve expiring exceptions, build minimal runtime images and rescan immutable digests.
```

## ON-MVP01 — combined four-stream handover

The [central MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
preserves focused passes for the exact candidates and records the 27 August
branch/PR refresh. Final local candidates are fixed at API `f25945d` and Web
`5255c271`, but the prior-candidate Deploy lock has not yet been superseded or
published.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester for this factual blocked/handover disposition. This is not a product
release approval and is not attributed to uncontacted individuals.

**Result: blocked / handed over.** Web `5255c271` now has green lint,
type-check, focused packs, the full 103-file suite (605 passed/one todo) and a
Node 22 production build (99.911 seconds). API `f25945d` retains the
previous/all CPD query reduction (453 to 38 SQL queries; 4.218 to 2.390 seconds),
passes its focused regression (one run/six assertions), and introduces eight
deterministic CI shards covering 129/129 test files exactly once. The local API
full-suite attempt is not a pass: Docker-dependent LaTeX/JPlag/helper-service
tests could not access `/var/run/docker.sock`; hosted CI is pending and is the
authoritative gate. Composed-stack and browser previous/all CPD acceptance,
eligible live PPI, current Sidekiq-to-Mailpit email, real background Web Push,
the complete 85-response matrix, the final API image scan, the successor Deploy
lock and an authorised release decision remain open. The final Web image still
has unresolved Critical/High findings and is not production-safe.

Planner-ready text:

```text
ON-MVP01 BLOCKED / HANDED OVER — Final local candidates are API f25945d and Web 5255c27. Web lint/type-check, focused packs, the 103-file full suite (605 pass/1 todo) and Node 22 production build pass; API previous/all CPD performance/regression and deterministic 8-way test partition checks pass. API hosted full-suite CI is pending; the local attempt is not green because Docker-dependent helper tests could not access the sandboxed socket. Still required: successor Deploy lock publication/fresh-clone verification, composed-stack and browser previous/all CPD acceptance, eligible live PPI, current Sidekiq→Mailpit email, real background Web Push, all-85 feedback traceability, final API image scan and image remediation/risk decisions, plus authorised go/no-go/rollback records. Central evidence: docs/evidence/ontrack-mvp-2026-08-26/README.md
```
