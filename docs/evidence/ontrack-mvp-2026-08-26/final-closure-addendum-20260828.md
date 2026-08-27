# Final closure addendum — 2026-08-28

## Purpose and evidence boundary

This addendum records the final pull-request disposition and validation that
landed after the original Guide closure evidence was written. It supersedes
dated statements that the pull requests below are open or awaiting protected
review. It does **not** rewrite earlier runtime observations as if they were
performed against later commits: the historical reports remain attached to
their named SHAs.

Guide
[#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2)
published the tutorial, setup, coordination and MVP evidence to `main` as
[`e887bf3bb4c7eee05db9f7e654bde4811c18c0da`](https://github.com/ontrack-features-t2-2026/github-guide/commit/e887bf3bb4c7eee05db9f7e654bde4811c18c0da).

## Final merged follow-ups

| Area | Final disposition and evidence |
| --- | --- |
| Cross-Project Dashboard phone layout | Web [#120](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/120), head [`275a9a5ecd7ac3fa63043eaf10fec8f323824024`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/275a9a5ecd7ac3fa63043eaf10fec8f323824024), merged as [`78dad4a99134bccf8429d8c778560ff9cbb1ac07`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/78dad4a99134bccf8429d8c778560ff9cbb1ac07). Below 640 px the dashboard stacks scope/search first, exposes secondary criteria through a counted `More filters` disclosure, and uses a single-open project accordion without horizontal page overflow. At 640 px and wider the existing desktop card presentation remains. Focused behavior passed 73/73 tests; the full Web suite passed 612 tests with one existing todo; lint, typecheck, build, CodeQL and computed 320/390/640/1024 px layout checks passed. |
| CPD documentation and handover | Web [#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108), refreshed head [`b6dea84bf09850cfa64095748a5ea14eeb14cf94`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/b6dea84bf09850cfa64095748a5ea14eeb14cf94), merged as [`d4af3aa95a53a64386a28ec96212cb509fc2dcb4`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/d4af3aa95a53a64386a28ec96212cb509fc2dcb4). The user and contributor guidance now describes the actual stacked phone layout and preserved wider layout. The protected publication-review gate recorded in the earlier evidence is resolved. |
| Web image remediation | Web [#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111), refreshed head [`d01bd82736ceec425e539e58324f921c7fbdf654`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/d01bd82736ceec425e539e58324f921c7fbdf654), merged as [`9d8aa753a6f1d319944e0122b5b670836fcddf95`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/9d8aa753a6f1d319944e0122b5b670836fcddf95). The final release image `sha256:cc90cced09ff12f0165181435ad0522eb579655d246101f6cadea161f66729ff` used Alpine 3.24.1 with 71 packages. Trivy 0.74.0 with the then-current database reported zero detected findings across Unknown, Low, Medium, High and Critical. Deployment verification, typecheck, lint, 612 tests plus one todo, release build, Nginx configuration and HTTP/asset smoke checks passed. The [refresh record](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111#issuecomment-5445829863) is preserved on the pull request. |
| Notification queue delivery | API [#95](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/95), head [`b977a541d0c6642b9026b3758a612226674bc294`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/b977a541d0c6642b9026b3758a612226674bc294), merged as [`1003df48250c5e32e0298c5906da9f10b1fa6660`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/1003df48250c5e32e0298c5906da9f10b1fa6660). Push delivery now uses the dedicated `notifications` queue rather than the unconsumed development `default` queue. Deploy [#28](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/28), head [`48514e9efcb5da004f1d47ef9a10e55ccfcaaa26`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/48514e9efcb5da004f1d47ef9a10e55ccfcaaa26), merged as [`de12eb7750f6c80dba2b794e110a217839368d41`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/de12eb7750f6c80dba2b794e110a217839368d41), makes the normal development worker consume exactly `mailers,notifications` while keeping unsupported `default` work excluded. |
| Notification verifier reliability | Deploy [#29](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/29), head [`bf643b5603b7b8f49ac9f91a878cda447dbdcdfe`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/bf643b5603b7b8f49ac9f91a878cda447dbdcdfe), merged as [`42675ea6a68cf90e81592b73f4b51bbeb6bb08be`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/42675ea6a68cf90e81592b73f4b51bbeb6bb08be), fixes startup ordering, public/authenticated settings checks and asynchronous Mailpit polling. Deploy [#30](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/30), head [`462c8878a0008af49ade72c14b953ac682248f0c`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/462c8878a0008af49ade72c14b953ac682248f0c), merged as [`e791b57ba3e949e01285270f4bc0ea29fb23bb39`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/e791b57ba3e949e01285270f4bc0ea29fb23bb39), adds coordinated readiness polling for API, Web and the proxied public-settings route. Superseded Deploy [#27](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/27) was closed without merge. |
| Notification and security documentation | API [#80](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/80) merged as [`062e09522a52c6e95404c28f36165f02f3059c0d`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/062e09522a52c6e95404c28f36165f02f3059c0d). API [#79](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/79) merged as [`ea265b11c48a95865648d472a52bb875963636eb`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/ea265b11c48a95865648d472a52bb875963636eb), retaining the verified Edge/macOS observation without claiming universal Edge behavior. |

The final notification verifier was rerun against merged API
`ea265b11c48a95865648d472a52bb875963636eb`, Web
`9d8aa753a6f1d319944e0122b5b670836fcddf95` and Deploy
`e791b57ba3e949e01285270f4bc0ea29fb23bb39`. Containers, published ports,
public API and Web proxy checks, SMTP/Mailpit, subscription schema and keys,
service-worker assets, a real synthetic comment email, cleanup and empty
queue/retry/dead-state checks all passed. This confirms the application and
worker path; it is not evidence that an operating system displayed or opened a
background push notification.

## API test-runtime follow-up

API [#96](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/96),
final head
[`723b23302df5a9776ded806f0896f68a9d0b540f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/723b23302df5a9776ded806f0896f68a9d0b540f),
merged into `11.0.x` as
[`c085538d1880267a130b66791d026db6e566dc37`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/c085538d1880267a130b66791d026db6e566dc37).
It replaces the earlier shard-count-only proposal in API
[#81](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/81), which
was closed as superseded.

Both hosted attempts at the exact PR head executed the independently inventoried
**1,191 unique concrete Minitest IDs**, with no missing or duplicate executed
IDs:

| Attempt | Exact run | Start to aggregate | Maximum shard job | Maximum test step | Result |
| --- | --- | ---: | ---: | ---: | --- |
| Cold cache | [run 33123464009, attempt 1](https://github.com/ontrack-features-t2-2026/doubtfire-api/actions/runs/33123464009/attempts/1) | 6m36s | 6m04s | 2m26s | 1,191/1,191 exact IDs; pass |
| Warm cache | [run 33123464009, attempt 2](https://github.com/ontrack-features-t2-2026/doubtfire-api/actions/runs/33123464009/attempts/2) | 5m12s | 4m55s | 2m41s | 1,191/1,191 exact IDs; pass |

The warm maximum shard job met the five-minute goal at 4m55s. The visible
workflow still took 5m12s from start to aggregate, and the cold attempt took
6m36s, so this evidence does not claim a consistent five-minute-or-less
end-to-end result. PR #96 changes CI, test planning and test support rather than
the notification runtime; the verifier observation above therefore remains
anchored to API `ea265b11` instead of being silently promoted to `c085538d`.

## Current ticket disposition

- `TUT-F01`, `DOC-2` and `MISC-X01`: repository documentation and Guide
  publication are complete through Guide #2.
- `CPD-MVP01`: validated, documented and handed over; the stacked phone layout
  and protected documentation publication are merged.
- Docker Image Vulnerability Scan: execution and Web remediation publication
  are complete. The zero-finding result is digest-, configuration- and
  database-bound; it is not unconditional application security, deployment or
  release approval.
- `EN-MVP01` and `PPI-MVP01`: remain validated and handed over within their
  documented MVP boundaries.
- `MN-MVP01` and `ON-MVP01`: all repository and local-path gates recorded here
  are complete. Their one genuine remaining evidence gate is observing a real
  operating-system background notification and clicking it through to the safe
  OnTrack route on a real device.

## Setup walkthrough replacement note

The current 11m37s setup walkthrough remains available from its
[immutable evidence revision](https://github.com/ontrack-features-t2-2026/github-guide/blob/6eabb08535a9be040e908b7a237765197945badc/media/setup/ontrack-t2-2026-setup-walkthrough.mp4)
and is an acceptable fallback while a replacement is prepared. Replacing
`media/setup/ontrack-t2-2026-setup-walkthrough.mp4` does not block the closure
above. When the replacement is committed at that path, its actual duration,
byte size and SHA-256 must replace the old metadata and the transcript must be
checked and refreshed where its timing or content differs. No replacement
length or checksum is invented in this record.
