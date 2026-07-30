# T2 2026 Branch Register

Use this page to find the correct starting branch and pull request destination for your objective.

## Local development environment

| Repository | Branch | Link |
|---|---|---|
| Deploy | `fix/local-dev-run` | [Open Deploy local setup branch](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/local-dev-run) |

The Deploy repository runs the Web and API code checked out in the neighbouring local folders. Normal feature work should be completed in Web or API unless the Jira ticket specifically requires a Deploy change.

## Cross-Unit Dashboard

| Repository | Shared feature branch | Link |
|---|---|---|
| API | `feature/cross-unit` | [Open API branch](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/cross-unit) |
| Web | `feature/cross-unit` | [Open Web branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/cross-unit) |

Task pull requests for this objective must target `feature/cross-unit` in the matching repository.

## Email Notifications

| Repository | Shared feature branch | Link |
|---|---|---|
| API | `feature/email-notifications` | [Open API branch](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/email-notifications) |
| Web | `feature/email-notifications` | [Open Web branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/email-notifications) |

Task pull requests for this objective must target `feature/email-notifications` in the matching repository.

## Mobile Notifications

| Repository | Shared feature branch | Link |
|---|---|---|
| API | `feature/mobile-notifications` | [Open API branch](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/mobile-notifications) |
| Web | `feature/mobile-notifications` | [Open Web branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/mobile-notifications) |

Task pull requests for this objective must target `feature/mobile-notifications` in the matching repository.

## Peer Progress Indicator

| Repository | Shared feature branch | Link |
|---|---|---|
| API | `feature/peer-progress-indicator` | [Open API branch](https://github.com/ontrack-features-t2-2026/doubtfire-api/tree/feature/peer-progress-indicator) |
| Web | `feature/peer-progress-indicator` | [Open Web branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/feature/peer-progress-indicator) |

Task pull requests for this objective must target `feature/peer-progress-indicator` in the matching repository.

## Pull request destination table

| Your Jira objective | Web PR base | API PR base |
|---|---|---|
| Cross-Unit Dashboard | `feature/cross-unit` | `feature/cross-unit` |
| Email Notifications | `feature/email-notifications` | `feature/email-notifications` |
| Mobile Notifications | `feature/mobile-notifications` | `feature/mobile-notifications` |
| Peer Progress Indicator | `feature/peer-progress-indicator` | `feature/peer-progress-indicator` |

Do not use `11.0.x` as the base branch for an ordinary student task pull request.

## Student task branch naming

Create your task branch from the matching shared feature branch.

Use this pattern:

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

Keep branch names short, meaningful and connected to the Jira ticket.

## Access problems

If a branch link does not open, you cannot clone a repository, or GitHub refuses your push, contact **Maple Fox** on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`
- Include your GitHub username, repository, branch and a screenshot of the error.
