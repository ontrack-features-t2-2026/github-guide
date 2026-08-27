# OnTrack MVP evidence and handover index

Evidence snapshot time: **2026-08-26T11:28:50Z** (`2026-08-26 21:28:50 AEST`)

Live branch and pull-request disposition was refreshed at
**2026-08-27T14:08:45Z**. A later closure pass selected and validated the exact
composed pair API `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` and Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d`, pinned by Deploy lock
`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd`. API
[#77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77) merged
that API head into `11.0.x` as `6b45974e`. Web
[#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) merged
an updated, green head `16c22c992c821e16981c8f8cb2601f0a61f73007` into
`11.0.x` as `4034e7d1`. Deploy
[#26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) merged
lock `ad463dc8b1b8005f0774819fe4d506da3c281947`, pinning API `6c74dbbc`
and Web `16c22c99`, into `11.0.x` as `6c61802e`. Guide
[#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) is the
publication PR to `main`. The composed evidence remains attached to Web
`5255c271` / Deploy `4851fc1`; it is not silently promoted to the later Web and
Deploy heads. PPI-Q02 source/test validation and the merged-Web vulnerability
scan were separately performed against exact Web head `16c22c99` and are
labelled as such. A final clean-stack follow-up used API `6c74dbbc`, Web
`16c22c99` and Deploy lock `ad463dc8`; it closes the suspected CPD live-data
gap and records technically green, still-open API, Deploy and Web security
follow-ups in the [28 August validation record](follow-up-validation-20260828.md).

Results remain attached to the exact SHA named beside them; 26 August evidence
is retained as historical and is not silently promoted to any later SHA.

Tickets covered:

- `MN-MVP01` — Mobile Notifications MVP
- `EN-MVP01` — Email Notifications MVP
- `CPD-MVP01` — Cross-Project Dashboard MVP
- `PPI-MVP01` — Peer Progress Indicator MVP
- `ON-MVP01` — combined four-stream handover

This is an evidence index, not a declaration that every ticket is complete. It
separates code that exists from evidence collected against the current remote
heads. A green result from an older commit is retained as historical evidence
only and is not promoted to a pass for a newer branch.

Requester approval recorded 27 Aug 2026. The requester waived named-leader and
inactive-peer subjective-opinion gates for this factual handover record. That
waiver is not attributed to an uncontacted individual and does not satisfy
protected GitHub review, security risk acceptance, deployment or release
approval.

## Executive handover decision

| Ticket | Implementation status | Exact-SHA evidence and remaining gate | Handover decision |
| --- | --- | --- | --- |
| `MN-MVP01` | Unified in-app/mobile Web Push implementation exists. | Merged Web `16c22c99` passes its exact-head 177-test Notifications matrix and hosted 607-test suite; merged API head `6c74dbbc` passes the authoritative hosted eight-shard suite. On the exact composed pair, real Chrome permission was enabled, a subscription was created (count 1), and push jobs succeeded with a safe local route. No OS banner or click-through was observed. Sign-out removed the subscription (count 0). | **Blocked** |
| `EN-MVP01` | In-app notification, queued email, preferences, event documentation and Mailpit integration exist. | Merged Web `16c22c99` and API `6c74dbbc` are green. On the original exact composed pair, four real MVP events traversed `NotificationService` → Sidekiq → Action Mailer → Mailpit; privacy, preference-suppression and retry-boundary probes passed. Open Deploy #27's corrected verifier also passes against the exact merged tuple. This is local MVP handover evidence, not production SMTP/bounce acceptance. | **Validated / handed over** |
| `CPD-MVP01` | Cross-project dashboard, filtering/sorting, recommendations and role-safe API work exist. | The exact merged tuple API `6c74dbbc` / Web `16c22c99` / Deploy `ad463dc8` passes clean live validation: Demo mode exposes `COS10001`, `COS20007` and `COS30046`, with dashboard task counts 37/15/5. The one-unit quiet view was intentional `DemoDataMaskInterceptor` behaviour; no product fix was needed. The component suite remains 54/54 and the broader exact-head matrix remains 98 passing/one todo. The [CPD-Q05 as-built record](cpd-q05-wireframe-usability-validation-20260828.md) supplies the text wireframe and usability/accessibility trace without inventing participant feedback. The inactive-peer opinion gate is owner-waived; technically green Web documentation #108 still requires protected review. | **Validated / handed over — publication review pending** |
| `PPI-MVP01` | The task-level widget calls an authorised API; the unit-level proof of concept is mock-backed and production-gated. | Merged Web `16c22c99` passes its exact-head 109-test PPI matrix and API `6c74dbbc` is green. The [PPI-Q02 validation](ppi-q02-validation-handover-20260827.md) maps the supplied Planner criteria to normal, genuine zero, suppressed, unavailable, disabled and stale states, privacy, non-colour meaning and responsive evidence; the focused exact-head fixture/state run passes 3 files/40 tests in 3.31s. Planner expressly records a live unit API as future/out of scope. | **Validated / handed over** |
| `ON-MVP01` | API, Web and Deploy closure PRs are merged; Guide PR #2 publishes the evidence. | The final merged tuple now has clean CPD live validation and the corrected Deploy #27 email verifier pass. API #79/#80/#81 are technically green; #81's 12-shard exact-union run improves maximum test time to 3:48 but remains open for protected review. Web #111 reduces development High/Critical findings 428→30 and its exact release-image scan reports zero findings, but it remains an open, review-required candidate and is not unconditional production approval. Mobile receipt/click, protected publication/reviews, security disposition and release authority remain open. | **Blocked / handed over** |

`Blocked` means the remaining gate is named below. It does not mean the existing
implementation should be discarded.

## Evidence language

- **Implemented**: code or documentation is present at the linked revision.
- **Historical pass**: a result was recorded against the exact older revision
  named in this file.
- **Fresh pass**: a command was rerun against the current candidate and its
  exact SHA and output were recorded. Composed Web `5255c271`, merged Web
  `16c22c99`, and the authoritative API `6c74dbbc` eight-shard hosted suite plus
  exact-union rollup are green; their different evidence scopes remain named.
- **Blocked**: a required acceptance check, publication step, PR disposition or
  owner action remains.
- **Deferred**: explicitly outside this MVP, with an owner and follow-up rather
  than an implied pass.

## Committed evidence artifacts

- Final 27 August handover:
  [hosted/composed closure validation](live-closure-validation-20260827.md),
  including the exact composed-versus-merged revision boundary.
- Final 28 August follow-up:
  [clean merged-stack validation and open-PR handover](follow-up-validation-20260828.md),
  including CPD Demo-mode behaviour, API sharding, the corrected notification
  verifier and the Web image-hardening candidate.
- Cross-Project Dashboard closure:
  [CPD-Q05 as-built wireframe and usability/accessibility validation](cpd-q05-wireframe-usability-validation-20260828.md),
  including exact live Active/Previous/All/search assertions, responsive and
  semantic-control evidence, non-colour warning meaning and honest research
  limitations.
- Product-feedback decision record:
  [88/88 de-identified response traceability](feedback-traceability-20260827.md),
  with source-row order, theme, decision, status, reason and ticket/PR mapping.
- Peer Progress Indicator closure:
  [PPI-Q02 validation and PPI MVP handover](ppi-q02-validation-handover-20260827.md),
  including the Planner scope boundary, merged PRs, exact-head tests, privacy
  matrix, responsive evidence and production mock gate.
- Browser captures: [CPD desktop](screenshots/cpd-dashboard-desktop.png),
  [CPD 390×844 viewport](screenshots/cpd-dashboard-narrow-viewport.png), and
  [PPI privacy-safe unavailable state](screenshots/ppi-unavailable-safe-state.png).
- Historical Web logs: [type-check](test-logs/web-typecheck.log),
  [lint](test-logs/web-lint.log),
  [CPD focused tests](test-logs/web-cpd-focused-tests-after-fix.log),
  [PPI focused tests](test-logs/web-ppi-focused-tests-after-fix.log),
  [notifications focused tests](test-logs/web-notifications-focused-tests-after-fix.log),
  and the two historical resource-blocked production-build attempts
  ([first](test-logs/web-production-build.log),
  [constrained retry](test-logs/web-production-build-retry.log)).
- Historical API logs: [CPD task-prioritisation](test-logs/api-cpd-task-prioritization-retry.log),
  [PPI core](test-logs/api-ppi-core-tests.log),
  [PPI preference](test-logs/api-ppi-preference-test-retry.log),
  [email notifications](test-logs/api-email-notifications-focused-tests.log),
  [push notifications](test-logs/api-push-notifications-focused-tests.log), and
  [Zeitwerk](test-logs/api-zeitwerk-check.log).
- Security evidence: [Docker image vulnerability scan report](../../../evidence/docker-image-vulnerability-scan-20260826.md),
  including links and checksums for the historical compressed raw reports, the
  [compact exact-API pack](../../../evidence/raw/docker-image-vulnerability-scan-20260827/api-6c74dbb/)
  and the
  [exact merged-Web pack](../../../evidence/raw/docker-image-vulnerability-scan-20260827/web-16c22c9/).

The committed artifacts above preserve the historical and selected 27 August
evidence. Larger local validation packs named below remain local; the factual
results required for handover are captured in the committed closure report.

## Remote branch snapshot at 2026-08-27T09:49:05Z

The following SHAs were read directly from GitHub during the initial 27 August
refresh. They are a timestamped audit snapshot, not the post-merge branch
heads; the later closure revisions are recorded below. Branch links are
mutable, while each linked commit is an immutable audit reference.

### API

| Branch | SHA |
| --- | --- |
| [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x) | [`cb03f80bdba5a19d12a821d3cb7e11f19b1b5c7f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/cb03f80bdba5a19d12a821d3cb7e11f19b1b5c7f) |
| [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | [`18f9f0daec1d34e79d704bcffdd2213322d62a20`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/18f9f0daec1d34e79d704bcffdd2213322d62a20) |
| [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | [`b0ac35f4083aaec66c10e1db4b3822655a66ae90`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/b0ac35f4083aaec66c10e1db4b3822655a66ae90) |
| [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | [`ad708860d72f16dca0f4e7ab5aa6bf0310c08131`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/ad708860d72f16dca0f4e7ab5aa6bf0310c08131) |
| [`feature/email-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/email-notifications) | [`5850668ae8b1e05c38d6c99aeb4aa0c3ab5d866a`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/5850668ae8b1e05c38d6c99aeb4aa0c3ab5d866a) |
| [`feature/mobile-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/mobile-notifications) | [`dc76a5a0e67ec4b751a5830c462c71b961eb60b1`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/dc76a5a0e67ec4b751a5830c462c71b961eb60b1) |
| [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/11.0.x-all-features-20260824) | [`fc97680031ac377f5c71379243ae9214da3a83b5`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/fc97680031ac377f5c71379243ae9214da3a83b5) |

### Web

| Branch | SHA |
| --- | --- |
| [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x) | [`9c618c3b04c272a34bceba62bba4c7a7627cf96d`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/9c618c3b04c272a34bceba62bba4c7a7627cf96d) |
| [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | [`9962e7ea171a2bf6d7a12be50874fa5c7ee77e21`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/9962e7ea171a2bf6d7a12be50874fa5c7ee77e21) |
| [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | [`e12b5f8927830ab35f0243039a23bbf70e4a9cf3`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/e12b5f8927830ab35f0243039a23bbf70e4a9cf3) |
| [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`35ee9fa31c4b1c987e79c62cdfce93c270d30dc9`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/35ee9fa31c4b1c987e79c62cdfce93c270d30dc9) |
| [`feature/email-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/email-notifications) | [`20d1f380c20fa6f6601eea1db6814a77401f391c`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/20d1f380c20fa6f6601eea1db6814a77401f391c) |
| [`feature/mobile-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/mobile-notifications) | [`20d1f380c20fa6f6601eea1db6814a77401f391c`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/20d1f380c20fa6f6601eea1db6814a77401f391c) |
| `integration/11.0.x-all-features-20260824` | [`231a8127d530ceec07f01a6e4d15e30a914bd167`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/231a8127d530ceec07f01a6e4d15e30a914bd167) — remote branch deleted after merge |

### Deploy and guide, including later closure refresh

| Repository / branch | SHA or state |
| --- | --- |
| Deploy [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x) | [`5351009df475c4a3d4f788110b0197ce64b3d3f4`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/5351009df475c4a3d4f788110b0197ce64b3d3f4) |
| Deploy [`fix/production-ready-compose-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/production-ready-compose-20260824) | [`a9f468285c0fcc6bcde83f9902897b9df5604b1b`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/a9f468285c0fcc6bcde83f9902897b9df5604b1b) |
| Deploy `integration/deploy-all-features-foundation-20260824` | Remote branch deleted after merge; immutable historical commit [`7410f196`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb). |
| Deploy historical prior lock | Gitlinks introduced at [`c4c0d9a5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4c0d9a5fc37b9346206ed2963fbfa3684c2a696) pin API `75d7337f` / Web `832d5e47`; [`32c7abbf`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/32c7abbf5551d172970c31acea9522ec4da29b08) records that pair as prior candidates. Historical provenance only. |
| Deploy composed-evidence lock [`4851fc1b`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/4851fc1b0ac64f9eabdd7a6c057e417b644d42cd) | Pins API `6c74dbbc` / Web `5255c271`; this is the exact lock used for fresh-clone, Compose-contract and running-stack acceptance. |
| Deploy merged final lock [`ad463dc8`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ad463dc8b1b8005f0774819fe4d506da3c281947) | Pins API `6c74dbbc` / Web `16c22c99`; [PR #26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) merged into `11.0.x` as [`6c61802e`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/6c61802e). Exact-source Compose render and contract pass. The earlier running-stack pass remains attached to its predecessor; a separately labelled clean merged-tuple CPD and notification-verifier follow-up now also passes. No release approval. |
| Guide historical evidence branch | [`c07f60f29c05364e1d643047456033c1bfae2b0d`](https://github.com/ontrack-features-t2-2026/github-guide/commit/c07f60f29c05364e1d643047456033c1bfae2b0d). |
| Guide closure branch [`docs/closure-tutorial-mvp-deploy-20260827`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/closure-tutorial-mvp-deploy-20260827) | Publication [PR #2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) targets `main` and carries this evidence refresh. |

In both API and Web, the specialised email and mobile branch heads are
ancestors of the current unified `feature/notifications` head. The unified
branch is therefore the cross-channel integration input; the specialised
branches remain useful history but must not be mistaken for the latest complete
notification stack.

## Historical published integration candidates

These clean candidates were assembled after the remote snapshot and published
for review. Publication makes them reproducible; it is not merge or release
approval.

| Repository | Validation branch | SHA | Evidence state |
| --- | --- | --- | --- |
| API | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/ontrack-mvp-validation-20260826) | [`75d7337f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/75d7337fd0dd04f9b3a985f287e40f3ec6a467a0) | Frozen 26 August composition. Diff/ancestry and Zeitwerk checks passed; fresh task-prioritisation passed 17 runs/80 assertions; PPI core/preference 103 runs/5,608 assertions; email 77 runs/428 assertions; push 72 runs/295 assertions. Full suite was not run, and the 27 August release/feature heads are not automatically covered. |
| Web | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/ontrack-mvp-validation-20260826) | [`832d5e47`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/832d5e47eb26ff2e21ce25e576daa13b3054cc3e) | Frozen 26 August composition. The parent passed diff/ancestry and type-check; final candidate lint passed. Focused CPD passes 55 tests with one todo, PPI passes 93, and notifications/push passes 148. Both production-build attempts on the parent were OS-killed; the build is not green, the full suite was not run, and later branch movement is not automatically covered. |
| Deploy | Historical prior-candidate commits | [`32c7abbf`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/32c7abbf5551d172970c31acea9522ec4da29b08) | Gitlinks introduced at [`c4c0d9a5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4c0d9a5fc37b9346206ed2963fbfa3684c2a696) pin API `75d7337f` plus Web `832d5e47`; `32c7abbf` labels that exact pair as prior candidates. Historical provenance only. |

## Published composed candidates and merged closure revisions — 2026-08-27

These are the exact composed **validation** revisions and the later merged
closure revisions. API, Web and Deploy closure PRs are merged into `11.0.x`;
Guide PR #2 is the publication PR to `main`. A result is attached only to the exact
revision tested, and no release approval is inferred. See the
[final closure validation record](live-closure-validation-20260827.md).

| Repository | Published branch | Exact SHA | Current evidence state |
| --- | --- | --- | --- |
| Web composed candidate | [`closure/web-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/closure/web-ontrack-mvp-20260827) | [`5255c271778643cd6f972e3bce1d83ecdb2e292d`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/5255c271778643cd6f972e3bce1d83ecdb2e292d) | Type-check and zero-warning lint pass. CPD: 8 files/98 passed/one todo. PPI: 9 files/109 passed. Notifications/push/profile: 11 files/177 passed. Full suite: 103 files/605 passed/one todo. Node 22 optimised production build: pass in 99.911 seconds. This is the Web revision used in the exact running stack and scanned image. |
| Web merged closure head | `closure/web-ontrack-mvp-20260827` | [`16c22c992c821e16981c8f8cb2601f0a61f73007`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/16c22c992c821e16981c8f8cb2601f0a61f73007) | [PR #105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) merged to `11.0.x` as [`4034e7d1`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/4034e7d1). Hosted validation is green: 104 files/607 tests. Exact-head focused validation also passes: layout 4 tests, CPD 98/one todo, PPI 109 and Notifications 177; formatting and conflict checks pass. PPI-Q02's focused fixture/state subset passes 3 files/40 tests in 3.31s. The exact head was rebuilt and scanned at OCI index digest `sha256:35aef683…`; the [pack](../../../evidence/raw/docker-image-vulnerability-scan-20260827/web-16c22c9/) reports 33 Critical/395 High and is not production-safe. The composed browser observations at `5255c271` remain attached to that predecessor. |
| API merged closure head | [`closure/api-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/closure/api-ontrack-mvp-20260827) | [`6c74dbbc07e219d60ca49e1b5ea42f737e5ef225`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/6c74dbbc07e219d60ca49e1b5ea42f737e5ef225) | Retains the parent `d920892` previous/all CPD result: 453 to 38 SQL queries and 4.218 to 2.390 seconds. Hosted [PR #77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77) validation is green across all eight helper-backed shards and the exact-union rollup; the slowest test step was 5:25, 25 seconds over target. PR #77 merged to `11.0.x` as [`6b45974e`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/6b45974e). |
| Deploy composed lock | `chore/ontrack-mvp-lock-20260827` | [`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/4851fc1b0ac64f9eabdd7a6c057e417b644d42cd) | Pins API `6c74dbbc` / Web `5255c271`. Fresh recursive clone, Compose render/contract and exact running-stack acceptance passed at this lock. |
| Deploy merged closure lock | `chore/ontrack-mvp-lock-20260827` | [`ad463dc8b1b8005f0774819fe4d506da3c281947`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ad463dc8b1b8005f0774819fe4d506da3c281947) | Pins API `6c74dbbc` / Web `16c22c99`; [PR #26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) merged to `11.0.x` as [`6c61802e`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/6c61802e). Exact-source Compose render and `compose_contract_test.py` pass. The earlier running-stack pass is not promoted to this lock. |
| Clean merged-stack follow-up | Merged tuple plus synthetic fixtures | API `6c74dbbc`; Web `16c22c99`; Deploy `ad463dc8` | Web was restored clean before cache-free assertions. With local Demo mode enabled, live CPD exposes the three synthetic units and task counts 37/15/5. Deploy #27's verifier patch was run separately against the tuple; it was not substituted as a runtime source revision. See the [follow-up record](follow-up-validation-20260828.md). |
| API sharding follow-up | Open [#81](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/81) | [`380d15bc19e5ae99a8a28f6af3d9a4370e79d5d2`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/380d15bc19e5ae99a8a28f6af3d9a4370e79d5d2) | Twelve shards and exact-union aggregate pass twice. Confirmation maximum shard wall time is 7:22 versus 9:19; maximum test-step time is 3:48 versus 5:28. Technical checks pass; protected review remains pending. This open head is not the merged runtime API. |
| Web security follow-up | Open [#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111) | [`b37b75a0051b9596a939830368a15804046080c6`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/b37b75a0051b9596a939830368a15804046080c6) | Development High/Critical findings fall 428→30; the exact `deploy.Dockerfile` release-image scan reports zero detected findings at OCI index `sha256:d2b50b6e…`. Technical checks pass; protected review and security/release decisions remain. This open candidate does not rewrite the merged-Web scan. |
| Guide closure head | [`docs/closure-tutorial-mvp-deploy-20260827`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/closure-tutorial-mvp-deploy-20260827) | This evidence refresh | [PR #2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) publishes it to `main`. |

The Web validation pack records Node `v22.22.3`, npm `10.9.8`, and logs named
`typecheck-final.log`, `lint-final.log`, `cpd-focused-tests-final.log`,
`ppi-focused-tests.log`, `notifications-focused-tests.log`,
`full-test-suite.log` and `production-build-unsandboxed.log`. The successful
build ran outside the macOS sandbox because that sandbox blocked the Angular
persistent compiler cache's System V IPC; the successful source/build result is
the unsandboxed transcript, not either retained sandbox failure.

The API local unsharded run completed **1,145 runs, 16,245 assertions and zero
skips in 2,785.068 seconds**, but it is **not a suite pass**. All 26 non-green
tests were classified: 22 exercise Docker-backed PDF, portfolio, JPlag or TII
helpers without an accessible `/var/run/docker.sock`; two inspect
`.github/workflows` paths absent from the standalone image mount; and two were
stale notification assertions fixed by the final `c95f553` and `6c74dbbc`
test-only commits. Their focused regressions pass, but the complete unsharded
run was not repeated at `6c74dbbc`. The authoritative hosted run attached to
API PR #77 is green across all eight helper-backed shards and the stable
exact-union/duplicate rollup; RuboCop, CodeQL, API/worker images, TeX helper and
JPlag helper checks also pass, and PR #77 is merged. Its eight test steps were
4:31, 4:58, 5:25, 4:40, 2:50, 2:31, 3:19 and 3:39. Open API #81 at `380d15bc`
expands the same exact-union design to 12 shards and passed twice in hosted run
33078552910. Its confirmation maximum shard wall time was 7:22 versus the
8-shard 9:19 baseline, and maximum test-step time was 3:48 versus 5:28.
Repeated image, service and database setup now dominates, so the open change
does not consistently meet a five-minute total wall-time ceiling. It remains
subject to protected review and is not silently promoted into the merged API
revision.

The current local evidence packs are retained at:

- API hosted/local/sharding summary:
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/api/API-CLOSURE-VALIDATION-SUMMARY.md`;
- API test logs and shard manifests:
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/api/test-logs/`
  and
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/api/sharding/`;
- exact-stack validation:
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/live/README.md`,
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/live/browser-acceptance.md`
  and
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/live/live-validation.json`;
- Deploy final-lock verification:
  `/Users/ryan/Downloads/test-codex/outputs/ontrack-mvp-closure-20260827/deploy/final-lock-verification.txt`.

These absolute local paths are handover references, not GitHub links. Publish
only privacy-safe artifacts selected for long-term evidence.

The exact composed-candidate Web development image at
`sha256:ae5a90c845bbfec38e2dc1f84c5447fe4b301c189ea9c7f19d910c6b2c7bf23c`
was scanned with Trivy `0.74.0`: 33 Critical/395 High/1,592 Medium/1,197
Low/163 Unknown instances. All 16 language findings are bundled npm
dependencies in the inherited Node image; the project `npm ci` layer produced
no Trivy result and `npm audit` reported zero. The exact merged Web head
`16c22c99` was then rebuilt and scanned at OCI index digest
`sha256:35aef683f7b52ae761bb679e7a7efb55e1b3a7149ab8851a7164ff3596fa0ac2`,
ARM64 manifest
`sha256:1b634aceb505d078a3a13e98ecdae1ca2687a7ee56433b9730dc54c6608f592f`
and config
`sha256:51bce86ae9fde71c213a326e81b4e15148b6c2ba666e2278bfb41810d5e5e68a`.
Its 3,380 instances/2,110 unique IDs have the same severity totals and stable
vulnerability-tuple hash as the predecessor, including 1 fixable Critical and
8 fixable High instances. The
[exact merged-Web pack and checksum manifest](../../../evidence/raw/docker-image-vulnerability-scan-20260827/web-16c22c9/)
are published. This closes the exact-digest evidence gap, not the release risk.
The exact final API `6c74dbbc` development image was scanned
at local OCI index/tag digest
`sha256:f938fef1889985574c3dd22290ea41db3df7431474710ac3c125fe62ccdbb312`
and Linux/ARM64 manifest
`sha256:d351d2c79a55eac1f59024c67709124702b6451c35d2efab340e6699bb0fddc5`.
Trivy `0.74.0` reported 4,072 instances across 2,312 unique IDs: 35 Critical,
579 High, 1,843 Medium, 1,368 Low and 247 Unknown. It reports 49 fixable High
instances across 12 unique IDs, no fixable Critical instance, and 63 fixable
instances overall. The image runs as root and includes Docker, Redis, build
tools, source and development/test gems; it is not production-safe. The
[selected compact raw API pack and checksum manifest](../../../evidence/raw/docker-image-vulnerability-scan-20260827/api-6c74dbb/)
are published. Neither development-image scan is remediation, risk acceptance
or release approval; both images are not production-safe as scanned.

Open Web [#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111)
at `b37b75a0` is a separate remediation candidate. Its development scan reduces
High/Critical instances from 428 to 30 (4 Critical/26 High), with no fixable
High/Critical instance remaining. Its actual hardened `deploy.Dockerfile`
release image reports zero detected findings at OCI index digest
`sha256:d2b50b6edca157df5543f0975203ce5226198ad3db00083a9bbe7c4e4c95c99f`.
All hosted technical checks pass, but the PR remains open and review-required.
The release-image result is a digest- and database-bound point-in-time scan,
not an unconditional production-safety claim or a waiver of provenance,
configuration, application-security, deployment and release gates. See the
[28 August follow-up](follow-up-validation-20260828.md).

Reference integration order:

1. published integration foundation;
2. current `11.0.x`;
3. `feature/cross-unit`;
4. `feature/peer-progress-indicator`;
5. `feature/notifications`;
6. approved/superseded disposition for every open follow-up PR;
7. API/Web validation;
8. update Deploy gitlinks and manifest;
9. composed-stack and manual acceptance;
10. publish immutable release refs only after all gates pass.

Do not merge the older `feature/email-notifications` and
`feature/mobile-notifications` heads again after the unified notifications
branch: they are already ancestors at this snapshot.

### Historical exact validation update — through 2026-08-26T11:59:56Z

- Web parent `c48ffb228b59931d6b28ff9a25c711485fd63cc4`:
  `npm run typecheck` passed and `npm run lint` passed with
  `--max-warnings 0`.
- At base Web SHA `c48ffb228b59931d6b28ff9a25c711485fd63cc4`, the focused CPD
  command did not reach assertions. Angular compilation failed with `TS2554`
  at `project-dashboard.component.spec.ts` lines 52, 98 and 154. Each direct
  `ProjectDashboardComponent` construction was stale: it omitted the new
  `TaskService` argument, leaving the final `BreakpointObserver` argument
  unsatisfied.
- Commit `832d5e47eb26ff2e21ce25e576daa13b3054cc3e` adds the test-only
  `TaskService` import and mock argument to those three constructions. Running
  the exact focused command with identical patched source passed **2 files, 55
  tests, one todo (56 total), exit 0**. Missing `html5-qrcode`
  sourcemap-source warnings were non-fatal.
- The first Web production build was killed by the operating system during
  esbuild after about nine minutes and emitted a secondary esbuild deadlock.
  A retry with `NG_BUILD_MAX_WORKERS=2` reached main-bundle minification, then
  was also killed with exit code `137`. No TypeScript/source error preceded the
  kill, but the build gate is **resource-blocked/failed and not green**.
- API `75d7337fd0dd04f9b3a985f287e40f3ec6a467a0`: the first focused CPD
  attempt reported 17 setup errors and zero assertions because the disposable
  test database had not been populated and `Unit.last` was `nil`. This is an
  environment/setup result, not a product pass or failure. A minimal disposable
  database was then created with the required roles, statuses, global outcome
  and baseline unit. The clean retry
  `bundle exec rails test test/api/task_prioritization_api_test.rb` passed:
  **17 runs, 80 assertions, zero failures/errors/skips**, seed `14057`.
- API PPI core command:

  ```bash
  bundle exec rails test \
    test/api/peer_progress_api_test.rb \
    test/models/peer_progress_snapshot_test.rb \
    test/services/peer_progress_aggregation_service_test.rb \
    test/services/peer_progress_distribution_policy_test.rb \
    test/services/peer_progress_viewer_policy_test.rb \
    test/sidekiq/aggregate_peer_progress_job_test.rb
  ```

  passed **102 runs, 5,602 assertions, zero failures/errors/skips**, seed
  `18390`. The separate preference check
  `bundle exec rails test test/api/users_test.rb:340` passed **1 run, 6
  assertions, zero failures/errors/skips**, seed `41733`, after a disposable
  second-student fixture was added to the minimal test database. Combined
  authoritative PPI result: **103 runs, 5,608 assertions, green**.
- Web PPI focused validation used the seven fixture/model/service/unit-summary/
  task-widget spec files named in the rerun commands below. On source identical
  to committed candidate `832d5e47eb26ff2e21ce25e576daa13b3054cc3e`,
  it passed **7 files and 93 tests, exit 0**.
- Web notification/push focused validation used seven route/service/push/bell/
  settings/page spec files. On source identical to committed candidate
  `832d5e47eb26ff2e21ce25e576daa13b3054cc3e`, it passed **7 files and
  148 tests, exit 0**.
- API focused email-notification validation used:

  ```bash
  bundle exec rails test \
    test/api/notifications_api_test.rb \
    test/models/notification_test.rb \
    test/models/notification_task_comment_test.rb \
    test/models/notification_task_status_test.rb \
    test/models/notification_extension_test.rb \
    test/services/notification_service_test.rb \
    test/mailers/notifications_mailer_test.rb \
    test/sidekiq/notification_email_job_test.rb
  ```

  It passed **77 runs, 428 assertions, zero failures/errors/skips**, seed
  `42632`.
- API focused push validation used:

  ```bash
  bundle exec rails test \
    test/api/push_subscriptions_api_test.rb \
    test/models/push_subscription_test.rb \
    test/services/push_notification_service_test.rb \
    test/sidekiq/push_notification_delivery_job_test.rb
  ```

  It passed **72 runs, 295 assertions, zero failures/errors/skips**, seed
  `29751`.
- API `bundle exec rails zeitwerk:check` passed with `All is good!`.
- At this 26 August snapshot, no full API or Web suite pass was claimed. The
  27 August final-candidate section supersedes that Web limitation only.

### Historical exact-SHA image scan — 2026-08-26

Trivy `0.74.0` scanned local ARM64 Debian `12.15` development images built from
the exact API/Web candidates. Counts below are vulnerability instances; the
same vulnerability ID can occur in more than one package or layer.

| Image source | Image ID | Instances / unique IDs | Severity instances | Fixable instances | Package class |
| --- | --- | ---: | --- | ---: | --- |
| API `75d7337fd0dd04f9b3a985f287e40f3ec6a467a0` | `sha256:7e8adf5eb97e7a1a266124b5d53a5398285c4be0e279630b9616f8936ecb232a` | 3,994 / 2,249 | 35 critical; 577 high; 1,839 medium; 1,368 low; 175 unknown | 63 | 3,921 OS; 73 language |
| Web `832d5e47eb26ff2e21ce25e576daa13b3054cc3e` | `sha256:70afe3981246213d7ebfaa8d1ddb8d4949f80f49b580884554fcf4320f4fe436` | 3,302 / 2,047 | 33 critical; 394 high; 1,589 medium; 1,197 low; 89 unknown | 16 | 3,286 OS; 16 language |

This is historical exact-SHA scan evidence, **not a clean bill of health** and not an
automatic statement that every scanner match is exploitable in production.
The release needs a package/path/reachability review, remediation or a named,
expiring risk acceptance for every applicable critical/high finding, followed
by rebuilt-image scans.

Material observations:

- The API language results include scanner finding `CVE-2026-33306` for
  `bcrypt` `3.1.20` (high; scanner fixed version `>= 3.1.22`). Applicability and
  upgrade compatibility must be reviewed rather than silently waived.
- All 16 Web language instances are under the base image's bundled npm path
  `/usr/local/lib/node_modules/npm/...`; the project-level `npm ci` reported
  zero vulnerabilities. The project result does not cancel base-image
  findings.
- Most instances are operating-system/toolchain packages in large development
  images. The receiving platform must scan the final minimal production image
  digests too; these development-image results cannot substitute for that
  release scan.
- Compressed raw JSON/table outputs and checksums are committed under
  `evidence/raw/docker-image-vulnerability-scan-20260826/`, with compact exact
  API and merged-Web packs under the 27 August directory. Final minimal
  runtime-image scans, SBOM/provenance and any risk-acceptance records remain
  separate release evidence.

### Historical browser smoke — 2026-08-26

This was a local synthetic-data smoke, not production acceptance:

- the active-unit CPD dashboard loaded; filter interaction and mobile-width
  rendering passed;
- the previous-unit path is **blocked**: its API request hung, so previous-unit
  loading is not a pass;
- PPI showed only the privacy-safe unavailable state. This proves safe failure
  presentation, not an eligible live distribution or live unit-summary API;
- the notification permission-denied state rendered. Real background Web Push
  remained blocked, so receipt, lock-screen rendering and click-through were
  not proven; and
- browser/OS version, full role matrix and production-like external services
  still need to be recorded with final manual acceptance.

### Final exact-stack acceptance — 2026-08-27

The historical failures above are retained as provenance and are superseded
only for the exact surfaces rerun against API `6c74dbbc` and Web `5255c271`:

- the running stack returned healthy API/Web services and CPD browser
  acceptance passed Active, Previous and All unit scopes, combined global
  search/status filtering, and clear/reset behaviour;
- eligible task-level PPI displayed 60% submitted, 10% complete and its
  privacy-rounded breakdown; the feature-disabled route exposed no percentage,
  distribution or cohort values;
- tutor comment, task-status change, extension-granted and extension-denied
  events flowed through `NotificationService`, Sidekiq and Action Mailer to
  four Mailpit messages for the intended synthetic student. Sensitive markers
  were absent, preference suppression held counts constant, and the bounded
  retry probe was removed with queues/retry/scheduled sets empty; and
- real Chrome site permission and Chrome OS notifications were enabled. A
  browser subscription was created (API count 1), and server push jobs
  succeeded with a safe local route. No OS banner or click-through was
  observed, so background receipt/click did not pass. Sign-out removed the
  subscription and restored the API count to zero.

This predecessor exact-stack pass alone did not fill `CPD-Q05`/`CPD-D02`, the
live unit-summary API, production SMTP or production-device push evidence
gaps. The later [clean merged-stack follow-up](follow-up-validation-20260828.md)
and [CPD-Q05 as-built record](cpd-q05-wireframe-usability-validation-20260828.md)
close the CPD live-data and Q05 evidence gaps without inventing participant
feedback; CPD-D02 Web #108 remains protected-review pending. PPI-Q02 is closed
separately within its approved mock-backed boundary by the [validation and
handover](ppi-q02-validation-handover-20260827.md); it does not claim a live
unit API. The feedback gate is closed by the [88/88 de-identified traceability
table](feedback-traceability-20260827.md).

## Pull-request disposition refresh — 2026-08-27

The previously named candidate/release and follow-up pull requests have a live
disposition: API #43, #56, #57, #60, #62, #63, #65 and #74; Web #59, #60,
#61, #69, #70, #71, #77, #78, #81 and #96; and Deploy #11, #12, #18, #24
and #25 were merged. This closes the prior PR-disposition question but does not
promote tests from candidates `75d7337f`/`832d5e47` to the later merge heads.

Current closure PRs plus the earlier open review items returned by the audit
are:

| Repository | Open item | State / relevance |
| --- | --- | --- |
| API | [#77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77) | Merged exact head `6c74dbbc` into `11.0.x` as `6b45974e`; eight hosted shards, rollup and all other checks are green. |
| API | [#72](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/72) | Changes requested; Safe Upload security work, outside the four-MVP candidate but on a shared API surface. |
| API | [#79](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/79) | Open, mergeable and technically green at `17538ce3`; protected review pending. Notification documentation correction only. |
| API | [#80](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/80) | Open, mergeable and technically green at `42d4ebaf`; protected review pending. FILE-S01 test/security evidence. |
| API | [#81](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/81) | Open, mergeable and technically green at `380d15bc`; protected review pending. Twelve shards and exact-union aggregate pass twice; confirmation maximum shard 7:22 and test step 3:48. |
| Web | [#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) | Merged updated green head `16c22c99` into `11.0.x` as `4034e7d1`; 104 files/607 tests pass. Exact-stack acceptance remains attached to predecessor `5255c271`. |
| Web | [#72](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/72) | Merged and approved; CPD sizing/documentation. |
| Web | [#103](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/103) | Closed without merge while changes-requested; the final CPD live result does not depend on this proposed reusable-card work. |
| Web | [#104](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/104) | Approved and merged after the requested fixes; shared layout standardisation. |
| Web | [#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108) | Open, mergeable and technically green at `6136d540`; protected review pending. Publishes CPD-D02 user/contributor handover documentation. |
| Web | [#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111) | Open, mergeable and technically green at `b37b75a0`; protected review pending. Development High/Critical findings fall 428→30 and the exact release-image scan reports zero detected findings, without unconditional safety or release approval. |
| Guide | [#1](https://github.com/ontrack-features-t2-2026/github-guide/pull/1) | Review required; documentation CI policy. |
| Guide | [#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) | Publication PR to `main`; publishes tutorial/setup/coordination/MVP evidence. |
| Deploy | [#26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) | Merged lock `ad463dc8`, pinning API `6c74dbbc` / Web `16c22c99`, into `11.0.x` as `6c61802e`. Exact-stack acceptance remains attached to predecessor lock `4851fc1`. |
| Deploy | [#27](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/27) | Open, mergeable and technically green at `37a90d7f`; protected review pending. Its authenticated-settings and asynchronous-Mailpit verifier passes against the exact merged tuple. |

API #77, Web #105 and Deploy #26 are merged; Guide #2 is the closure
publication PR. The receiving owner must retain the exact-SHA
boundary between composed and later merged evidence. Ancestry alone neither
proves feature absence nor acceptance of an equivalent patch.

## Historical evidence retained, not promoted

The audited [all-features integration
record](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb/ALL-FEATURES-INTEGRATION.md)
and [release handover
checklist](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb/HANDOVER.md)
record the following historical results:

- API at
  [`2f945c71203a47f8777ad158966a2cdff765109a`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/2f945c71203a47f8777ad158966a2cdff765109a):
  1,038 runs, 12,976 assertions, zero failures/errors/skips in a complete
  service-backed suite; focused CPD, PPI and notification packs were also
  green.
- Web at
  [`36be84f30d80c237e97a0f15b607ec0b1b3a4b57`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/36be84f30d80c237e97a0f15b607ec0b1b3a4b57):
  459 tests passed across 87 files, one existing todo, plus green lint,
  type-check and Node 22 production build.
- The historical Compose smoke brought up API, Web, MariaDB, Redis, Sidekiq
  and Mailpit. An end-to-end synthetic notification queued through Sidekiq and
  arrived in Mailpit.
- Push tables, configuration and service-worker assets were present, but the
  audited browser had notification permission blocked. **No real background
  Web Push receipt is claimed.**

Those exact commits are older than the current remote feature heads and the
published final candidates. These results establish implementation history, not current
release acceptance.

Some detailed guides are reachable only from the published integration
revisions, not from the current mutable feature heads. Links below therefore use
immutable integration commits. Review their diffs against the accepted release
candidate before treating their commands or contracts as current.

## `MN-MVP01` — Mobile Notifications

### Implemented evidence

- Unified notification architecture and operating notes from the published
  integration evidence revision:
  [API `NOTIFICATIONS.md`](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/NOTIFICATIONS.md).
- Push configuration and secret boundary:
  [push setup](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/push-setup.md).
- Opt-in, permission and denial flow:
  [permission-flow guide](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/push-opt-in-permission-flow.md).
- Lock-screen wording and risk review:
  [risk review](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/reviews/v2-push-lock-screen-risk.md)
  and [safe wording](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/reviews/v2-push-lock-screen-wording.md).
- Web PWA install/update and subscription-change work is merged into the
  current `feature/notifications` head. See Web PRs
  [#69](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/69),
  [#70](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/70) and
  [#71](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/71).

### Evidence status and gaps

- Automated service, payload, subscription and permission-state tests exist.
- Composed Web `5255c271` notification/push/profile coverage is green: 11 files,
  177 tests, exit 0; the 103-file full Web suite also passes. Updated merged
  Web head `16c22c99` passes 607 tests/104 files, but the real browser push
  attempt below remains attached to composed Web `5255c271`.
- API push coverage at historical candidate `75d7337f` remains useful focused
  provenance: 72 runs, 295 assertions, zero failures/errors/skips. Exact final
  API `6c74dbbc` now passes its authoritative hosted eight-shard suite and
  exact-union rollup.
- The historical environment proved configuration and service-worker
  prerequisites only.
- Final browser acceptance enabled real Chrome site permission and the Chrome
  OS-notification setting, created one API-side subscription and ran successful
  push jobs carrying a safe local route. No OS banner or click-through was
  observed, so background receipt/click is not a pass. Sign-out removed the
  subscription and restored its count from one to zero.
- API PR [#74](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/74)
  was merged after the historical focused run; neither merge status nor
  inclusion in a later candidate promotes that old result.
- Browser/OS support acceptance, HTTPS, permission policy, VAPID ownership and
  vendor endpoint access are receiving-environment gates.

### Privacy and security boundary

- Keep the VAPID private key in the approved secret manager; never put it in a
  ticket, screenshot, log or this repository.
- Lock-screen text must use minimum necessary information and must not reveal
  grades, feedback, extensions or student identity.
- Subscription endpoints are user-scoped and dead/expired subscriptions must
  be removed.
- A service-worker asset returning HTTP 200 is not evidence that an operating
  system notification was delivered.

### Next owner and action

Client support plus the privacy/data owner: repeat real HTTPS background-push
acceptance on every promised browser/device
combination until an OS/browser notification and safe click-through are
observable. Retain the proven subscription/sign-out cleanup and record
browser/OS versions, receipt, safe lock-screen text and expired-subscription
cleanup without recording private keys or student data.

## `EN-MVP01` — Email Notifications

### Implemented evidence

- Per-event documentation is indexed in the [notification event
  catalogue](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/events/README.md).
- The [existing-email
  audit](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/notifications/existing-emails.md)
  and [first-pass test
  notes](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/email-notification-first-pass-tests.md)
  are available.
- Historical end-to-end evidence proves one synthetic notification reached
  Mailpit through Sidekiq and left no email job in retry/dead sets.

### Evidence status and gaps

- Do not convert the existence of per-event files into a claim that every
  production sender/bounce/provider case has been run on the current head.
- Composed Web `5255c271` notification coverage is green: 11 files, 177 tests,
  exit 0; its full suite passes 605 tests with one todo. Updated merged Web
  head `16c22c99` passes 607 tests/104 files. API email coverage is
  green only at historical `75d7337f`: 77 runs, 428 assertions, zero
  failures/errors/skips. Exact final API `6c74dbbc` passes its authoritative
  hosted eight-shard suite and rollup.
- On the exact final running stack, four real MVP model events — tutor comment,
  task-status change, extension granted and extension denied — traversed
  `NotificationService`, Sidekiq's `mailers` queue, Action Mailer and Mailpit.
  All four went only to the intended synthetic student and used safe internal
  routes. Sensitive comment/status/extension-request markers were absent from
  bodies; preference suppression held notification and Mailpit counts
  constant; the retry boundary was exercised and cleaned with final
  queues/retry/scheduled sets empty.
- This is a current MVP email-path pass and handover result, not production
  SMTP sender-policy, bounce-monitoring or provider acceptance. The separate
  product-feedback gate is covered by the
  [88/88 de-identified traceability table](feedback-traceability-20260827.md).
- The previously open queued-delivery, group-link, test-isolation and
  task-availability pull requests (#43, #56, #57 and #65) were merged after
  the historical API run; exact final API `6c74dbbc` now has green hosted
  validation.
- Production SMTP sender policy, bounce/failure monitoring and duplicate-on-
  retry acceptance belong to the receiving institution.

### Privacy and security boundary

- Resolve recipients on the server from authorised relationships; never trust
  a client-supplied recipient.
- Respect category preferences and suppress delivery when the relevant
  preference is off.
- Email text and links must not expose another user's task, group, feedback or
  extension details.
- Mailpit is a local catcher. A Mailpit pass is not production SMTP acceptance.

### Next owner and action

Messaging owner plus notification feature lead: retain the current four-event,
recipient, privacy, preference and retry
evidence as the MVP handover. The receiving institution still owns production
SMTP sender policy, provider delivery/bounce monitoring and duplicate-on-retry
acceptance; Mailpit is not proof of those external surfaces.

## `CPD-MVP01` — Cross-Project Dashboard

### Implemented evidence

- Data-source and ownership map:
  [CPD map](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/cpd-data-source-map.md).
- Responsive sizing investigation:
  [report](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/cpd-sizing-investigation.md).
- Privacy-safe evidence guidance:
  [screenshot checklist](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/CPD-Q06-privacy-safe-screenshot-checklist.md).
- [CPD-Q05 as-built wireframe and usability/accessibility
  validation](cpd-q05-wireframe-usability-validation-20260828.md), tied to the
  exact merged source, 54/54 focused component run and synthetic live result;
  it does not invent participant feedback.
- The current API `feature/cross-unit` head includes the task-definition
  privacy repair and recommendation work. The current Web head includes the
  dashboard toolbar and later contrast/lint work.

### Evidence status and gaps

- Historical evidence records 46 focused Web CPD tests and the API privacy
  regression as green at older commits.
- Composed Web `5255c271` lint and type-check pass; CPD/shared coverage passes 98
  tests with one todo, the full suite passes 605 tests with one todo, and the
  Node 22 production build passes in 99.911 seconds. Updated merged Web head
  `16c22c99` passes 607 tests/104 files; the composed browser evidence below
  remains attached to `5255c271`.
- Final API `6c74dbbc` retains the previous/all query repair measured at parent
  `d9208922948fc49674dfacc9aab15b75057a8c81`: 453 to 38 SQL queries and 4.218
  to 2.390 seconds. The focused
  regression passes one run/six assertions, and the exact final SHA passes the
  authoritative hosted eight-shard suite and rollup.
- Historical browser smoke passed active-unit loading, filters and mobile-width
  rendering, but its previous-unit API request hung. Exact-stack browser
  acceptance now passes Active, Previous and All unit scopes, combined global
  search/status filtering, and clear/reset behaviour at API `6c74dbbc` / Web
  `5255c271`.
- Final clean validation against API `6c74dbbc`, Web `16c22c99` and Deploy lock
  `ad463dc8` closes the later live-data boundary: enabling local Demo mode
  exposes `COS10001`, `COS20007` and `COS30046` with task counts 37/15/5,
  `COS30243` in Previous scope, All scope and global search. The initial
  one-unit view was the intentional `DemoDataMaskInterceptor` quiet baseline;
  no CPD code fix was needed.
- `CPD-Q05` now has an auditable as-built text wireframe and
  usability/accessibility record. The owner waiver applies to the inactive-peer
  opinion gate only; no participant endorsement is claimed. `CPD-D02` Web
  [#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108)
  is technically green at `6136d540` but remains open and protected-review
  required.
- Web #59, #60, #61 and #72 were merged. Web #103 was closed without merge
  while changes-requested; the final live result does not depend on that
  proposed reusable-card change.
- Recommended-order behaviour at the current API/Web heads must be tested
  together; older records describing placeholder ordering must not be used as
  proof of the newer implementation.

### Privacy and security boundary

- The API may return only units, projects, task definitions and recommendation
  inputs the current user is authorised to see.
- Screenshots and fixtures must be synthetic or de-identified; do not expose
  names, student IDs, submissions, feedback or grades.
- Student-only routing is not a substitute for server-side authorisation.

### Next owner and action

CPD feature lead plus product owner: retain the exact merged-stack
Active/Previous/All/search result and the CPD-Q05 as-built record. Obtain the
normal protected review for Web #108 before publishing CPD-D02; the requester
waiver does not replace that review. Future validation should extend the
privacy-safe role matrix to sorting, recommendations, empty/error states and
cross-unit authorisation and may add independent participant or assistive-
technology research without rewriting this factual record.

## `PPI-MVP01` — Peer Progress Indicator

### Implemented evidence

- API contract, viewer policy and privacy semantics:
  [peer-progress API](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/peer-progress-api.md).
- Data ownership and source map:
  [PPI data-source map](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/peer-progress/data-source-map.md).
- Exact merged Web head `16c22c99` includes merged PR
  [#31](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/31)
  (typed state/mock foundation),
  [#32](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/32)
  (help/privacy copy),
  [#38](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/38)
  (responsive unit-summary component and handover), and
  [#39](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/39)
  (de-identified design decisions).
- The exact-head
  [PPI-F02 handover](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/docs/ppi-f02-unit-summary-handover.md)
  explicitly preserves the mock-backed boundary and production gate.
- The task-level service calls the authorised
  `/projects/:project_id/task_def_id/:id/peer_progress` endpoint.
- The [PPI-Q02 validation and handover](ppi-q02-validation-handover-20260827.md)
  maps the supplied Planner criteria to the exact merged head.

### Evidence status and gaps

- API endpoint/model/service/job and preference coverage is green only at
  historical `75d7337f`: 103 runs, 5,608 assertions, zero
  failures/errors/skips. Exact final API `6c74dbbc` passes the authoritative
  hosted eight-shard suite and is merged through API PR #77.
- Composed Web `5255c271` focused PPI coverage passes nine files/109 tests; its
  103-file full suite also passes. Updated Web closure head `16c22c99` passes
  607 tests/104 files and is merged through Web PR #105. Its focused PPI matrix
  passes 109 tests; the PPI-Q02 fixture/state subset passes 3 files/40 tests in
  3.31 seconds.
- Exact-composed-pair browser acceptance rendered eligible task-level values:
  60% submitted, 10% complete and an independently privacy-rounded breakdown.
  The feature-disabled route exposed no percentages, distribution or cohort
  values; user-disabled API behaviour also returned null metrics/distribution.
- PPI-Q02 validates normal, genuine zero, suppressed, unavailable, disabled and
  stale state mapping, separate student/anonymous labels, privacy suppression,
  non-colour meaning, desktop/narrow layout and production mock gating.
- The supplied Planner export records PPI-Q02 completed with 10/10 checklist
  items. PPI-MVP01 expressly accepts safe mock/pre-calculated unit data and
  places a live unit-level API outside the MVP.
- Task-level live behaviour is not generalised to a live unit-summary or
  burndown API. The unit summary remains an explicit development-only mock
  proof of concept; no live unit API is claimed.
- Web PR [#77](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/77)
  was merged after the frozen candidate; equivalent/newer task-level code is in
  composed Web `5255c271` and covered by its focused/full passes. Later merged
  Web `16c22c99` is covered by its green 607-test hosted run.

### Privacy and security boundary

- Enforce the cohort threshold and staleness policy on the server and fail
  closed when either is not satisfied.
- Do not expose identities, cohort size, raw counts or values that allow a
  reader to reconstruct a single peer's progress.
- Apply viewer/project/unit authorisation before aggregation and presentation.
- Demo fixtures must be visibly labelled and must never be treated as
  production evidence.

### Handover decision and next owner

**Validated / handed over.** PPI-Q02 and PPI-MVP01 meet the supplied Planner
boundary at exact merged Web head `16c22c99`. A future PPI backend/frontend
owner may deliver a live unit-summary API through separate authorised tickets;
that endpoint must derive student/project/target-grade context server-side,
enforce cohort suppression, avoid identifiable/raw peer data, and preserve the
current state contract. Do not promote the composed task-level browser result
at Web `5255c271` into a claim of live unit-level delivery.

## `ON-MVP01` — Combined four-stream handover

### Current state

The exact running-stack pass used API `6c74dbbc`, Web `5255c271` and Deploy
lock `4851fc1`. A fresh recursive clone checked out those gitlinks, LTI
`ec0df42` and nested JPlag viewer `4132c30`; Compose render/contract, runtime
readiness, CPD, task-level PPI and four-event email acceptance passed. API PR
#77 subsequently merged the same API head into `11.0.x` as `6b45974e`. Web PR
#105 merged updated green head `16c22c99` as `4034e7d1` (607 tests/104 files),
and Deploy PR #26 merged lock `ad463dc8` as `6c61802e`, pinning API `6c74dbbc`
/ Web `16c22c99`. The predecessor pass remains attached to its exact revisions.
A separate clean, cache-free follow-up against the exact merged tuple now
passes CPD Active/Previous/All and global-search assertions: Demo mode exposes
`COS10001`, `COS20007`, `COS30046` and previous `COS30243`, with active task
counts 37/15/5. Deploy #27's corrected notification verifier separately passes
against the same tuple. No CPD product fix was required.

API #79/#80/#81 are technically green but open for protected review; #81's 12
shards and exact-union aggregate pass twice, with a confirmation maximum test
step of 3:48 and shard wall time of 7:22. Web #111 is also technically green
and open: development High/Critical findings fall 428→30, while the exact
`deploy.Dockerfile` release-image scan reports zero detected findings. That
point-in-time result is not an unconditional security or production approval.
Guide PR #2 publishes the evidence. CPD-Q05, PPI-Q02 and PPI-MVP01 are
validated within their documented boundaries; CPD-D02 Web #108 remains
protected-review pending. No live PPI unit API or release approval is inferred.

### Release blockers

1. Obtain protected review and publish Guide PR #2. API #77, Web #105 and
   Deploy #26 are merged; merge does not create release approval.
2. Obtain protected review for technically green CPD-D02 Web #108. Web #103 is
   closed without merge and the validated runtime does not depend on it.
3. Obtain protected review for open, technically green API #79/#80/#81. #81
   materially improves test execution but repeated setup keeps confirmation
   shard wall time at 7:22, so a consistent five-minute total is not claimed.
4. Retain the successful merged-tuple CPD and corrected Deploy #27 verifier
   results. Obtain protected review for #27 before treating the verifier patch
   as published repository behaviour.
5. Obtain one observable background Web Push receipt and safe click-through on
   a promised browser/device. Subscription creation, server jobs and sign-out
   deletion passed, but receipt/click did not.
6. Retain the CPD-Q05 as-built validation and owner-waiver boundary without
   inventing participant feedback. Publish CPD-D02 through protected Web #108.
   PPI-Q02 is validated; its live unit API is future/out-of-scope. The
   88-response traceability matrix is complete.
7. Obtain protected review and security disposition for Web #111. Its hardened
   release-image digest reports zero detected findings, but this does not waive
   provenance, SBOM/signature, application security, configuration, deployment
   or release gates. The exact merged API development image still has unresolved
   Critical/High findings and requires its own accepted runtime/disposition.
8. Assign release, platform, identity, messaging, privacy/data, product and
   client-support owners; record go/no-go and rollback inputs outside Git.

The detailed production responsibilities and evidence exclusions are in the
[merged Deploy handover](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/6c61802e964b5e9adafad8610610fba9aace467c/HANDOVER.md).

## Exact commands to rerun

Run from clean checkouts and record `git rev-parse HEAD` before every result.
The Web repository requires Node `v22.22.3`; do not use the host Node 26 result
as release evidence.

### API focused and full validation

```bash
git status --short
git rev-parse HEAD
bundle exec rubocop

bundle exec rails test \
  test/api/projects_api_test.rb \
  test/api/units/task_definitions_api_test.rb \
  test/api/task_prioritization_api_test.rb

bundle exec rails test \
  test/api/peer_progress_api_test.rb \
  test/models/peer_progress_snapshot_test.rb \
  test/services/peer_progress_aggregation_service_test.rb \
  test/services/peer_progress_distribution_policy_test.rb \
  test/services/peer_progress_viewer_policy_test.rb \
  test/sidekiq/aggregate_peer_progress_job_test.rb

bundle exec rails test \
  test/api/notifications_api_test.rb \
  test/api/push_subscriptions_api_test.rb \
  test/api/settings_push_test.rb \
  test/mailers/notifications_mailer_test.rb \
  test/models/notification*_test.rb \
  test/models/push_subscription_test.rb \
  test/services/notification_service_test.rb \
  test/services/push_notification_service_test.rb \
  test/sidekiq/*notification*_test.rb

bundle exec rails test test/lib/test_shard_test.rb

for shard in 1 2 3 4 5 6 7 8; do
  TEST_SHARD_COUNT=8 \
  TEST_SHARD_NUMBER="$shard" \
  TEST_SHARD_MANIFEST="tmp/test-shard-manifests/shard-$shard.txt" \
  bundle exec ruby script/test_shard.rb --dry-run
done

bundle exec rails test
git diff --check
git status --short
```

The complete API suite needs the repository's real test dependencies and fresh
external state, including MariaDB, Redis, TexLive and JPlag where exercised.
Record the seed and dependency/container revisions. In hosted CI, require all
eight shard jobs plus the stable `unit-tests` aggregator in
`.github/workflows/push.yml`; the aggregator downloads all eight manifests,
rejects missing manifests/duplicates and compares their union with every
discovered `test/**/*_test.rb` file.

### Web focused confidence and full validation

```bash
nvm use 22.22.3
node --version
npm --version
npm ci
npx prettier --check .
npm run lint
npm run typecheck

npm run test:ci -- \
  --include=src/app/dashboard/f-cross-dashboard.component.spec.ts \
  --include=src/app/dashboard/f-cross-dashboard.route.spec.ts

npm run test:ci -- \
  --include=src/app/api/fixtures/peer-progress-indicator.fixtures.spec.ts \
  --include=src/app/api/models/peer-progress-indicator-state.spec.ts \
  --include=src/app/api/models/peer-progress-unit-summary-state.spec.ts \
  --include=src/app/api/services/spec/peer-progress-indicator.service.spec.ts \
  --include=src/app/api/services/spec/peer-progress.service.spec.ts \
  --include=src/app/projects/states/dashboard/directives/progress-dashboard/peer-progress-unit-summary/peer-progress-unit-summary.component.spec.ts \
  --include=src/app/projects/states/dashboard/directives/task-dashboard/directives/task-description-card/ppi-widget/ppi-widget.component.spec.ts

npm run test:ci -- \
  --include=src/app/api/services/spec/notification-route.service.spec.ts \
  --include=src/app/api/services/spec/notification.service.spec.ts \
  --include=src/app/api/services/spec/push-notification-click.service.spec.ts \
  --include=src/app/api/services/spec/push-notification.service.spec.ts \
  --include=src/app/common/header/notification-bell/notification-bell.component.spec.ts \
  --include=src/app/common/notification-settings/notification-settings.component.spec.ts \
  --include=src/app/common/notifications-page/notifications-page.component.spec.ts

npm run test:ci
NG_BUILD_MAX_WORKERS=1 \
NG_BUILD_PARALLEL_TS=0 \
GOMAXPROCS=1 \
ESBUILD_WORKER_THREADS=0 \
npm run deploy:build2api
git diff --check
git status --short
```

The full Web suite covers the CPD, task-level PPI, notification, push and shared
surface specs. Record the passed/failed/todo totals rather than only the exit
code.

### Deploy and composed-stack validation

Before running the local-path overlay, confirm its sibling API and Web
checkouts are the exact accepted SHAs; otherwise it may silently build older
working trees.

```bash
cd doubtfire-deploy/development

docker compose -f docker-compose.yml config --quiet
docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  config --quiet
docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  -f docker-compose.ppi-live.yml \
  config --quiet

docker compose -p notifications-demo \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  up -d --build

docker compose -p notifications-demo \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  run --rm doubtfire-api bash -lc "bundle exec rake db:populate"

docker compose -p notifications-demo \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  ps -a

./verify-notifications.sh
```

Then perform authenticated browser acceptance as synthetic student and
convenor users. Capture CPD filtering/sorting/recommendations, authorised
task-level PPI safe states, notification preferences, Sidekiq-to-Mailpit email,
and real background Web Push separately. Record console errors and logs. Do not
include authentication tokens, private keys or real student data.

## Planner-ready status snippets

### `MN-MVP01`

```text
BLOCKED — Mobile/Web Push implementation, PWA flows, privacy-safe wording and subscription cleanup are present. API PR77 merged exact green head 6c74dbb; Web PR105 merged green head 16c22c9 (607 tests/104 files). On the exact composed pair 6c74dbb/5255c27, real Chrome permission produced one subscription and successful safe-route push jobs; sign-out deleted it (count 0). No OS banner or notification click was observed, so background receipt/click is not passed. Next: obtain one observable HTTPS browser/device receipt, safe lock-screen result and click-through. Evidence: docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md
```

### `EN-MVP01`

```text
VALIDATED / HANDED OVER — API PR77 merged exact hosted-green head 6c74dbb; Web PR105 merged green head 16c22c9. On exact composed API 6c74dbb/Web 5255c27, four real events (tutor comment, task status, extension granted and denied) traversed NotificationService → Sidekiq → Action Mailer → Mailpit for the intended synthetic student. Privacy markers were absent, preference suppression held counts constant, and the retry boundary was exercised and cleaned. Open Deploy PR27 at 37a90d7 separately corrects authenticated-settings and asynchronous-Mailpit polling; its verifier passes against the exact merged API/Web/Deploy tuple and all technical checks are green, with protected review pending. This is MVP/local handover evidence, not production SMTP/bounce acceptance. Evidence: docs/evidence/ontrack-mvp-2026-08-26/live-closure-validation-20260827.md and docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md
```

### `CPD-MVP01`

```text
VALIDATED / HANDED OVER — PROTECTED PUBLICATION REVIEW PENDING. API PR77 merged exact hosted-green head 6c74dbb; Web PR105 merged green head 16c22c9. A clean cache-free run against exact merged API 6c74dbb/Web 16c22c9/Deploy ad463dc passed Active, Previous, All and global-search assertions: Demo mode exposed COS10001/COS20007/COS30046, active task counts 37/15/5 and previous COS30243. The initial one-unit view was the intentional DemoDataMaskInterceptor baseline; no product fix was needed. Focused CPD component tests pass 54/54. CPD-Q05 now has an as-built text wireframe and usability/accessibility validation without invented participant feedback; the requester owner-waived only the inactive-peer opinion gate. Technically green CPD-D02 Web PR108 at 6136d54 remains open for protected review. Evidence: docs/evidence/ontrack-mvp-2026-08-26/cpd-q05-wireframe-usability-validation-20260828.md and docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md
```

### `PPI-MVP01`

```text
VALIDATED / HANDED OVER — Exact merged Web head 16c22c9 contains the authorised task-level PPI plus the privacy-safe mock-backed unit summary from merged PRs #31/#32/#38/#39. PPI-Q02 is recorded completed 10/10; normal, genuine 0%, suppressed, unavailable, disabled and stale mappings, privacy suppression, non-colour labels, desktop/narrow layout and production mock gating are validated. Focused exact-head fixture/state validation passed 3 files/40 tests in 3.31s; the broader PPI matrix passes 109 tests and hosted Web passes 607/104. Per Planner acceptance, a live unit-level API is future/out-of-scope and is not claimed as delivered. Evidence: docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md
```

### `ON-MVP01`

```text
BLOCKED / HANDED OVER — API PR77, Web PR105 and Deploy PR26 merged the exact closure tuple. Clean follow-up validation against API 6c74dbb/Web 16c22c9/Deploy ad463dc passes CPD Active/Previous/All/search with active counts 37/15/5; corrected open Deploy PR27's email verifier also passes. CPD-Q05 and PPI-MVP01 are validated within their documented boundaries; no CPD product fix or live PPI unit API is claimed. API PR79/80/81 are technically green; PR81's 12 exact-union shards pass twice with confirmation max test step 3:48 and shard 7:22, but protected reviews remain. Open Web PR111 is technically green, reduces development H/C 428→30 and its exact hardened release image reports zero detected findings; it is not unconditional production safety or security approval. Still open: observable Mobile receipt/click, protected reviews/publication for Guide PR2, CPD-D02 PR108, API PR79/80/81, Deploy PR27 and Web PR111, security/release disposition, and authorised go/no-go/rollback records. The 88/88 feedback matrix remains complete. Evidence: docs/evidence/ontrack-mvp-2026-08-26/follow-up-validation-20260828.md, docs/evidence/ontrack-mvp-2026-08-26/cpd-q05-wireframe-usability-validation-20260828.md, docs/evidence/ontrack-mvp-2026-08-26/ppi-q02-validation-handover-20260827.md and docs/evidence/ontrack-mvp-2026-08-26/feedback-traceability-20260827.md
```

## Evidence capture checklist

For every new pass, record:

- ticket and acceptance criterion;
- repository, branch and full SHA;
- command, tool/runtime version, seed and external dependencies;
- start/end time and timezone;
- exact totals and exit code;
- expected and observed behaviour;
- browser/OS and role for manual checks;
- privacy-safe logs/screenshots only;
- known gaps and next owner/action;
- PR/review/check links and immutable image digest where applicable.

Never attach credentials, VAPID private keys, auth callback fragments, real
student data, submissions, grades or identifiable feedback.
