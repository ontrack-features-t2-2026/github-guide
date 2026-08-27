# OnTrack Features T2 2026 - Student Start Here

Welcome to the shared GitHub workspace for the OnTrack feature teams in Trimester 2, 2026.

This guide explains where the repositories are, which shared feature branch your team uses, how Jira and GitHub fit together, and where to get help.

## Start here

1. Accept the invitation to the `ontrack-features-t2-2026` GitHub organisation.
2. Find your assigned Jira ticket using the [short Jira tutorial](https://youtu.be/GyJWYpOGj1o).
3. Open [branch-register.md](branch-register.md) and find your repository's operational target. Some planned objectives do not yet have an approved code branch.
4. Follow [student-setup.md](student-setup.md) to clone and run OnTrack.
5. Create a separate task branch from your objective's shared feature branch.
6. Open a pull request back into that same shared feature branch.
7. Use [pull-request-template.md](pull-request-template.md) in your pull request.
8. Ask at least two students to review your pull request using [review-checklist.md](review-checklist.md).

## Getting set up

- [Student setup and contribution guide](student-setup.md) — installs the prerequisites, clones the three repositories, selects the correct objective branches, starts Docker and opens a task pull request. Allow roughly 20–40 minutes plus the first Docker image download/build.
- [OnTrack T2 2026 setup walkthrough](media/setup/ontrack-t2-2026-setup-walkthrough.mp4) — an 11 minute 37 second narrated companion covering access, cloning, objective branches, Docker, local database setup, task branches, validation, pull requests and handover.
- [Setup walkthrough transcript](media/setup/ontrack-t2-2026-setup-walkthrough-transcript.md) — the complete accessible transcript. Use the written guide and branch register as the maintained source of truth if a branch changes after the recording.

The [short Jira ticket tutorial](https://youtu.be/GyJWYpOGj1o) only explains how to find a ticket; it is separate from the environment setup walkthrough above.

## Urgent access help

If you cannot access the organisation or repositories, or you need access urgently, contact **Maple Fox** on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`

Include your GitHub username, the repository you cannot access, and a screenshot of the error.

## Repositories

| Repository | Purpose | T2 2026 starting point |
|---|---|---|
| [doubtfire-web](https://github.com/ontrack-features-t2-2026/doubtfire-web) | Angular frontend. This is what users see and interact with. | Your objective's feature branch |
| [doubtfire-api](https://github.com/ontrack-features-t2-2026/doubtfire-api) | Rails backend. This contains APIs, data handling, permissions and background work. | Your objective's feature branch |
| [doubtfire-deploy](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/local-dev-run) | Local Docker environment used to run Web and API together. | `fix/local-dev-run` |

The current operational feature targets are:

- Cross-Project Dashboard: `feature/cross-unit` in Web and API;
- Email and Mobile Notifications: the shared canonical `feature/notifications` in Web and API; and
- Peer Progress Indicator: `feature/peer-progress-indicator` in Web and API.

The First-Time Tutorial Web branch is still a suggestion awaiting written lead approval. It has no API or Deploy branch. Do not create one from the planning name alone.

All exact links are listed in [branch-register.md](branch-register.md).

## How the workflow works

```text
Jira ticket
    ↓
Correct operational shared feature branch
    ↓
Your separate task branch
    ↓
Your commits and testing
    ↓
Draft pull request to the shared feature branch
    ↓
At least two peer reviews
    ↓
Approved work is merged into the shared feature branch
```

Jira is used to record the task, scope, assignee and progress. GitHub is used for branches, code, commits, pull requests, reviews and technical evidence.

## Important rules

- Do not work directly on `11.0.x`.
- Do not work directly on a shared feature branch.
- Create one task branch for each Jira ticket.
- Open your task pull request into your objective's shared feature branch, not directly into `11.0.x`.
- Do not use a combined integration or validation branch as a student task pull-request target.
- Do not create a suggested objective branch until the repository lead approves its name and exact base commit.
- Previous `10.0.x` work is outside this T2 workspace. New work uses the provided T2 branches.
- Use meaningful branch names and commit messages.
- Explain what changed, why it changed and how it was tested.
- Request at least two peer reviews.
- Do not include passwords, API keys, tokens, private student information or real assessment data.
- Do not merge your own pull request unless the team has explicitly asked you to do so.

## Workstreams

Each objective may include students from four workstreams:

| Workstream | Normal focus |
|---|---|
| Documentation | Guides, technical notes, decisions, user instructions and handover material |
| Features | New or improved frontend and backend behaviour |
| Migration | Updating active legacy code and dependencies to the current approach |
| Security | Authorisation, privacy, validation, misuse cases, testing and secure defaults |

The workstreams share the same objective branches. Each student still uses their own task branch.

## Useful local addresses

After the local Docker environment is running:

- Web application: `http://localhost:4200`
- API documentation: `http://localhost:3000/api/docs`

Local test accounts use the password `password`.

- Student: `student_1`
- Tutor: `atutor`
- Convenor: `aconvenor`
- Administrator: `aadmin`

## Related guides

- [Branch register](branch-register.md)
- [Cross-objective coordination, shared surfaces and integration order](cross-objective-coordination.md)
- [First-Time Tutorial objective, branch plan and evidence index](first-time-tutorial-objective.md)
- [Four-stream MVP evidence and handover index](docs/evidence/ontrack-mvp-2026-08-26/README.md)
- [Student setup and contribution steps](student-setup.md)
- [OnTrack T2 2026 setup walkthrough](media/setup/ontrack-t2-2026-setup-walkthrough.mp4)
- [Setup walkthrough transcript](media/setup/ontrack-t2-2026-setup-walkthrough-transcript.md)
- [Pull request template](pull-request-template.md)
- [Peer review checklist](review-checklist.md)
- [Jira ticket tutorial](https://youtu.be/GyJWYpOGj1o)
