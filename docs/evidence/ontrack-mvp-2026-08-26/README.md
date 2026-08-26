# OnTrack MVP evidence and handover index

Snapshot time: **2026-08-26T11:28:50Z** (`2026-08-26 21:28:50 AEST`)

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

## Executive handover decision

| Ticket | Implementation status | Fresh evidence against current heads | Handover decision |
| --- | --- | --- | --- |
| `MN-MVP01` | Unified in-app/mobile Web Push implementation exists. | Fresh API push coverage passes 72 runs/295 assertions and seven focused Web notification/push files pass 148 tests. The browser permission-denied state rendered, but no real background Web Push receipt was proven. | **Blocked** |
| `EN-MVP01` | In-app notification, queued email, preferences, event documentation and Mailpit integration exist. | Fresh focused API email coverage passes 77 runs/428 assertions, seven Web notification files pass 148 tests, and historical email delivery is green. Full validation and the complete event/recipient matrix are not complete. | **Blocked** |
| `CPD-MVP01` | Cross-project dashboard, filtering/sorting, recommendations and role-safe API work exist. | Fresh focused Web tests pass 55 with one todo after the constructor-spec repair; Web lint/type-check and focused API task-prioritisation tests are also green. Production build is resource-blocked and full suites were not run. No auditable `CPD-Q05` or `CPD-D02` completion evidence was located. | **Blocked** |
| `PPI-MVP01` | The task-level widget calls an authorised API and has privacy-safe suppression. | Fresh API core/preference tests pass 103 runs/5,608 assertions, and seven focused Web files pass 93 tests. The unit-summary and burndown surfaces are still demo/mock-backed; no `PPI-Q02` or live unit-summary API evidence was located. | **Blocked** |
| `ON-MVP01` | A combined historical stack and newer API/Web integration candidates exist. | The current candidates are published but unapproved; open PR heads require disposition, the Deploy lock is stale, full suites were not run, end-to-end acceptance is incomplete, and exact-image scans contain unresolved critical/high findings. | **Blocked** |

`Blocked` means the remaining gate is named below. It does not mean the existing
implementation should be discarded.

## Evidence language

- **Implemented**: code or documentation is present at the linked revision.
- **Historical pass**: a result was recorded against the exact older revision
  named in this file.
- **Fresh pass**: a command was rerun against the current candidate and its
  exact SHA and output were recorded. No fresh full-suite pass is claimed in
  this snapshot.
- **Blocked**: a required acceptance check, publication step, PR disposition or
  owner action remains.
- **Deferred**: explicitly outside this MVP, with an owner and follow-up rather
  than an implied pass.

## Committed evidence artifacts

- Browser captures: [CPD desktop](screenshots/cpd-dashboard-desktop.png),
  [CPD 390×844 viewport](screenshots/cpd-dashboard-narrow-viewport.png), and
  [PPI privacy-safe unavailable state](screenshots/ppi-unavailable-safe-state.png).
- Web logs: [type-check](test-logs/web-typecheck.log),
  [lint](test-logs/web-lint.log),
  [CPD focused tests](test-logs/web-cpd-focused-tests-after-fix.log),
  [PPI focused tests](test-logs/web-ppi-focused-tests-after-fix.log),
  [notifications focused tests](test-logs/web-notifications-focused-tests-after-fix.log),
  and the two resource-blocked production-build attempts
  ([first](test-logs/web-production-build.log),
  [constrained retry](test-logs/web-production-build-retry.log)).
- API logs: [CPD task-prioritisation](test-logs/api-cpd-task-prioritization-retry.log),
  [PPI core](test-logs/api-ppi-core-tests.log),
  [PPI preference](test-logs/api-ppi-preference-test-retry.log),
  [email notifications](test-logs/api-email-notifications-focused-tests.log),
  [push notifications](test-logs/api-push-notifications-focused-tests.log), and
  [Zeitwerk](test-logs/api-zeitwerk-check.log).
- Security evidence: [Docker image vulnerability scan report](../../../evidence/docker-image-vulnerability-scan-20260826.md),
  including links and checksums for the committed compressed raw reports.

## Current remote branch snapshot

The following SHAs were read directly from GitHub with `git ls-remote`. Branch
links are mutable; the linked commit is the immutable audit reference.

### API

| Branch | SHA |
| --- | --- |
| [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x) | [`2a67e30f0f1cfebbf90ad49f264515e7618e7f79`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/2a67e30f0f1cfebbf90ad49f264515e7618e7f79) |
| [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | [`18f9f0daec1d34e79d704bcffdd2213322d62a20`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/18f9f0daec1d34e79d704bcffdd2213322d62a20) |
| [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | [`40d676ce1fcbf3abddd19559a7e392221f4bb7ba`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/40d676ce1fcbf3abddd19559a7e392221f4bb7ba) |
| [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | [`cc46e034004359477c8c06ee1fcc6fa0d666fdae`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/cc46e034004359477c8c06ee1fcc6fa0d666fdae) |
| [`feature/email-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/email-notifications) | [`5850668ae8b1e05c38d6c99aeb4aa0c3ab5d866a`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/5850668ae8b1e05c38d6c99aeb4aa0c3ab5d866a) |
| [`feature/mobile-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/mobile-notifications) | [`dc76a5a0e67ec4b751a5830c462c71b961eb60b1`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/dc76a5a0e67ec4b751a5830c462c71b961eb60b1) |
| [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/11.0.x-all-features-20260824) | [`e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8) |

### Web

| Branch | SHA |
| --- | --- |
| [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x) | [`11bbcbf700836013cbd40a44bab0d99ef30cca9f`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/11bbcbf700836013cbd40a44bab0d99ef30cca9f) |
| [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | [`7b1aeb804cde94b7b8e8324f478f59c4b5278ae1`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/7b1aeb804cde94b7b8e8324f478f59c4b5278ae1) |
| [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | [`eda7b6b044cac5f9b6630270a0ee37684fb692be`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/eda7b6b044cac5f9b6630270a0ee37684fb692be) |
| [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`35ee9fa31c4b1c987e79c62cdfce93c270d30dc9`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/35ee9fa31c4b1c987e79c62cdfce93c270d30dc9) |
| [`feature/email-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/email-notifications) | [`20d1f380c20fa6f6601eea1db6814a77401f391c`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/20d1f380c20fa6f6601eea1db6814a77401f391c) |
| [`feature/mobile-notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/mobile-notifications) | [`20d1f380c20fa6f6601eea1db6814a77401f391c`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/20d1f380c20fa6f6601eea1db6814a77401f391c) |
| [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/11.0.x-all-features-20260824) | [`231a8127d530ceec07f01a6e4d15e30a914bd167`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/231a8127d530ceec07f01a6e4d15e30a914bd167) |

### Deploy and guide

| Repository / branch | SHA or state |
| --- | --- |
| Deploy [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x) | [`c4264f21ad7c5789251e8be58ba239432c759dbd`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4264f21ad7c5789251e8be58ba239432c759dbd) |
| Deploy [`fix/production-ready-compose-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/production-ready-compose-20260824) | [`a9f468285c0fcc6bcde83f9902897b9df5604b1b`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/a9f468285c0fcc6bcde83f9902897b9df5604b1b) |
| Deploy `integration/11.0.x-all-features-20260824` | **No remote branch at the snapshot time.** Local-only head: `686a81a6e40cd1045638077e539ec147649eb5ca`. |
| Guide [`main`](https://github.com/ontrack-features-t2-2026/github-guide/tree/main) | [`5d20dd8d7f6451cbab01e216ab130843e4046528`](https://github.com/ontrack-features-t2-2026/github-guide/commit/5d20dd8d7f6451cbab01e216ab130843e4046528) |

In both API and Web, the specialised email and mobile branch heads are
ancestors of the current unified `feature/notifications` head. The unified
branch is therefore the cross-channel integration input; the specialised
branches remain useful history but must not be mistaken for the latest complete
notification stack.

## Published integration candidates

These clean candidates were assembled after the remote snapshot and published
for review. Publication makes them reproducible; it is not merge or release
approval.

| Repository | Validation branch | SHA | Evidence state |
| --- | --- | --- | --- |
| API | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/ontrack-mvp-validation-20260826) | [`75d7337f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/75d7337fd0dd04f9b3a985f287e40f3ec6a467a0) | Current `11.0.x`, CPD, PPI and unified notifications are ancestors; diff/ancestry and Zeitwerk checks passed. Fresh task-prioritisation passed 17 runs/80 assertions; PPI core/preference 103 runs/5,608 assertions; email 77 runs/428 assertions; push 72 runs/295 assertions. Full suite was not run. |
| Web | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/ontrack-mvp-validation-20260826) | [`832d5e47`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/832d5e47eb26ff2e21ce25e576daa13b3054cc3e) | Current `11.0.x`, CPD, PPI and unified notifications are ancestors. The parent passed diff/ancestry and type-check; final candidate lint passed. Focused CPD passes 55 tests with one todo, PPI passes 93, and notifications/push passes 148. Both production-build attempts on the parent were OS-killed; the build is not green and the full suite was not run. |
| Deploy | `integration/11.0.x-all-features-20260824` | `686a81a6e40cd1045638077e539ec147649eb5ca` | Clean historical lock, but it does not pin the two current candidates above and is behind current remote `11.0.x`. |

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

### Fresh validation update — through 2026-08-26T11:59:56Z

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
- No current full API or Web suite pass is claimed.

### Fresh exact-SHA image scan — 2026-08-26

Trivy `0.74.0` scanned local ARM64 Debian `12.15` development images built from
the exact API/Web candidates. Counts below are vulnerability instances; the
same vulnerability ID can occur in more than one package or layer.

| Image source | Image ID | Instances / unique IDs | Severity instances | Fixable instances | Package class |
| --- | --- | ---: | --- | ---: | --- |
| API `75d7337fd0dd04f9b3a985f287e40f3ec6a467a0` | `sha256:7e8adf5eb97e7a1a266124b5d53a5398285c4be0e279630b9616f8936ecb232a` | 3,994 / 2,249 | 35 critical; 577 high; 1,839 medium; 1,368 low; 175 unknown | 63 | 3,921 OS; 73 language |
| Web `832d5e47eb26ff2e21ce25e576daa13b3054cc3e` | `sha256:70afe3981246213d7ebfaa8d1ddb8d4949f80f49b580884554fcf4320f4fe436` | 3,302 / 2,047 | 33 critical; 394 high; 1,589 medium; 1,197 low; 89 unknown | 16 | 3,286 OS; 16 language |

This is current scan evidence, **not a clean bill of health** and not an
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
- Raw JSON/table outputs are currently local under
  `outputs/docker-image-vulnerability-scan-20260826/fresh/`. Publish sanitised
  results plus checksums with the release evidence before closing the scan or
  combined handover ticket.

### Fresh browser smoke — 2026-08-26

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

## Open pull-request disposition gate

The public GitHub API was checked at the snapshot time. The umbrella release
PRs are still open:

- [API #60](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/60)
- [Web #81](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/81)
- [Deploy #12](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/12)

An exact-head ancestry audit found the following open, in-scope follow-up heads
were **not** ancestors of the current local candidates:

| Repository | PRs needing an explicit merge, superseded or rejected decision |
| --- | --- |
| API | [#43](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/43), [#56](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/56), [#57](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/57), [#62](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/62), [#63](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/63), [#65](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/65), [#74](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/74) |
| Web | [#59](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/59), [#60](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/60), [#61](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/61), [#72](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/72), [#77](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/77), [#78](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/78), [#96](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/96) |
| Deploy | [#11](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/11), [#12](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/12), [#18](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/18) |

“Not an ancestor” does not by itself prove the change is absent: an equivalent
patch may have been integrated under another commit. The release owner must
record the decision for each exact head and use patch comparison plus tests
before labelling it superseded.

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
local candidates. These results establish implementation history, not current
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
- Fresh focused Web notification/push coverage is green at source-identical
  committed candidate `832d5e47e`: seven files, 148 tests, exit 0.
- Fresh focused API push coverage is green: 72 runs, 295 assertions, zero
  failures/errors/skips.
- The historical environment proved configuration and service-worker
  prerequisites only.
- A real browser/device did not receive a background push in the audited run.
- The current browser smoke rendered the permission-denied state, but that is
  not a delivery pass.
- API PR [#74](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/74)
  aligns tests with privacy-safe lock-screen expectations and is not an exact
  ancestor of the current local candidate.
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

Client support plus the privacy/data owner: disposition API #74, rerun the
current automated packs, then perform real HTTPS background-push acceptance on
every promised browser/device combination. Record browser/OS versions,
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
- Fresh focused Web notification coverage is green: seven files, 148 tests,
  exit 0. Fresh focused API email coverage is also green: 77 runs, 428
  assertions, zero failures/errors/skips. Full-suite evidence remains
  incomplete.
- No complete, current feedback/event matrix was located.
- Exact open heads for queued delivery, group link handling, test isolation and
  task-availability paths still need disposition; see API #43, #56, #57 and
  #65 above.
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
disposition the open notification PRs, and rerun the matrix against the exact
published candidate.

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
- Fresh Web lint and type-check pass at the candidate's parent; the committed
  test-only `TaskService` constructor repair at `832d5e47e` makes 55 focused
  tests pass with one todo. Fresh API task-prioritisation coverage passed 17
  runs and 80 assertions.
- Fresh browser smoke passed active-unit loading, filters and mobile-width
  rendering. The previous-unit API request hung, so that path remains blocked.
  Both production build attempts were OS-killed during esbuild, including the
  reduced-worker retry at exit code 137. The build/full suites are not green.
- No auditable completion evidence was located for `CPD-Q05` or `CPD-D02`.
- Exact open Web CPD heads #59, #60, #61 and #72 require explicit disposition.
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

CPD feature lead plus product owner: review the committed `TaskService` spec
repair, disposition the open CPD heads, finish the production build and full
Web/API suites at the accepted SHA, complete `CPD-Q05` usability validation and
`CPD-D02` evidence or explicitly defer them with owners, then capture a
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

- Fresh API endpoint/model/service/job and preference coverage is green at the
  local candidate: 103 runs, 5,608 assertions, zero failures/errors/skips.
- Fresh focused Web coverage is green at source-identical committed candidate
  `832d5e47e`: seven files, 93 tests, exit 0.
- Browser smoke reached only the privacy-safe unavailable state; no eligible
  live task-level distribution was observed.
- Task-level live behaviour must not be generalised to a live unit-summary or
  burndown API.
- The unit-summary and burndown surfaces remain explicit demo/mock views where
  no aggregate backend contract exists.
- No auditable `PPI-Q02` completion evidence was located.
- Web PR [#77](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/77)
  is not an exact ancestor of the current candidate even though equivalent
  live task-level code is present; the release owner must record whether it is
  superseded or merge it.

### Privacy and security boundary

- Enforce the cohort threshold and staleness policy on the server and fail
  closed when either is not satisfied.
- Do not expose identities, cohort size, raw counts or values that allow a
  reader to reconstruct a single peer's progress.
- Apply viewer/project/unit authorisation before aggregation and presentation.
- Demo fixtures must be visibly labelled and must never be treated as
  production evidence.

### Next owner and action

PPI feature lead plus privacy/data owner: disposition Web #77 and the open PPI
API heads, retain the fresh focused API/Web results, complete the full suites
and manual task-level eligible/suppressed/stale/disabled/error acceptance with
synthetic cohorts, and keep `PPI-Q02` plus live unit-summary API work
open/deferred until real evidence exists.

## `ON-MVP01` — Combined four-stream handover

### Current state

The historical stack proves that the four implementations can coexist, but the
current source branches have advanced. The local API/Web candidates include the
current feature heads; the Deploy branch neither pins those heads nor contains
all current remote Deploy work. The combined ticket therefore cannot be marked
complete yet.

### Release blockers

1. Publish reviewable API and Web candidates or recreate them from immutable
   remote refs.
2. Record a merge/superseded/rejected decision for every in-scope open PR head.
3. Run the focused and full suites against the exact candidates.
4. Update and publish the Deploy lock so its gitlinks, manifest and images use
   those exact accepted SHAs.
5. Run Compose configuration, build, migration/population and composed-stack
   verification from a fresh clone.
6. Complete manual student/convenor acceptance for CPD, task-level PPI, email
   and real background Web Push, including a non-hanging previous-unit CPD
   request and an eligible privacy-safe PPI fixture.
7. Triage/remediate the exact-image critical/high scan findings, rebuild and
   rescan, then attach the accepted scan, SBOM, provenance and signature
   evidence for the immutable production digests. A source test pass is not an
   image scan.
8. Assign release, platform, identity, messaging, privacy/data, product and
   client-support owners; record go/no-go and rollback inputs outside Git.

The detailed production responsibilities and evidence exclusions are in the
[Deploy handover](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/blob/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb/HANDOVER.md).

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

bundle exec rails test
git diff --check
git status --short
```

The complete API suite needs the repository's real test dependencies and fresh
external state, including MariaDB, Redis, TexLive and JPlag where exercised.
Record the seed and dependency/container revisions.

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
BLOCKED — The unified mobile/Web Push implementation, PWA flows, permission states and privacy-safe lock-screen documentation are present. Fresh API push coverage passes 72 runs/295 assertions and Web notification/push coverage passes seven files/148 tests. The browser permission-denied state rendered, but no real background push receipt was proven. The exact API/Web candidates are published for review. Next: disposition API PR #74, finish full validation, then record HTTPS browser/device receipt, safe lock-screen text, click-through and expired-subscription cleanup. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `EN-MVP01`

```text
BLOCKED — In-app notifications, Sidekiq email delivery, preferences, event docs and Mailpit integration exist. Fresh focused API email coverage passes 77 runs/428 assertions, fresh Web coverage passes seven files/148 tests, and a historical synthetic email reached Mailpit successfully. The exact API/Web candidates are published for review. Full suites were not run, and there is no complete current event/recipient/preference/retry/rendering matrix. Next: disposition open notification PRs, complete the matrix and finish full/API-to-Mailpit checks. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `CPD-MVP01`

```text
BLOCKED — The cross-project dashboard, role-safe API, toolbar/filter/sort and recommendation work are implemented. Fresh focused Web tests pass 55 with one todo at published candidate 832d5e47; Web lint/type-check and the focused API task-prioritisation test (17 runs, 80 assertions) also pass. Browser smoke passed active-unit loading, filters and mobile-width rendering, but the previous-unit API request hung. Both production-build attempts on the Web parent were OS-killed (reduced-worker retry exit 137), full suites are incomplete, open CPD PR heads require disposition, and no auditable CPD-Q05 or CPD-D02 completion evidence was located. Next: fix/verify previous-unit loading, obtain a resource-sufficient production-build result and full validation, complete or explicitly defer Q05/D02, and record privacy-safe role acceptance. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `PPI-MVP01`

```text
BLOCKED — The task-level PPI uses an authorised live endpoint with privacy-safe suppression. Fresh API core/preference coverage passes 103 runs and 5,608 assertions, and focused Web coverage passes seven files/93 tests. Browser smoke showed only the safe unavailable state. The unit-summary and burndown remain demo/mock-backed; passing their mock-state tests is not live API evidence, and no PPI-Q02 or live unit-summary API evidence was located. Next: disposition Web PR #77 and open PPI heads, complete full-suite plus eligible/suppressed synthetic-cohort manual acceptance, and keep Q02/live unit-summary work open or explicitly deferred. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
```

### `ON-MVP01`

```text
BLOCKED — A historical combined CPD/PPI/EN/MN stack is evidenced, and newer clean API/Web integration candidates include the current feature heads. The exact candidates are published but unapproved; full suites were not run, composed-stack acceptance is incomplete, multiple open PR heads need explicit disposition, and the Deploy lock does not pin the current candidates. Exact candidate-image scans are not clean: API has 35 critical/577 high instances and Web has 33 critical/394 high instances, requiring applicability review, remediation or named risk acceptance and rescan. Next: finish PR disposition and fresh validation, update Deploy gitlinks/manifest, run composed/manual acceptance including real Web Push, resolve the image scan gate, attach SBOM/provenance/signature evidence, and obtain named-owner go/no-go. Evidence index: docs/evidence/ontrack-mvp-2026-08-26/README.md
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
