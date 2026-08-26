# T2 2026 Branch Register

Use this page to find the current branch for an objective and to distinguish an operational pull-request target from a proposed or validation-only branch.

## Status language

- **Operational target** means contributors may base task branches on it and open pull requests back to it.
- **Candidate / unapproved** means the branch is for combined validation or review only. It is not a student task pull-request target and is not approved for release.
- **Suggested / unapproved** means the name is a planning proposal. Do not create or use it until the repository lead records written approval and the approved base commit.
- **Conditional** means no branch should exist unless the named design or technical trigger is approved.
- A branch head recorded below is an observation, not evidence that a lead approved a merge, deployment, or release.

## Current public branch heads

These heads were verified against GitHub on **26 August 2026 (AEST)**. Re-check GitHub before creating a branch because heads can move.

| Repository | Branch | Observed head | Status and use |
|---|---|---|---|
| Web | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x) | [`11bbcbf7`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/11bbcbf700836013cbd40a44bab0d99ef30cca9f) | Public release-line head. Record lead approval before using this exact commit as a new objective base. |
| API | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/11.0.x) | [`2a67e30f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/2a67e30f0f1cfebbf90ad49f264515e7618e7f79) | Public release-line head. Record lead approval before using this exact commit as a new objective base. |
| Deploy | [`11.0.x`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/11.0.x) | [`c4264f21`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/c4264f21ad7c5789251e8be58ba239432c759dbd) | Public release-line head; not a general feature-work destination. |
| Web | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) | [`7b1aeb80`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/7b1aeb804cde94b7b8e8324f478f59c4b5278ae1) | Operational target for Cross-Project Dashboard Web tasks. |
| API | [`feature/cross-unit`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) | [`18f9f0da`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/18f9f0daec1d34e79d704bcffdd2213322d62a20) | Operational target for Cross-Project Dashboard API tasks. |
| Web | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/notifications) | [`35ee9fa3`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/35ee9fa31c4b1c987e79c62cdfce93c270d30dc9) | **Canonical operational target for both Email and Mobile Notifications.** |
| API | [`feature/notifications`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/notifications) | [`cc46e034`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/cc46e034004359477c8c06ee1fcc6fa0d666fdae) | **Canonical operational target for both Email and Mobile Notifications.** |
| Web | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) | [`eda7b6b0`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/eda7b6b044cac5f9b6630270a0ee37684fb692be) | Operational target for Peer Progress Indicator Web tasks. |
| API | [`feature/peer-progress-indicator`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) | [`40d676ce`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/40d676ce1fcbf3abddd19559a7e392221f4bb7ba) | Operational target for Peer Progress Indicator API tasks. |

The older `feature/email-notifications` and `feature/mobile-notifications` refs are not T2 task pull-request targets. They are retained repository history. New Email and Mobile work must use `feature/notifications`.

## Published and candidate integration heads

| Repository | Integration branch | Head | Status |
|---|---|---|---|
| Web | [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/11.0.x-all-features-20260824) | [`231a8127`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/231a8127d530ceec07f01a6e4d15e30a914bd167) | Published historical integration foundation; not a student PR target. |
| API | [`integration/11.0.x-all-features-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/11.0.x-all-features-20260824) | [`e5d8c58a`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/e5d8c58a8eaac91ca93bef9b3e7a1443dec8c8e8) | Published historical integration foundation; not a student PR target. |
| Web | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/integration/ontrack-mvp-validation-20260826) | [`832d5e47`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/832d5e47eb26ff2e21ce25e576daa13b3054cc3e) | **Published validation candidate / unapproved.** Combines the current release line with Cross-Project Dashboard, PPI and canonical Notifications, plus the focused-test constructor repair. It is evidence and review input, not a student PR target or release approval. |
| API | [`integration/ontrack-mvp-validation-20260826`](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/integration/ontrack-mvp-validation-20260826) | [`75d7337f`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/75d7337fd0dd04f9b3a985f287e40f3ec6a467a0) | **Published validation candidate / unapproved.** Combines the current release line with Cross-Project Dashboard and canonical Notifications on the existing integration foundation. It is evidence and review input, not a student PR target or release approval. |
| Deploy | [`integration/deploy-all-features-foundation-20260824`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/integration/deploy-all-features-foundation-20260824) | [`7410f196`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/7410f1963aa2fdd9ecd7fbe76843b0705c6d74cb) | Current public combined-stack foundation. Its use for final MVP validation or release remains unresolved and requires deploy-lead approval. |

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
| Web | `feature/student-onboarding` is the suggested objective branch name. | **Suggested / unapproved.** No matching public branch was found on 26 August 2026. A repository lead must approve the name and exact Web base SHA before it is created. |
| API | No branch. | **Conditional.** Create one only if the approved state design and TUT-S01 security review require server-side tutorial state. Do not reuse or redefine `has_run_first_time_setup`. |
| Deploy | No branch. | **Conditional.** Create one only after a reproducible migration, environment, submodule or release need is demonstrated and approved. |
| Guide documentation | [`docs/ontrack-mvp-evidence-20260826`](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/ontrack-mvp-evidence-20260826), based on guide `main` at `5d20dd8d7f6451cbab01e216ab130843e4046528`. | Published documentation candidate; pending review/merge. |

Read the complete [First-Time Tutorial objective and evidence index](first-time-tutorial-objective.md) before assigning or starting tutorial work.

## Pull-request destination table

| Jira objective | Web PR base | API PR base | Deploy PR base |
|---|---|---|---|
| Cross-Project Dashboard | `feature/cross-unit` | `feature/cross-unit` | None unless separately approved |
| Email Notifications | `feature/notifications` | `feature/notifications` | None unless separately approved |
| Mobile Notifications | `feature/notifications` | `feature/notifications` | None unless separately approved |
| Peer Progress Indicator | `feature/peer-progress-indicator` | `feature/peer-progress-indicator` | None unless separately approved |
| First-Time Tutorial | Pending lead-approved tutorial branch | None unless state design requires it | None unless a Deploy need is proven |

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

1. Link the written lead decision or pull request.
2. Record repository, source branch, full source SHA, target branch, owner and date.
3. Update this register and the relevant objective evidence index in the same documentation pull request.
4. Post the changed ownership or merge order in team chat before another contributor edits the affected shared surface.
5. Keep the previous decision in Git history; do not rewrite an approval that was never given.

## Access problems

If a branch link does not open, you cannot clone a repository, or GitHub refuses your push, contact **Maple Fox** on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`
- Include your GitHub username, repository, branch and a screenshot of the error.
