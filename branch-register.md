# T2 2026 Branch Register

Use this page to find the current branch for an objective and to distinguish an operational pull-request target from a proposed or validation-only branch.

## Status language

- **Operational target** means contributors may base task branches on it and open pull requests back to it.
- **Candidate / unapproved** means the branch is for combined validation or review only. It is not a student task pull-request target and is not approved for release.
- **Suggested / unapproved** means the name is a planning proposal. Do not create or use it until the repository lead records written approval and the approved base commit.
- **Conditional** means no branch should exist unless the named design or technical trigger is approved.
- A branch head recorded below is an observation, not evidence that a lead approved a merge, deployment, or release.

## Current public branch heads

These heads were verified against GitHub on **27 August 2026 at 09:49:05Z**. Re-check GitHub before creating a branch because heads can move.

| Repository | Branch | Observed head | Status and use |
|---|---|---|---|
| Web | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x) | [`9c618c3b`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/9c618c3b04c272a34bceba62bba4c7a7627cf96d) | Public release-line head. Record lead approval before using this exact commit as a new objective base. |
| API | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x) | [`cb03f80b`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/cb03f80bdba5a19d12a821d3cb7e11f19b1b5c7f) | Public release-line head. Record lead approval before using this exact commit as a new objective base. |
| Deploy | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x) | [`5351009d`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/5351009df475c4a3d4f788110b0197ce64b3d3f4) | Public release-line head; not a general feature-work destination. |
| Web | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | [`9962e7ea`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/9962e7ea171a2bf6d7a12be50874fa5c7ee77e21) | Operational target for Cross-Project Dashboard Web tasks. |
| API | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | [`18f9f0da`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/18f9f0daec1d34e79d704bcffdd2213322d62a20) | Operational target for Cross-Project Dashboard API tasks. |
| Web | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`35ee9fa3`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/35ee9fa31c4b1c987e79c62cdfce93c270d30dc9) | **Canonical operational target for both Email and Mobile Notifications.** |
| API | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | [`ad708860`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/ad708860d72f16dca0f4e7ab5aa6bf0310c08131) | **Canonical operational target for both Email and Mobile Notifications.** |
| Web | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | [`e12b5f89`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/e12b5f8927830ab35f0243039a23bbf70e4a9cf3) | Operational target for Peer Progress Indicator Web tasks. |
| API | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | [`b0ac35f4`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/b0ac35f4083aaec66c10e1db4b3822655a66ae90) | Operational target for Peer Progress Indicator API tasks. |

The older `feature/email-notifications` and `feature/mobile-notifications` refs are not T2 task pull-request targets. They are retained repository history. New Email and Mobile work must use `feature/notifications`.

## Published and historical integration heads

| Repository | Integration branch | Head | Status |
|---|---|---|---|
| Web | `integration/11.0.x-all-features-20260824` | [`231a8127`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/231a8127d530ceec07f01a6e4d15e30a914bd167) | Historical immutable integration commit; the remote branch was deleted after merge. Not a student PR target. |
| API | [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/11.0.x-all-features-20260824) | [`fc976800`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/fc97680031ac377f5c71379243ae9214da3a83b5) | Published historical integration branch; not a student PR target. |
| Web | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/ontrack-mvp-validation-20260826) | [`832d5e47`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/832d5e47eb26ff2e21ce25e576daa13b3054cc3e) | **Published validation candidate / unapproved.** Frozen 26 August composition of its then-current release line, Cross-Project Dashboard, PPI and canonical Notifications, plus the focused-test constructor repair. Later branch movement is not automatically covered. |
| API | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/ontrack-mvp-validation-20260826) | [`75d7337f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/75d7337fd0dd04f9b3a985f287e40f3ec6a467a0) | **Published validation candidate / unapproved.** Frozen 26 August composition of its then-current release line, Cross-Project Dashboard and canonical Notifications on the integration foundation. Later branch movement is not automatically covered. |
| Web | [`closure/web-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/closure/web-ontrack-mvp-20260827) | [`5255c271`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/5255c271778643cd6f972e3bce1d83ecdb2e292d) | **Published final validation candidate / unapproved.** Type-check, zero-warning lint, CPD (98 pass/1 todo), PPI (109), notifications (177), full suite (103 files/605 pass/1 todo) and Node 22 production build (99.911 seconds) pass. No pull request is open; composed/manual acceptance and release approval remain open. |
| API | [`closure/api-ontrack-mvp-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/closure/api-ontrack-mvp-20260827) | [`f25945d`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/f25945d228c1a3b321412047dcfe304e43cb7658) | **Published final validation candidate / unapproved.** Includes the previous/all CPD query repair and deterministic eight-way CI sharding. Focused regression and shard integrity checks pass; hosted full-suite CI and the final image scan are pending. No pull request is open. |
| Deploy | `integration/deploy-all-features-foundation-20260824` | [`7410f196`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb) | Historical immutable integration commit; the remote branch was deleted after merge into `11.0.x`. |
| Deploy | Historical prior-candidate lock | [`32c7abbf`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/32c7abbf5551d172970c31acea9522ec4da29b08) | **Historical provenance only.** Gitlinks introduced at [`c4c0d9a5`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4c0d9a5fc37b9346206ed2963fbfa3684c2a696) pinned API `75d7337f` plus Web `832d5e47`; `32c7abbf` correctly labelled that pair as prior candidates. |
| Deploy | [`chore/ontrack-mvp-lock-20260827`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/chore/ontrack-mvp-lock-20260827) | [`ff4aad5e`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ff4aad5efaedff58a48f0840dfe2431196b116bd) | **Published final validation lock / unapproved.** Pins API `f25945d` plus Web `5255c271`. Fresh recursive clone resolved the exact component/nested submodules, and the merged Compose render/contract test passed. No pull request or running composed-stack validation exists; this is not a student target or release approval. |

Do not open student task pull requests into an integration branch. See [cross-objective-coordination.md](cross-objective-coordination.md) for merge order, shared surfaces, CI rules and deploy triggers.

The [four-stream MVP evidence and handover index](docs/evidence/ontrack-mvp-2026-08-26/README.md) records the acceptance gaps, historical evidence and next actions for the current combined candidates.

## Local development environment

| Repository | Branch | Link | Status |
|---|---|---|---|
| Deploy | `fix/local-dev-run` | [Open Deploy local setup branch](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/local-dev-run) | Operational local-development foundation at observed head [`ab6b0ebe`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ab6b0ebeb26a5560e99626552b1a5c37881bb80c). It is not a general product-feature target. |

The Deploy repository runs the Web and API code checked out in neighbouring local folders. Normal feature work belongs in Web or API unless a ticket demonstrates and records a Deploy-specific change.

## Cross-Project Dashboard

The user-facing objective is **Cross-Project Dashboard**; the existing code branch retains the earlier `cross-unit` name.

| Repository | Shared feature branch | Pull-request destination |
|---|---|---|
| Web | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | `feature/cross-unit` |
| API | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | `feature/cross-unit` |

## Email and Mobile Notifications

Email and Mobile Notifications share one coordinated product branch in each repository. This keeps preferences, event delivery, email, Web Push and notification evidence on the same baseline.

| Repository | Canonical shared feature branch | Pull-request destination |
|---|---|---|
| Web | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | `feature/notifications` |
| API | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | `feature/notifications` |

## Peer Progress Indicator

| Repository | Shared feature branch | Pull-request destination |
|---|---|---|
| Web | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | `feature/peer-progress-indicator` |
| API | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | `feature/peer-progress-indicator` |

## First-Time Tutorial

The tutorial is a planned Web objective. Its user-facing name is **First-Time Tutorial**; code, folders and branch names should use `student-onboarding` to avoid confusion with class tutorials.

| Repository | Branch plan | Status |
|---|---|---|
| Web | Create `feature/student-onboarding` from observed Web `11.0.x` SHA `9c618c3b04c272a34bceba62bba4c7a7627cf96d` when implementation begins. | **Requester-approved plan; branch not created.** Requester approval recorded 27 Aug 2026; named-leader confirmation waived by requester. Re-audit before creation and record any moved base. |
| API | No branch. | **Conditional.** Create one only if the approved state design and TUT-S01 security review require server-side tutorial state. Do not reuse or redefine `has_run_first_time_setup`. |
| Deploy | No branch. | **Conditional.** Create one only after a reproducible migration, environment, submodule or release need is demonstrated and approved. |
| Guide documentation | Historical evidence branch [`docs/ontrack-mvp-evidence-20260826`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/ontrack-mvp-evidence-20260826) at [`c07f60f`](https://github.com/ontrack-features-t2-2026/github-guide/commit/c07f60f29c05364e1d643047456033c1bfae2b0d); published closure branch [`docs/closure-tutorial-mvp-deploy-20260827`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/closure-tutorial-mvp-deploy-20260827) through [`4bb0bc9`](https://github.com/ontrack-features-t2-2026/github-guide/commit/4bb0bc99c9a88b1b6995899cfa4aa33a22b58809). | Published evidence/closure work; no pull request is open and no product or release approval is inferred. |

Read the complete [First-Time Tutorial objective and evidence index](first-time-tutorial-objective.md) before assigning or starting tutorial work.

## Pull-request destination table

| Jira objective | Web PR base | API PR base | Deploy PR base |
|---|---|---|---|
| Cross-Project Dashboard | `feature/cross-unit` | `feature/cross-unit` | None unless separately approved |
| Email Notifications | `feature/notifications` | `feature/notifications` | None unless separately approved |
| Mobile Notifications | `feature/notifications` | `feature/notifications` | None unless separately approved |
| Peer Progress Indicator | `feature/peer-progress-indicator` | `feature/peer-progress-indicator` | None unless separately approved |
| First-Time Tutorial | Approved plan `feature/student-onboarding`; create only when implementation starts | None unless state design requires it | None unless a Deploy need is proven |

Do not use `11.0.x` or an integration branch as the base for an ordinary student task pull request.

## Student task branch naming

Create a task branch from the matching operational shared feature branch:

```text
<workstream>/<Jira-ticket>-<short-description>
```

Examples:

```text
feature/ABC-123-notification-preferences
docs/ABC-124-email-event-guide
migration/ABC-125-update-notification-service
security/ABC-126-authorisation-tests
```

Suggested branch names in Planner do not override this register or lead approval. Record the source branch and source commit in the ticket before starting.

## Recording a new approval or moving head

When a branch decision changes:

1. Link the authorised written decision or pull request and state who supplied it.
2. Record repository, source branch, full source SHA, target branch, owner and date.
3. Update this register and the relevant objective evidence index in the same documentation pull request.
4. Post the changed ownership or merge order in team chat before another contributor edits the affected shared surface.
5. Keep the previous decision in Git history; do not rewrite an approval that was never given.

## Access problems

If a branch link does not open, you cannot clone a repository, or GitHub refuses your push, contact **Maple Fox** on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`
- Include your GitHub username, repository, branch and a screenshot of the error.
