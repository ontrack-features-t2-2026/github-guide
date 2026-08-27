# OnTrack MVP evidence and handover index

Evidence snapshot time: **2026-08-26T11:28:50Z** (`2026-08-26 21:28:50 AEST`)

Live branch and pull-request disposition was refreshed at
**2026-08-27T09:49:05Z**. A later closure pass selected and validated exact
published final candidates API `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` and Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d`. Published Deploy lock
`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd` pins that pair; predecessor lock
`ff4aad5efaedff58a48f0840dfe2431196b116bd` remains immutable provenance. No
pull requests are open for the final closure branches.

Results remain attached to the exact SHA named beside them; 26 August evidence
is retained as historical and is not silently promoted to either final SHA.

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

Requester approval recorded 27 Aug 2026; named-leader confirmation waived by
requester for publication of this factual blocked/handover record. This is not
attributed to an uncontacted individual and is not a product, deployment or
release approval.

## Executive handover decision

| Ticket | Implementation status | Exact-SHA evidence and remaining gate | Handover decision |
| --- | --- | --- | --- |
| `MN-MVP01` | Unified in-app/mobile Web Push implementation exists. | Final Web `5255c271` passes 177 focused notification/push/profile tests and the 605-test full suite. API push passed 72 runs/295 assertions only at historical `75d7337f`; final API `6c74dbbc` has focused security-contract fixes but no hosted full-suite pass. The browser permission-denied state rendered, but no real background Web Push receipt was proven. | **Blocked** |
| `EN-MVP01` | In-app notification, queued email, preferences, event documentation and Mailpit integration exist. | Final Web `5255c271` passes 177 focused notification tests and the full suite. API email passed 77 runs/428 assertions only at historical `75d7337f`; no current composed Sidekiq-to-Mailpit result or complete event/recipient matrix exists. | **Blocked** |
| `CPD-MVP01` | Cross-project dashboard, filtering/sorting, recommendations and role-safe API work exist. | Final Web `5255c271` passes 98 CPD tests/one todo, the full suite and a 99.911-second Node 22 production build. Final API `6c74dbbc` retains the previous/all reduction from 453 to 38 SQL queries and 4.218 to 2.390 seconds; its focused regression passes one run/six assertions. Composed browser previous/all acceptance and auditable `CPD-Q05`/`CPD-D02` evidence remain absent. | **Blocked** |
| `PPI-MVP01` | The task-level widget calls an authorised API and has privacy-safe suppression. | Final Web `5255c271` passes 109 focused PPI tests and the full suite. API core/preference passed 103 runs/5,608 assertions only at historical `75d7337f`; final API `6c74dbbc` still lacks hosted full-suite evidence. Unit-summary/burndown remain demo/mock-backed; no `PPI-Q02`, eligible live browser result or live unit-summary API evidence exists. | **Blocked** |
| `ON-MVP01` | Published final API/Web candidates and an exact published Deploy lock now exist in addition to the historical combined stack. | Web final validation is green; API CPD regression/shard integrity and exact-image scan are complete, while hosted API full-suite CI is pending. A fresh recursive clone of Deploy `4851fc1` plus Compose render/contract validation passed, but no running composed-stack/manual acceptance, complete traceability, security disposition or release decision exists. | **Blocked** |

`Blocked` means the remaining gate is named below. It does not mean the existing
implementation should be discarded.

## Evidence language

- **Implemented**: code or documentation is present at the linked revision.
- **Historical pass**: a result was recorded against the exact older revision
  named in this file.
- **Fresh pass**: a command was rerun against the current candidate and its
  exact SHA and output were recorded. A fresh final Web full-suite pass exists;
  no fresh final API full-suite pass is claimed.
- **Blocked**: a required acceptance check, publication step, PR disposition or
  owner action remains.
- **Deferred**: explicitly outside this MVP, with an owner and follow-up rather
  than an implied pass.

## Committed evidence artifacts

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
  including links and checksums for the committed compressed raw reports.

The committed artifacts above preserve the 26 August candidate evidence. The
27 August final-candidate transcripts are held in the local validation packs
named in the final-candidate section below and still need publication; this
index does not imply that local files are available from GitHub.

## Current remote branch snapshot

The following SHAs were read directly from GitHub during the 27 August refresh.
Branch links are mutable; the linked commit is the immutable audit reference.

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

### Deploy and guide

| Repository / branch | SHA or state |
| --- | --- |
| Deploy [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x) | [`5351009df475c4a3d4f788110b0197ce64b3d3f4`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/5351009df475c4a3d4f788110b0197ce64b3d3f4) |
| Deploy [`fix/production-ready-compose-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/production-ready-compose-20260824) | [`a9f468285c0fcc6bcde83f9902897b9df5604b1b`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/a9f468285c0fcc6bcde83f9902897b9df5604b1b) |
| Deploy `integration/deploy-all-features-foundation-20260824` | Remote branch deleted after merge; immutable historical commit [`7410f196`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb). |
| Deploy historical prior lock | Gitlinks introduced at [`c4c0d9a5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4c0d9a5fc37b9346206ed2963fbfa3684c2a696) pin API `75d7337f` / Web `832d5e47`; [`32c7abbf`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/32c7abbf5551d172970c31acea9522ec4da29b08) records that pair as prior candidates. Historical provenance only. |
| Deploy final lock [`chore/ontrack-mvp-lock-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/chore/ontrack-mvp-lock-20260827) | Published [`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/4851fc1b0ac64f9eabdd7a6c057e417b644d42cd); pins API `6c74dbbc` / Web `5255c271`. Predecessor lock [`ff4aad5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ff4aad5efaedff58a48f0840dfe2431196b116bd) pinned API `f25945d` / the same Web revision and remains historical. No PR or release approval. |
| Guide historical evidence branch | [`c07f60f29c05364e1d643047456033c1bfae2b0d`](https://github.com/ontrack-features-t2-2026/github-guide/commit/c07f60f29c05364e1d643047456033c1bfae2b0d). |
| Guide closure branch [`docs/closure-tutorial-mvp-deploy-20260827`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/closure-tutorial-mvp-deploy-20260827) | Published through [`4bb0bc99c9a88b1b6995899cfa4aa33a22b58809`](https://github.com/ontrack-features-t2-2026/github-guide/commit/4bb0bc99c9a88b1b6995899cfa4aa33a22b58809); no PR open. |

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

## Published final candidates and lock — 2026-08-27

These are the exact final **validation** candidates selected during the closure
pass. The API, Web, Deploy and Guide closure branches are published and remain
unapproved; no pull requests or hosted API run links exist yet.

| Repository | Published branch | Exact SHA | Current evidence state |
| --- | --- | --- | --- |
| Web | [`closure/web-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/closure/web-ontrack-mvp-20260827) | [`5255c271778643cd6f972e3bce1d83ecdb2e292d`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/5255c271778643cd6f972e3bce1d83ecdb2e292d) | Type-check and zero-warning lint pass. CPD: 8 files/98 passed/one todo. PPI: 9 files/109 passed. Notifications/push/profile: 11 files/177 passed. Full suite: 103 files/605 passed/one todo. Node 22 optimised production build: pass in 99.911 seconds. No PR open. |
| API | [`closure/api-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/closure/api-ontrack-mvp-20260827) | [`6c74dbbc07e219d60ca49e1b5ea42f737e5ef225`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/6c74dbbc07e219d60ca49e1b5ea42f737e5ef225) | Retains the parent `d920892` previous/all CPD result: 453 to 38 SQL queries and 4.218 to 2.390 seconds; focused regression passes one run/six assertions. Eight deterministic CI shards assign all 129 discovered tests exactly once, with 15–17 files and 4,278–4,284 lines per shard; sharding unit coverage passes five runs/29 assertions. Protected push-settings and portfolio-isolation regressions pass 7 runs/42 assertions and 1 run/16 assertions respectively. RuboCop, actionlint and syntax checks pass. Exact development-image scan is complete; hosted full-suite CI remains pending and no PR is open. |
| Deploy | [`chore/ontrack-mvp-lock-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/chore/ontrack-mvp-lock-20260827) | [`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/4851fc1b0ac64f9eabdd7a6c057e417b644d42cd) | Pins API `6c74dbbc` / Web `5255c271`. A fresh recursive clone resolved those gitlinks plus LTI `ec0df42` and nested JPlag viewer `4132c30`; merged all-features Compose rendered with the cloned component paths and `compose_contract_test.py` passed. Predecessor lock `ff4aad5` remains historical. No PR, running composed-stack acceptance or release approval. |

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
run was not repeated at `6c74dbbc`. Hosted CI is the authoritative complete
gate and has not run; publishing the branch without opening a PR or recording a
workflow dispatch does not create a pass. Do not turn the classified harness
limitations into a product pass or failure, and do not promote historical
notification/PPI focused results from API `75d7337f` to the exact final SHA.

The exact final Web development image at
`sha256:ae5a90c845bbfec38e2dc1f84c5447fe4b301c189ea9c7f19d910c6b2c7bf23c`
was scanned with Trivy `0.74.0`: 33 Critical/395 High/1,592 Medium/1,197
Low/163 Unknown instances. All 16 language findings are bundled npm
dependencies in the inherited Node image; the project `npm ci` layer produced
no Trivy result and `npm audit` reported zero. This image is not
production-safe. The exact final API `6c74dbbc` development image was scanned
at local OCI index/tag digest
`sha256:f938fef1889985574c3dd22290ea41db3df7431474710ac3c125fe62ccdbb312`
and Linux/ARM64 manifest
`sha256:d351d2c79a55eac1f59024c67709124702b6451c35d2efab340e6699bb0fddc5`.
Trivy `0.74.0` reported 4,072 instances across 2,312 unique IDs: 35 Critical,
579 High, 1,843 Medium, 1,368 Low and 247 Unknown. It reports 49 fixable High
instances across 12 unique IDs, no fixable Critical instance, and 63 fixable
instances overall. The image runs as root and includes Docker, Redis, build
tools, source and development/test gems; it is not production-safe. The final
raw API pack is retained in the local closure evidence and still needs
publication. Neither development-image scan is remediation, risk acceptance
or release approval.

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
  `evidence/raw/docker-image-vulnerability-scan-20260826/`. Final runtime-image
  scans, SBOM/provenance and any risk-acceptance records remain separate release
  evidence.

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

## Pull-request disposition refresh — 2026-08-27

The previously named candidate/release and follow-up pull requests have a live
disposition: API #43, #56, #57, #60, #62, #63, #65 and #74; Web #59, #60,
#61, #69, #70, #71, #77, #78, #81 and #96; and Deploy #11, #12, #18, #24
and #25 were merged. This closes the prior PR-disposition question but does not
promote tests from candidates `75d7337f`/`832d5e47` to the later merge heads.

Current open review items returned by the audit are:

| Repository | Open item | State / relevance |
| --- | --- | --- |
| API | [#72](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/72) | Changes requested; Safe Upload security work, outside the four-MVP candidate but on a shared API surface. |
| Web | [#72](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/72) | Review required; CPD sizing/documentation. |
| Web | [#103](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/103) | Changes requested; CPD project-card work. |
| Web | [#104](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/104) | Changes requested; shared layout standardisation. |
| Guide | [#1](https://github.com/ontrack-features-t2-2026/github-guide/pull/1) | Review required; documentation CI policy. |
| Deploy | None | Published final lock `4851fc1` pins API `6c74dbbc` / Web `5255c271`; no pull request is open. Predecessor lock `ff4aad5` and prior `c4c0d9a` / `32c7abb` commits remain historical provenance. |

The integration owner must open/review the final candidate and lock pull
requests and attach hosted checks. Ancestry alone neither proves feature absence nor
acceptance of an equivalent patch.

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
- Final Web `5255c271` notification/push/profile coverage is green: 11 files,
  177 tests, exit 0; the 103-file full Web suite also passes.
- API push coverage is green only at historical candidate `75d7337f`: 72 runs,
  295 assertions, zero failures/errors/skips. Exact final API `6c74dbbc` hosted
  validation is pending.
- The historical environment proved configuration and service-worker
  prerequisites only.
- A real browser/device did not receive a background push in the audited run.
- The current browser smoke rendered the permission-denied state, but that is
  not a delivery pass.
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

Client support plus the privacy/data owner: open/review the final candidate
pull requests, complete hosted API validation, then perform real HTTPS background-push
acceptance on every promised browser/device combination. Record browser/OS versions,
subscription, receipt, safe lock-screen text, click-through and expired
subscription cleanup without recording private keys or student data.

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
  event/recipient/preference/retry case has been run on the current head.
- Final Web `5255c271` notification coverage is green: 11 files, 177 tests,
  exit 0; its full suite passes 605 tests with one todo. API email coverage is
  green only at historical `75d7337f`: 77 runs, 428 assertions, zero
  failures/errors/skips. Exact final API hosted validation remains pending.
- No complete, current feedback/event matrix was located.
- The previously open queued-delivery, group-link, test-isolation and
  task-availability pull requests (#43, #56, #57 and #65) were merged after
  the historical API run; the final API SHA needs hosted validation.
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

Messaging owner plus notification feature lead: create a versioned matrix of
each MVP event × intended recipient × preference on/off × retry/deduplication ×
HTML/text rendering, link each row to a current automated or manual result,
run it against the final exact candidate and retain the frozen candidate result
as historical evidence only.

## `CPD-MVP01` — Cross-Project Dashboard

### Implemented evidence

- Data-source and ownership map:
  [CPD map](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/cpd-data-source-map.md).
- Responsive sizing investigation:
  [report](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/cpd-sizing-investigation.md).
- Privacy-safe evidence guidance:
  [screenshot checklist](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/CPD-Q06-privacy-safe-screenshot-checklist.md).
- The current API `feature/cross-unit` head includes the task-definition
  privacy repair and recommendation work. The current Web head includes the
  dashboard toolbar and later contrast/lint work.

### Evidence status and gaps

- Historical evidence records 46 focused Web CPD tests and the API privacy
  regression as green at older commits.
- Final Web `5255c271` lint and type-check pass; CPD/shared coverage passes 98
  tests with one todo, the full suite passes 605 tests with one todo, and the
  Node 22 production build passes in 99.911 seconds.
- Final API `6c74dbbc` retains the previous/all query repair measured at parent
  `d9208922948fc49674dfacc9aab15b75057a8c81`: 453 to 38 SQL queries and 4.218
  to 2.390 seconds. The focused
  regression passes one run/six assertions.
- Historical browser smoke passed active-unit loading, filters and mobile-width
  rendering, but its previous-unit API request hung. The source-side API repair
  is fresh evidence; composed browser previous/all acceptance at the final pair
  has not been rerun and remains blocked.
- No auditable completion evidence was located for `CPD-Q05` or `CPD-D02`.
- Web #59, #60 and #61 were merged. Web #72 remains review-required and Web
  #103 is changes-requested; neither changes the existing Q05/D02 or manual
  acceptance gaps.
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

CPD feature lead plus product owner: review/publish the final candidate,
disposition Web #72/#103, complete hosted API validation, complete `CPD-Q05`
usability validation and `CPD-D02` evidence or explicitly defer them with
owners, then capture a
privacy-safe student-role browser acceptance for filtering, sorting,
recommendations, empty/error states and cross-unit authorisation.

## `PPI-MVP01` — Peer Progress Indicator

### Implemented evidence

- API contract, viewer policy and privacy semantics:
  [peer-progress API](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/peer-progress-api.md).
- Data ownership and source map:
  [PPI data-source map](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8/docs/peer-progress/data-source-map.md).
- Unit-summary handover explicitly describes the retained mock-backed boundary:
  [PPI-F02 handover](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/231a8127d530ceec07f01a6e4d15e30a914bd167/docs/ppi-f02-unit-summary-handover.md).
- The current local Web candidate contains a task-level service call to the
  authorised `/projects/:project_id/task_def_id/:id/peer_progress` endpoint.

### Evidence status and gaps

- API endpoint/model/service/job and preference coverage is green only at
  historical `75d7337f`: 103 runs, 5,608 assertions, zero
  failures/errors/skips. Exact final API `6c74dbbc` hosted validation is pending.
- Final Web `5255c271` focused PPI coverage passes nine files/109 tests; its
  103-file full suite also passes.
- Browser smoke reached only the privacy-safe unavailable state; no eligible
  live task-level distribution was observed.
- Task-level live behaviour must not be generalised to a live unit-summary or
  burndown API.
- The unit-summary and burndown surfaces remain explicit demo/mock views where
  no aggregate backend contract exists.
- No auditable `PPI-Q02` completion evidence was located.
- Web PR [#77](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/77)
  was merged after the frozen candidate; equivalent/newer task-level code is in
  final Web `5255c271` and covered by its focused/full passes.

### Privacy and security boundary

- Enforce the cohort threshold and staleness policy on the server and fail
  closed when either is not satisfied.
- Do not expose identities, cohort size, raw counts or values that allow a
  reader to reconstruct a single peer's progress.
- Apply viewer/project/unit authorisation before aggregation and presentation.
- Demo fixtures must be visibly labelled and must never be treated as
  production evidence.

### Next owner and action

PPI feature lead plus privacy/data owner: open/review the final candidate pull
requests, complete hosted API validation and manual task-level
eligible/suppressed/stale/disabled/error acceptance with synthetic cohorts,
and keep `PPI-Q02` plus live unit-summary API work
open/deferred until real evidence exists.

## `ON-MVP01` — Combined four-stream handover

### Current state

The historical stack proves that the four implementations once coexisted.
Published final candidates are API
`6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` and Web
`5255c271778643cd6f972e3bce1d83ecdb2e292d`. Published Deploy lock
`4851fc1b0ac64f9eabdd7a6c057e417b644d42cd` pins that exact pair. A fresh
recursive clone checked out those gitlinks, LTI `ec0df42` and nested JPlag
viewer `4132c30`; the merged Compose configuration rendered with the cloned
paths and `compose_contract_test.py` passed. Web final validation is green
through its full suite and production build; API CPD regression and
deterministic shard integrity checks and exact development-image scan are
complete, but hosted full-suite CI is pending. The classified local unsharded
run is not a suite pass. Predecessor lock `ff4aad5` and prior Deploy commits
`c4c0d9a5` / `32c7abbf` remain historical. No running composed-stack
acceptance or release approval is inferred.

### Release blockers

1. Open/review pull requests for the published final API/Web/Deploy/Guide
   branches and attach hosted checks without treating publication as approval.
2. Disposition remaining in-scope open Web #72/#103 work and preserve the
   changes-requested state rather than assuming acceptance.
3. Complete authoritative hosted API full-suite CI. The final API exact-image
   scan is complete but its findings still require the disposition in item 7;
   the Web focused/full/build lanes are already green at `5255c271`.
4. Retain the successful fresh-clone/config-contract evidence for Deploy
   `4851fc1`; do not promote it to a running-stack pass.
5. Run Compose build, migration/population and a running composed-stack
   verification from the fresh clone.
6. Complete manual student/convenor acceptance for CPD, task-level PPI, email
   and real background Web Push, including a non-hanging previous-unit CPD
   request and an eligible privacy-safe PPI fixture. Build the required
   traceability matrix for all 85 recorded feedback responses; no complete
   matrix was located in this audit.
7. Triage/remediate the exact-image critical/high scan findings, rebuild and
   rescan, then attach the accepted scan, SBOM, provenance and signature
   evidence for the immutable production digests. A source test pass is not an
   image scan.
8. Assign release, platform, identity, messaging, privacy/data, product and
   client-support owners; record go/no-go and rollback inputs outside Git.

The detailed production responsibilities and evidence exclusions are in the
[merged Deploy handover](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/5351009df475c4a3d4f788110b0197ce64b3d3f4/HANDOVER.md).

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
BLOCKED — The unified mobile/Web Push implementation, PWA flows, permission states and privacy-safe lock-screen documentation are present. Published final Web 5255c27 passes 177 focused notification/push/profile tests and the 605-test full suite. API push coverage passes 72 runs/295 assertions only at historical 75d7337f; final API 6c74dbb fixes and passes the protected anonymous settings contract (7 runs/42 assertions), but hosted full-suite validation is pending. The browser permission-denied state rendered, but no real background push receipt was proven. Next: open/review final PRs, complete hosted API validation, then record HTTPS browser/device receipt, safe lock-screen text, click-through and expired-subscription cleanup. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `EN-MVP01`

```text
BLOCKED — In-app notifications, Sidekiq email delivery, preferences, event docs and Mailpit integration exist. Published final Web 5255c27 passes 177 focused notification tests and the 605-test full suite. API email coverage passes 77 runs/428 assertions only at historical 75d7337f; final API 6c74dbb passes the portfolio receipt isolation regression (1 run/16 assertions), but hosted full-suite validation is pending. A historical synthetic email reached Mailpit, but no current composed Sidekiq-to-Mailpit result or complete event/recipient/preference/retry/rendering matrix exists. Next: open/review final PRs, complete hosted API validation and the matrix, then rerun the composed email path. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `CPD-MVP01`

```text
BLOCKED — The cross-project dashboard, role-safe API, toolbar/filter/sort and recommendation work are implemented. Published final Web 5255c27 passes lint/type-check, 98 CPD tests/1 todo, the 103-file full suite (605 pass/1 todo) and a 99.911-second Node 22 production build. Published final API 6c74dbb retains the audited previous/all reduction from 453 to 38 SQL queries and 4.218 to 2.390 seconds; its regression passes 1 run/6 assertions. Historical browser smoke passed active-unit/filter/mobile rendering but the previous-unit request hung; composed browser acceptance was not rerun. No auditable CPD-Q05 or CPD-D02 completion evidence was located. Next: open/review final PRs, complete hosted API CI, rerun privacy-safe composed acceptance, and complete or explicitly defer Q05/D02. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `PPI-MVP01`

```text
BLOCKED — The task-level PPI uses an authorised live endpoint with privacy-safe suppression. Published final Web 5255c27 passes 109 focused PPI tests and the 605-test full suite. API core/preference coverage passes 103 runs/5,608 assertions only at historical 75d7337f; hosted validation at published final API 6c74dbb is pending. Browser smoke showed only the safe unavailable state. Unit-summary and burndown remain demo/mock-backed; no PPI-Q02, eligible live browser result or live unit-summary API evidence was located. Next: open/review final PRs, complete hosted API CI plus eligible/suppressed synthetic-cohort acceptance, and keep Q02/live unit-summary work open or explicitly deferred. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `ON-MVP01`

```text
BLOCKED — Published final candidates API 6c74dbb and Web 5255c27 are pinned by published Deploy lock 4851fc1; ff4aad5 and c4c0d9a/32c7abb remain historical provenance. A fresh recursive clone of 4851fc1 and Compose render/contract validation pass, but no PR or running-stack pass exists. Web lint/type-check, focused packs, the 103-file full suite (605 pass/1 todo) and Node 22 production build pass. API previous/all CPD regression, deterministic 8-way shard integrity and exact-image scanning are complete, but hosted full-suite CI is pending. The local API run completed 1,145 runs/16,245 assertions/0 skips in 2,785.068s but is not a suite pass: 22 socket-helper tests, two workflow-mount tests and two stale expectations (now fixed) were classified. Composed/manual previous/all CPD, eligible PPI, current email, real Web Push and the 85-response matrix remain incomplete. Final development-image scans are not clean (API 35 critical/579 high; Web 33 critical/395 high) and neither image is production-safe. Next: open/review final PRs, complete hosted/running-stack/manual gates, resolve scan findings and obtain authorised go/no-go. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
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
