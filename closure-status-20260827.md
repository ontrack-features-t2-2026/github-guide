# Documentation, tutorial and MVP closure status — 2026-08-27

This page records the repository-side closure result for `DOC-2`, `TUT-F01`,
`MISC-X01`, the Docker Image Vulnerability Scan and `ON-MVP01`. Ticket wording,
assignees and source statuses came from the 26 August Planner workbook export;
GitHub refs and pull requests were audited at `2026-08-27T12:15:29Z` and the
later closure merges and exact-SHA validation results below were refreshed on
27 August.

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
descriptions, duration and transcript are linked. Guide
[#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) is the
publication PR to `main`; after publication, the remaining human action is to
paste the GitHub README link into Planner/team chat and confirm that intended
students can open it.

Planner-ready text:

```text
DOC-2 COMPLETE IN REPOSITORY — README “Getting set up” now links the maintained student setup guide, an 11:37 current T2 2026 walkthrough and its accessible transcript. The older DOC-1 9.x guide/video link was audited and is retained only as historical provenance; the Jira tutorial was not substituted. Evidence commit chain starts at 58b3913 and Guide PR2 is the publication PR to main. After publication: add the GitHub README link to Planner/team chat and confirm student access.
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
TUT-F01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Objective, preserved setup boundaries, branch rules, ticket/dependency map, ownership gaps and evidence requirements are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Approved plan: feature/student-onboarding from the then-current Web 11.0.x (verified planning base 4034e7d1); no API or Deploy branch is justified. Guide PR2 is the publication PR to main. Next: publish PR2, add Planner cross-links/team-chat post, and assign downstream implementation/review roles.
```

## MISC-X01 — cross-objective coordination

The [coordination register](cross-objective-coordination.md) now contains the
27 August branch/PR audit, factual ownership register, explicit Unassigned
roles, shared-surface conflict map, proposed shared settings/help structure,
required Notifications → CAL-F01 → THM-F02 → TUT-W04 order, CI staging,
conditional Deploy rules and weekly review row. Previously named umbrella and
follow-up PRs are recorded as merged; current open review items remain visible.

Deploy commits `c4c0d9a5` and `32c7abbf` preserve the prior 26 August lock as
historical provenance: API `75d7337f` and Web `832d5e47`. Exact composed-stack
evidence uses API `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225`, Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d` and Deploy lock
`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd`. API
[#77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77) merged
that API head as `6b45974e`; Web
[#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) merged
updated green head `16c22c99` as `4034e7d1`; and Deploy
[#26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) merged
lock `ad463dc8` (pinning API `6c74dbbc` / Web `16c22c99`) as `6c61802e`.
Guide #2 is the publication PR to `main`. The composed pass is not promoted to the later
Web/Deploy heads.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual and does not
convert the final validation lock into release approval.

**Repository result: complete / publication follow-up.** Publish the Guide,
post the effective deadline and add the merged link to Planner/team chat.
Downstream implementation still assigns the relevant Unassigned roles.

Planner-ready text:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Current heads/PRs, owners and Unassigned roles, shared surfaces, integration order, CI/Deploy rules and weekly review are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived. API PR77, Web PR105 and Deploy PR26 merged into 11.0.x; final Deploy lock ad463dc pins API 6c74dbb/Web 16c22c9. Exact composed acceptance remains attached to predecessor Web 5255c27/lock 4851fc1. Guide PR2 is the publication PR to main. Next: publish Guide PR2, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles. No release approval is claimed.
```

## Docker Image Vulnerability Scan

The [historical scan report](evidence/docker-image-vulnerability-scan-20260826.md)
and its compressed raw JSON/table artifacts identify the 26 August API/Web
candidate SHAs, image digests, scanner/database provenance, severity counts,
layer attribution, dependency-mitigation cross-reference, checksums and rerun
commands. Local final-candidate packs add the 27 August Web/API results; the
final API compact raw pack is also checksum-verified and published under
`evidence/raw/docker-image-vulnerability-scan-20260827/api-6c74dbb/`.

**Scan-ticket execution result: complete; release risk open.** The 26 August API/Web development-image evidence remains
reproducible. The composed Web candidate `5255c271` was scanned at immutable digest
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
production-safe. Updated merged Web head `16c22c99` is source-test green but
has no image scan in this evidence pack, so the `5255c271` scan must not be
promoted to it.

Planner-ready text:

```text
DOCKER IMAGE VULNERABILITY SCAN — EXECUTION COMPLETE / RELEASE RISK OPEN. Historical Trivy evidence remains complete for API 75d7337f and Web 832d5e47. Composed Web 5255c27 at digest sha256:ae5a90c8… reports 33 Critical/395 High/1,592 Medium/1,197 Low/163 Unknown; 16 language findings are in bundled base-image npm, while the project npm layer/audit report zero. Final API 6c74dbb at OCI index digest sha256:f938fef1… reports 35 Critical/579 High/1,843 Medium/1,368 Low/247 Unknown (4,072 instances/2,312 unique IDs), including 49 fixable High instances/12 unique IDs and no fixable Critical. The compact raw API pack and checksum manifest are published. Merged Web 16c22c9 has not been image-scanned here. These root development images are not production-safe. Next: triage/remediate or approve named expiring exceptions, build minimal non-root runtime images for the merged heads and rescan immutable release digests.
```

## ON-MVP01 — combined four-stream handover

The [central MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
and [final closure validation
record](docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md)
preserve exact-SHA automated and running-stack evidence. The exact composed
pair was API `6c74dbbc` / Web `5255c271`, pinned by Deploy lock `4851fc1`; its
fresh recursive clone, Compose render/contract, readiness and scoped browser /
email acceptance passed. API PR #77 merged the same API head as `6b45974e`.
Web PR #105 merged updated green head `16c22c99` as `4034e7d1`, and Deploy PR
#26 merged final lock `ad463dc8` (pinning API `6c74dbbc` / Web `16c22c99`) as
`6c61802e`. Guide PR #2 is the publication PR to `main`. The composed result is not
promoted to the later Web/Deploy revisions, and no release approval is claimed.

Local handover packs are retained at
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/api/API-CLOSURE-VALIDATION-SUMMARY.md`,
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/live/`
and
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/deploy/final-lock-verification.txt`.
These paths are local references, not published GitHub evidence.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester for this factual blocked/handover disposition. This is not a product
release approval and is not attributed to uncontacted individuals.

**Result: blocked / handed over.** API `6c74dbbc` passes the authoritative
hosted eight-shard suite and exact-union rollup; all other API checks are green.
Its slowest test step improved from 8:31 to 5:25, missing the five-minute target
by 25 seconds. Merged Web head `16c22c99` is green across 607 tests/104 files;
its exact-head CPD (98), PPI (109), Notifications (177), focused layout tests,
formatting and conflict checks also pass. Final Deploy lock `ad463dc8` renders
and passes the Compose contract against the exact pinned component revisions.
On the exact earlier composed pair, CPD Active/Previous/All and combined
filtering passed; eligible PPI rendered 60% submitted, 10% complete and a
privacy-rounded breakdown while the disabled route exposed no values; and four
real email events passed Sidekiq-to-Mailpit delivery, privacy, suppression and
retry cleanup. The supplied survey contains 88 responses and every source row
is mapped once in the de-identified feedback traceability table. Web Push
reached real permission, subscription count one, successful safe-route jobs and
sign-out deletion back to zero, but no OS banner or click-through was
observable. Remaining blockers are that receipt/click, `CPD-Q05`/`CPD-D02`,
`PPI-Q02`/live unit summary, Guide publication, rerunning or explicitly accepting the running-stack
boundary at final Web/Deploy heads, merged-Web image scanning, vulnerability
remediation/risk decisions and an authorised release decision.

Planner-ready text:

```text
ON-MVP01 BLOCKED / HANDED OVER — API PR77 merged hosted-green head 6c74dbb, Web PR105 merged green head 16c22c9 (607 tests/104 files plus exact-head CPD/PPI/Notifications matrices), and Deploy PR26 merged lock ad463dc pinning that pair; its exact Compose contract passes. Guide PR2 is the publication PR to main. API eight-shard CI and rollup pass, though the slowest test step is 5:25 and misses the five-minute target by 25s. Exact predecessor lock 4851fc1 (API 6c74dbb/Web 5255c27) passed fresh clone/Compose plus CPD Active/Previous/All/filtering, eligible/disabled task-level PPI, and four-event Sidekiq→Mailpit privacy/suppression/retry acceptance. The supplied survey contains 88 responses; all 88 are mapped once in the de-identified traceability table. Push subscription/jobs/sign-out cleanup passed but no OS receipt/click was observed. Do not promote that running-stack pass or Web image scan to the later Web/Deploy heads. Still required: observable push receipt/click, CPD-Q05/D02, PPI-Q02/live unit summary, Guide publication, merged-Web image scan and vulnerability disposition, plus authorised go/no-go/rollback records. Evidence: docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md and docs/evidence/ontrack-mvp-2026-08-26/feedback-traceability-20260827.md
```
