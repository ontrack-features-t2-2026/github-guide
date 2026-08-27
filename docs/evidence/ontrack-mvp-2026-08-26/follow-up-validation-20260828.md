# Follow-up validation and open-PR handover — 2026-08-28

This record adds the final 28 August validation facts to the immutable 27
August closure evidence. It does not replace the earlier exact-SHA records or
promote an open pull request to merged, approved or released.

## Evidence boundary

The clean composed runtime used the already merged lock and component sources:

| Repository | Exact source | Relationship to the runtime |
| --- | --- | --- |
| API | [`6c74dbbc07e219d60ca49e1b5ea42f737e5ef225`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/6c74dbbc07e219d60ca49e1b5ea42f737e5ef225) | Source pinned by the merged Deploy lock. |
| Web | [`16c22c992c821e16981c8f8cb2601f0a61f73007`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/16c22c992c821e16981c8f8cb2601f0a61f73007) | Restored clean before the final cache-free assertions. |
| Deploy | [`ad463dc8b1b8005f0774819fe4d506da3c281947`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ad463dc8b1b8005f0774819fe4d506da3c281947) | Merged validation lock that pins the API and Web sources above. |

Only synthetic database fixtures and the local browser's Demo-mode session
setting differed from the committed sources. Deploy verifier patch
[`37a90d7f`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/37a90d7fc0bfd0b9f43e6cad595415f61d8fc1c2)
was run separately against this stack. It was not substituted as the runtime
image or Deploy source revision.

## CPD live validation

The apparent one-unit result was the intended quiet baseline from
`DemoDataMaskInterceptor`, not a Cross-Project Dashboard data-loading defect.
On a clean Web session at `localhost:4401`, enabling Demo mode through
`/demo-controls` exposed the real synthetic API dataset:

- the home view listed `COS10001`, `COS20007` and `COS30046`;
- the cross-project dashboard rendered all three units; and
- their rendered task counts were 37, 15 and 5 respectively.

The component-focused CPD suite remains green at 54/54. The broader exact-head
CPD matrix recorded in the closure evidence remains 98 passing tests with one
existing todo. No CPD source change or product-fix pull request was needed or
is claimed for this result. The
[CPD-Q05 as-built wireframe and usability/accessibility record](cpd-q05-wireframe-usability-validation-20260828.md)
maps these observations and exact-source tests without inventing participant
feedback.

This closes the suspected live-cache/data-hydration gap. The requester's owner
waiver covers the remaining inactive-peer subjective-opinion gate without
inventing third-party feedback. It does not waive protected review: the
technically green CPD documentation/handover
[#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108)
at
[`6136d540`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/6136d540b1f4a50c3b6c1f3338621d230e589b84)
remains open and review-required. CPD is therefore **validated / handed over —
protected publication review pending**, rather than blocked on a product
defect.

## API follow-up pull requests

The following heads are open, mergeable and technically green. Their normal
protected review policies remain pending; none is part of the merged runtime
tuple above.

| Pull request | Exact head | Verified result | Remaining gate |
| --- | --- | --- | --- |
| API [#79](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/79) | [`17538ce3`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/17538ce37c3ca9fd564981685c11b04005720080) | Notification documentation correction; builds, RuboCop, CodeQL, eight unit-test shards and exact-union roll-up pass. | Protected review. |
| API [#80](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/80) | [`42d4ebaf`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/42d4ebaf8862461c46bd0eec94df876cd3aab94e) | FILE-S01 test/security evidence; focused validation records 36 runs/196 assertions with no failures, errors or skips; hosted technical checks pass. | Protected review; retained race, staging and quota risks remain explicit. |
| API [#81](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/81) | [`380d15bc`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/380d15bc19e5ae99a8a28f6af3d9a4370e79d5d2) | Twelve helper-backed shards and the exact-union aggregate passed twice in [Actions run 33078552910](https://github.com/ontrack-features-t2-2026/doubtfire-api/actions/runs/33078552910); builds, RuboCop and CodeQL also pass. Confirmation maximum shard wall time was 7:22 versus the 8-shard 9:19 baseline, and maximum test-step time was 3:48 versus 5:28. | Protected review. Repeated image, service and database setup still dominates, so the change does not consistently make total shard wall time five minutes or less. |

## Notification verifier follow-up

Deploy
[#27](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/27)
at
[`37a90d7f`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/37a90d7fc0bfd0b9f43e6cad595415f61d8fc1c2)
corrects the verifier to distinguish the anonymous public-settings check from
the authenticated settings endpoint and to poll Mailpit for asynchronous
delivery. The verifier passed against the exact merged API/Web/Deploy tuple
above. Its hosted Deploy checks are green; the pull request remains open and
review-required. This verifies the local email path, not production SMTP or a
real-device background Web Push receipt/click.

## Web image remediation candidate

The exact merged-Web development-image evidence at `16c22c99` remains
immutable: it reports 33 Critical and 395 High findings. Open Web remediation
[#111](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/111)
at
[`b37b75a0`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/b37b75a0051b9596a939830368a15804046080c6)
adds a separate candidate result:

- the development image falls from 428 High/Critical instances to 30 (4
  Critical and 26 High), a 93% reduction, with no fixable High/Critical
  instance left in that scan;
- the actual hardened `deploy.Dockerfile` production image, OCI index digest
  `sha256:d2b50b6edca157df5543f0975203ce5226198ad3db00083a9bbe7c4e4c95c99f`,
  reported zero detected findings in the complete point-in-time Trivy scan;
- type-check, lint, 607 tests plus one existing todo, development and release
  builds, deployment-configuration verification, Nginx/runtime-asset smoke and
  scan checks pass; and
- all hosted technical checks are green.

The zero-finding result is not an unconditional production-safety statement.
It is bound to that digest, scanner database and configuration. Application
security, provenance, secrets/configuration, protected review, merge,
deployment and release gates still apply. PR #111 remains open and
review-required, so this candidate does not rewrite the original merged-image
scan or constitute security acceptance.

## Closure implications

- `CPD-MVP01`: validated / handed over, with protected publication review on
  Web #108 still pending; no product fix was required.
- `EN-MVP01`: local MVP delivery is reconfirmed by the corrected verifier;
  production SMTP/bounce acceptance remains out of scope.
- `MN-MVP01`: still blocked on an observable operating-system background
  notification receipt and safe click-through.
- `PPI-MVP01`: remains validated / handed over within the approved mock-backed
  unit-summary boundary; no live unit-level API is claimed.
- `ON-MVP01`: handed over with final technical follow-ups recorded, but still
  blocked from unconditional closure/release by protected Guide, CPD handover,
  API/Deploy/security-candidate reviews, Mobile receipt/click, security/release
  disposition and go/no-go/rollback authority.

The [88/88 de-identified feedback traceability
table](feedback-traceability-20260827.md) remains complete and unchanged. The
requester's waiver applies only to inactive third-party subjective opinion
gates. It does not satisfy branch protection, independent GitHub review,
security risk acceptance or release authority.
