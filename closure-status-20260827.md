# Documentation, tutorial and MVP closure status — 2026-08-27 (refreshed 2026-08-28)

This page records the repository-side closure result for `DOC-2`, `TUT-F01`,
`MISC-X01`, the Docker Image Vulnerability Scan, `CPD-MVP01`, `PPI-MVP01` and
`ON-MVP01`.
Ticket wording, assignees and source statuses came from the supplied Planner
workbook exports;
GitHub refs and pull requests were audited at `2026-08-27T14:08:45Z`. The
closure merges, exact-SHA validation and final 28 August clean-stack follow-up
are labelled separately below.

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
Guide #2 is the publication PR to `main`. The predecessor composed pass remains
attached to its exact revisions. A separately labelled clean follow-up against
the merged API/Web/Deploy tuple now passes CPD Active/Previous/All/search and
the corrected Deploy #27 notification verifier. Patch `37a90d7f` was used only
for the verifier run and was not substituted as the runtime Deploy revision.

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester. This is not attributed to any uncontacted individual and does not
convert the final validation lock into release approval.

**Repository result: complete / publication follow-up.** Publish the Guide,
post the effective deadline and add the merged link to Planner/team chat.
Downstream implementation still assigns the relevant Unassigned roles.

Planner-ready text:

```text
MISC-X01 REPOSITORY COMPLETE / PUBLICATION FOLLOW-UP — Current heads/PRs, owners and Unassigned roles, shared surfaces, integration order, CI/Deploy rules and weekly review are documented. Requester approval recorded 27 Aug 2026; named-leader confirmation waived. API PR77, Web PR105 and Deploy PR26 merged into 11.0.x; final Deploy lock ad463dc pins API 6c74dbb/Web 16c22c9. Exact predecessor acceptance remains attached to Web 5255c27/lock 4851fc1; a separately labelled clean merged-tuple follow-up passes CPD Active/Previous/All/search and corrected open Deploy PR27's verifier. Guide PR2 is the publication PR to main. Next: publish Guide PR2, post the effective deadline and add Planner/team-chat links; downstream work assigns relevant roles. No release approval is claimed.
```

## Docker Image Vulnerability Scan

The [historical scan report](evidence/docker-image-vulnerability-scan-20260826.md)
and its compressed raw JSON/table artifacts identify the 26 August API/Web
candidate SHAs, image digests, scanner/database provenance, severity counts,
layer attribution, dependency-mitigation cross-reference, checksums and rerun
commands. The exact 27 August API and merged-Web compact packs are
checksum-verified and published under
[`api-6c74dbb`](evidence/raw/docker-image-vulnerability-scan-20260827/api-6c74dbb/)
and
[`web-16c22c9`](evidence/raw/docker-image-vulnerability-scan-20260827/web-16c22c9/).

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
The exact merged Web head `16c22c99` was rebuilt at OCI index digest
`sha256:35aef683f7b52ae761bb679e7a7efb55e1b3a7149ab8851a7164ff3596fa0ac2`,
Linux/ARM64 manifest
`sha256:1b634aceb505d078a3a13e98ecdae1ca2687a7ee56433b9730dc54c6608f592f`
and configuration
`sha256:51bce86ae9fde71c213a326e81b4e15148b6c2ba666e2278bfb41810d5e5e68a`.
Trivy 0.74.0 reports the same 33 Critical/395 High/1,592 Medium/1,197
Low/163 Unknown inventory as the predecessor: 3,380 instances/2,110 unique
IDs, including 1 fixable Critical and 8 fixable High instances. The stable
vulnerability-tuple hash is identical, while the new OCI digest records the
changed source/layout content. None of these results is remediation or
production approval; both development images retain unresolved Critical/High
findings and are not production-safe.

Open Web remediation
[#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111)
at `b37b75a0` is technically green and reports a separate candidate result:
development High/Critical instances fall 428→30 (4 Critical/26 High), a 93%
reduction, with no fixable High/Critical instance remaining. The actual
hardened `deploy.Dockerfile` release image at OCI index digest
`sha256:d2b50b6edca157df5543f0975203ce5226198ad3db00083a9bbe7c4e4c95c99f`
reports zero detected findings in its complete point-in-time scan. Type-check,
lint, 607 tests plus one todo, builds, deployment-config verification,
Nginx/runtime smoke and hosted technical checks pass. PR #111 remains open and
protected-review required. The zero-finding digest is not an unconditional
production-safety statement and does not waive provenance, configuration,
application-security, deployment or release gates. The original merged-image
packs remain immutable evidence.

Planner-ready text:

```text
DOCKER IMAGE VULNERABILITY SCAN — EXECUTION COMPLETE / REMEDIATION REVIEW OPEN. Final API 6c74dbb at sha256:f938fef1… reports 35 Critical/579 High; exact merged Web 16c22c9 at sha256:35aef683… reports 33 Critical/395 High. Both immutable raw packs/checksums remain published and the scanned development images are not production-safe. Open Web PR111 at b37b75a is technically green: development H/C falls 428→30 with zero fixable H/C, while the actual hardened deploy.Dockerfile release image at sha256:d2b50b6e… reports zero detected findings. That point-in-time result is not unconditional production safety; PR111 still requires protected review plus provenance, configuration, application-security, deployment and release disposition. The API runtime also retains unresolved risk. Evidence: evidence/docker-image-vulnerability-scan-20260826.md and docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md
```

## CPD-MVP01 — Cross-Project Dashboard handover

The [CPD-Q05 as-built wireframe and usability/accessibility
record](docs/evidence/ontrack-mvp-2026-08-26/cpd-q05-wireframe-usability-validation-20260828.md)
and [28 August clean-stack
follow-up](docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md)
close the suspected live-data and missing-Q05 evidence gaps without inventing
participant feedback.

The clean runtime used exact merged API `6c74dbbc`, Web `16c22c99` and Deploy
lock `ad463dc8`; Web was restored clean before cache-free assertions. On
`localhost:4401`, enabling local Demo mode through `/demo-controls` exposed the
real synthetic API dataset. Home and the dashboard listed `COS10001`,
`COS20007` and `COS30046`; their active task counts were 37/15/5. Previous scope
rendered `COS30243`, and All plus global-search assertions passed. The initial
one-unit result was the intentional `DemoDataMaskInterceptor` quiet baseline,
not a product defect. No CPD source fix or CPD product-fix PR was required.

The focused CPD component run passes 54/54 and the broader exact-head matrix
remains 98 passing with one existing todo. The as-built record maps the exact
interface, scope/search/filter/recovery behaviour, responsive evidence,
semantic keyboard-operable controls and non-colour status/warning meaning. It
explicitly does not claim independent participant research or accessibility
certification. The requester's owner waiver closes only the inactive-peer
subjective-opinion gate; it does not replace protected GitHub review.

**Result: validated / handed over — protected publication review pending.**
Technically green CPD-D02 Web
[#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108)
at `6136d540` remains open and review-required. Web #103 was closed without
merge, and the final runtime does not depend on that proposed reusable-card
change.

Planner-ready text:

```text
CPD-MVP01 VALIDATED / HANDED OVER — PROTECTED PUBLICATION REVIEW PENDING. Exact merged API 6c74dbb/Web 16c22c9/Deploy ad463dc passes clean Active, Previous, All and global-search validation. Demo mode exposes COS10001/COS20007/COS30046 with active task counts 37/15/5 and previous COS30243; the initial one-unit view was the intentional DemoDataMaskInterceptor baseline, so no product fix was needed. Focused component tests pass 54/54. CPD-Q05 now has an auditable as-built text wireframe and usability/accessibility record with responsive, semantic-control and non-colour-warning evidence; no participant feedback is invented, and the requester waived only the inactive-peer opinion gate. Technically green CPD-D02 Web PR108 at 6136d54 still requires protected review. Evidence: docs/evidence/ontrack-mvp-2026-08-26/cpd-q05-wireframe-usability-validation-20260828.md and docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md
```

## PPI-MVP01 — Peer Progress Indicator handover

The [PPI-Q02 validation and PPI MVP handover](docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md)
maps the supplied Planner acceptance criteria to exact merged Web head
`16c22c992c821e16981c8f8cb2601f0a61f73007`. The Planner export records
`PPI-Q02` completed with 10/10 checklist items and expressly accepts a safe
mock/pre-calculated unit summary while placing a live unit-level API outside
the MVP.

Merged Web PRs #31, #32, #38 and #39 preserve the typed mock-backed unit
summary, privacy-safe state resolver, help/copy and wireframe evidence,
responsive component, and de-identified design decisions. Exact-head focused
fixture/state validation passes 3 files/40 tests in 3.31 seconds; the broader
PPI matrix passes 109 tests and the hosted Web suite passes 607 tests across
104 files. Normal, genuine zero, suppressed, unavailable, disabled and stale
states, separate student/anonymous labels, privacy suppression, non-colour
meaning, desktop/narrow layout and the production demo gate are validated.

**Result: validated / handed over.** A live unit-level API remains documented
future work and is not claimed as delivered. Guide PR #2 still needs its
independent protected review before publication.

Planner-ready text:

```text
PPI-MVP01 VALIDATED / HANDED OVER — Exact merged Web head 16c22c9 contains the authorised task-level PPI plus the privacy-safe mock-backed unit summary from merged PRs #31/#32/#38/#39. PPI-Q02 is recorded completed 10/10; normal, genuine 0%, suppressed, unavailable, disabled and stale mappings, privacy suppression, non-colour labels, desktop/narrow layout and production mock gating are validated. Focused exact-head fixture/state validation passed 3 files/40 tests in 3.31s; the broader PPI matrix passes 109 tests and hosted Web passes 607/104. Per Planner acceptance, a live unit-level API is future/out-of-scope and is not claimed as delivered. Evidence: docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md
```

## ON-MVP01 — combined four-stream handover

The [central MVP evidence index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
and [final closure validation
record](docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md)
plus the [28 August
follow-up](docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md)
preserve exact-SHA automated and running-stack evidence. The predecessor exact
pair API `6c74dbbc` / Web `5255c271`, pinned by Deploy lock `4851fc1`, passed
fresh clone, Compose, scoped browser and email acceptance. API PR #77, Web PR
#105 and Deploy PR #26 then merged API `6c74dbbc`, Web `16c22c99` and lock
`ad463dc8`. A separately labelled clean follow-up at that exact merged tuple now
passes CPD Active/Previous/All/search and corrected Deploy #27 email-verifier
acceptance. Guide PR #2 is the publication PR to `main`; no release approval is
claimed.

Local handover packs are retained at
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/api/API-CLOSURE-VALIDATION-SUMMARY.md`,
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/live/`
and
`/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/deploy/final-lock-verification.txt`.
These paths are local references, not published GitHub evidence.

Requester approval recorded 27 Aug 2026. The requester waived named-leader and
inactive-peer subjective-opinion gates for this factual handover disposition.
The waiver is not attributed to uncontacted individuals and does not replace
protected review, security disposition or product-release approval.

**Result: blocked / handed over.** Merged Web `16c22c99` remains green across
607 tests/104 files plus CPD, PPI and Notifications matrices. CPD-Q05 and
PPI-Q02/PPI-MVP01 are validated within their documented boundaries; the
88-response de-identified traceability table remains complete. The clean merged
tuple passes CPD with active task counts 37/15/5 and previous `COS30243`; open
Deploy #27's corrected verifier passes the local email path. No CPD product fix
or live PPI unit API is claimed.

API #79 at `17538ce3`, #80 at `42d4ebaf` and #81 at `380d15bc` are technically
green and protected-review pending. #81 passes 12 exact-union shards twice;
confirmation maximum test-step time is 3:48 versus 5:28 and shard wall time is
7:22 versus 9:19. Repeated setup still prevents a consistent five-minute total
claim. Web #111 at `b37b75a0` is technically green and reduces development
High/Critical findings 428→30; its exact hardened release-image digest reports
zero detected findings. The open PR and point-in-time scan do not create
security or release approval.

Web Push reached permission, subscription count one, successful safe-route jobs
and sign-out deletion back to zero, but no OS banner/click-through was observed.
Remaining blockers are that Mobile receipt/click; protected review/publication
for Guide #2, CPD-D02 Web #108, API #79/#80/#81, Deploy #27 and Web #111;
security/release disposition; and authorised go/no-go/rollback records.

Planner-ready text:

```text
ON-MVP01 BLOCKED / HANDED OVER — API PR77, Web PR105 and Deploy PR26 merged the exact closure tuple. Clean follow-up validation at API 6c74dbb/Web 16c22c9/Deploy ad463dc passes CPD Active/Previous/All/search with active counts 37/15/5; open Deploy PR27's corrected email verifier also passes. CPD-Q05 and PPI-MVP01 are validated within their documented boundaries; no CPD product fix or live PPI unit API is claimed. API PR79/80/81 are technically green; PR81's 12 exact-union shards pass twice with confirmation max test step 3:48 and shard 7:22, but protected review remains. Open Web PR111 is technically green, reduces development H/C 428→30 and its exact hardened release image reports zero detected findings; it is not unconditional production safety or security approval. Still open: observable Mobile receipt/click; protected review/publication for Guide PR2, CPD-D02 PR108, API PR79/80/81, Deploy PR27 and Web PR111; security/release disposition; and authorised go/no-go/rollback records. The 88/88 feedback matrix remains complete. Evidence: docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md, docs/evidence/ontrack-mvp-2026-08-26/cpd-q05-wireframe-usability-validation-20260828.md, docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md and docs/evidence/ontrack-mvp-2026-08-26/feedback-traceability-20260827.md
```
