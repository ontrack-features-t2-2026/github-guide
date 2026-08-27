# Final closure validation — 27 August 2026

This report records the final local composed-stack and hosted-CI evidence for
the closure candidates. It is evidence for review; it is not production
deployment approval or acceptance of the open image-vulnerability risk.

## Exact revisions and pull requests

| Repository | Exact revision | Pull request | Base | State |
|---|---|---|---|---|
| API | `6c74dbbc07e219d60ca49e1b5ea42f737e5ef225` | [#77](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/77) | `11.0.x` | Merged as `6b45974eba3417efec8ef5a519ce1f80b4ee32e0` |
| Web | `16c22c992c821e16981c8f8cb2601f0a61f73007` | [#105](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/105) | `11.0.x` | Merged as `4034e7d1a8d5f7bb68239eb63f1089ab84a8be3d` |
| Deploy lock | `ad463dc8b1b8005f0774819fe4d506da3c281947` | [#26](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/26) | `11.0.x` | Merged as `6c61802e964b5e9adafad8610610fba9aace467c` |
| Guide | This report on `docs/closure-tutorial-mvp-deploy-20260827` | [#2](https://github.com/ontrack-features-t2-2026/github-guide/pull/2) | `main` | Publication PR |

The requester waived a separate named-leader approval. Repository review,
branch protection, security disposition and release authority are not waived.

Web #105 merged current `11.0.x` into the closure head to resolve one
`project-plan.component.html` conflict. The resolution kept the `f-page-container`
layout and the target-grade selector's accessibility/disabled attributes. Its
hosted test, Node, lint and review-policy checks passed, covering 607 tests in
104 files. Deploy `ad463dc8` now pins API `6c74dbbc`, Web `16c22c99` and LTI
`ec0df42b`.

Exact merged-head verification also passed. At Web `16c22c99`, the focused
layout tests passed 4 tests, CPD passed 98 with one existing todo, PPI passed
109 and Notifications passed 177; targeted formatting, conflict-marker and
diff checks passed. `package.json`, `package-lock.json` and `Dockerfile` are
byte-identical to the composed predecessor `5255c271`. Hosted
[test run 33069683223](https://github.com/ontrack-features-t2-2026/doubtfire-web/actions/runs/33069683223)
and [build run 33069683195](https://github.com/ontrack-features-t2-2026/doubtfire-web/actions/runs/33069683195)
passed. At Deploy `ad463dc8`, exact-source Compose render and
`compose_contract_test.py` passed against API `6c74dbbc`, Web `16c22c99` and
LTI `ec0df42b`. Only the Web gitlink changed from predecessor lock `4851fc1`.

## Hosted API validation and test-time work

[API run 33066442639](https://github.com/ontrack-features-t2-2026/doubtfire-api/actions/runs/33066442639)
completed successfully. All eight helper-backed shards and the exact-manifest
`unit-tests` roll-up passed. RuboCop, CodeQL and the API, worker, TeX and JPlag
production builds and review-policy check also passed before the PR merged.

| Shard | Test step |
|---:|---:|
| 1 | 4:31 |
| 2 | 4:58 |
| 3 | 5:25 |
| 4 | 4:40 |
| 5 | 2:50 |
| 6 | 2:31 |
| 7 | 3:19 |
| 8 | 3:39 |

The slowest test step improved from 8:31 to 5:25, a 36.4% reduction. The
strict five-minute target was missed by 25 seconds and must not be reported as
achieved. The previous/all CPD request also fell from 453 to 38 SQL queries and
from 4.218 to 2.390 seconds.

## Exact composed stack

The running local stack used API `6c74dbbc` and the pre-conflict Web closure
revision `5255c271`. Readiness,
service-worker and Mailpit checks passed. Only synthetic local users and data
were used. Web `16c22c99` subsequently passed hosted CI and the exact-head CPD,
PPI and Notifications focused matrices. The browser/runtime observations below
remain attached to `5255c271` rather than being promoted to the later head.

### Cross-Project Dashboard

- Active scope returned exactly DEMO10001, DEMO20007, DEMO30046 and DEMO30243.
- Previous scope returned DEMO09999; All returned the four active cards before
  DEMO09999.
- Global search `WORK` plus `Working On It` retained one matching task per
  visible project; clearing filters restored the active view.
- The composed API hydrated 30 tasks and 30 task definitions and returned 20
  recommendations across the four active units.

This closes the final composed previous/all browser gap. Separate `CPD-Q05`
and `CPD-D02` evidence was not found and remains a traceability/deferment item.

### Peer Progress Indicator

- Eligible project 88/task DUE7 returned and rendered 10% complete and 60%
  submitted. Advanced details rendered the independently privacy-rounded
  distribution: 20% Not Started, 20% Working On It, 20% Ready for Feedback,
  and 10% each Resubmit, Redo, Complete and Fail.
- Feature-disabled project 89/task DUE7 rendered the unavailable state without
  percentages or raw cohort counts.
- User-disabled API behaviour returned null metrics/distribution without raw
  counts, and the user preference was restored.

This is a live task-level PPI result attached to composed Web `5255c271`. It
does not convert the demo/mock-backed unit summary or burndown into a live API
feature. PPI-Q02 is closed separately against exact merged Web `16c22c99` by
the [validation and handover](ppi-q02-validation-handover-20260827.md): merged
PRs #31/#32/#38/#39, focused fixture/state validation (3 files/40 tests in
3.31s), privacy-safe state mapping, responsive evidence and production mock
gating pass. The supplied Planner criteria expressly place a live unit-level
API in future/out-of-scope work; no live unit API is claimed.

### Email Notifications

Four real model events traversed `NotificationService`, Sidekiq's `mailers`
queue, Action Mailer and Mailpit for the synthetic student only:

| Event | Notification | Safe route |
|---|---:|---|
| Tutor comment | 32 | `/projects/88/dashboard/OVERDUE` |
| Task status change | 33 | `/projects/88/dashboard/DUE3` |
| Extension granted | 34 | `/projects/88/dashboard/FUTURE` |
| Extension denied | 35 | `/projects/88/dashboard/DUE7` |

Sensitive comment/status/request markers were absent from rendered bodies.
Preference suppression produced no new notification or email while disabled.
The missing-record retry boundary was exercised, the exact retry entry was
removed, and final queues/retries/scheduled/busy workers were empty.

### Mobile/Web Push

The real Chrome acceptance reached these observable checkpoints:

1. localhost site permission was allowed and both registered macOS Chrome
   notification entries were enabled;
2. the profile rendered `This device will receive push notifications`;
3. the API-side subscription count was exactly one;
4. real hub notifications 36–39 used the safe route
   `/projects/88/dashboard/DUE7`;
5. Sidekiq loaded the subscription and completed the push-delivery jobs without
   an error; and
6. signing out deleted the device subscription, returning the API count to
   zero.

No operating-system banner or notification click was observable in the
controlled session, even after notifications were temporarily allowed while
screen sharing. The global sharing setting was restored immediately. Therefore
background receipt and click-through are **not** recorded as passed. Mobile
Notifications remains blocked on one observable browser/device receipt and
safe click-through result; no permission, receipt or click was fabricated.

## Security and release gates

The development-image scans are evidence, not approval:

- API: 35 Critical, 579 High, 1,843 Medium, 1,368 Low and 247 Unknown; the
  [compact raw pack and checksums](../../../evidence/raw/docker-image-vulnerability-scan-20260827/api-6c74dbb/)
  are published;
- exact merged Web `16c22c99`: 33 Critical, 395 High, 1,592 Medium, 1,197 Low
  and 163 Unknown at OCI index digest `sha256:35aef683…`; the
  [compact pack and checksums](../../../evidence/raw/docker-image-vulnerability-scan-20260827/web-16c22c9/)
  are published. The vulnerability tuple is identical to predecessor
  `5255c271` because Docker/package inputs did not change. This closes the exact
  digest gap, not the risk.

Neither image is production-safe as scanned. Remediation or an authorised,
expiring risk acceptance is required before release. The subsequently supplied
survey contains 88 responses; all 88 are mapped once in the
[de-identified feedback traceability table](feedback-traceability-20260827.md).
Email addresses, Discord usernames, timestamps and verbatim free-text responses
remain excluded from version control.
