# OnTrack Contributor Getting Started

One-page outline for new contributors who need to know what OnTrack is, which repositories to use, and where setup and tutorials live.

## What OnTrack is

OnTrack (Doubtfire) is a task-oriented learning and assessment system for portfolio-based learning. Students, tutors, and unit convenors use it for structured tasks, feedback, submissions, and progress tracking.

This T2 2026 workspace is the `ontrack-features-t2-2026` GitHub organisation. Feature work happens on shared objective branches in Web and API, with local runs through Deploy.

## Active repositories

| Repository | One-line description | Where you start |
|---|---|---|
| [doubtfire-web](https://github.com/ontrack-features-t2-2026/doubtfire-web) | Angular frontend: the UI students, tutors, and convenors use. | Your objective's shared feature branch |
| [doubtfire-api](https://github.com/ontrack-features-t2-2026/doubtfire-api) | Rails backend: APIs, data, permissions, and background jobs. | Your objective's shared feature branch |
| [doubtfire-deploy](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/local-dev-run) | Local Docker environment that runs Web and API together. | `fix/local-dev-run` |
| [github-guide](https://github.com/ontrack-features-t2-2026/github-guide) | Contribution guides, branch register, review checklist, and evidence. | `main` |

Clone Web, API, and Deploy as sibling folders. Start Docker from Deploy. Put product changes in Web and/or API according to your Jira ticket. Use this guide for process, not application code.

Exact operational branch heads are in [branch-register.md](branch-register.md).

## Current objective branches

Open task pull requests into your objective's shared feature branch, not into `11.0.x` or an integration branch.

| Objective | Shared Web / API target |
|---|---|
| Cross-Project Dashboard | `feature/cross-unit` |
| Email and Mobile Notifications | `feature/notifications` |
| Peer Progress Indicator | `feature/peer-progress-indicator` |
| First-Time Tutorial | Planned Web branch `feature/student-onboarding` (not created yet; see [first-time-tutorial-objective.md](first-time-tutorial-objective.md)) |

## Setup and tutorials

### Setup

- [Student setup and contribution guide](student-setup.md) — prerequisites, sibling clones, objective branches, Docker, task branch, and pull request. Allow about 20–40 minutes plus the first Docker download/build.
- [Setup walkthrough video (immutable archive)](https://github.com/ontrack-features-t2-2026/github-guide/blob/6eabb08535a9be040e908b7a237765197945badc/media/setup/ontrack-t2-2026-setup-walkthrough.mp4) — narrated companion for access, clone, Docker, local database, validation, and handover.
- [Setup walkthrough transcript](media/setup/ontrack-t2-2026-setup-walkthrough-transcript.md) — full text of the video. Prefer the written guide and branch register if a branch changed after the recording.

### Tutorials and workflow

- [Jira ticket tutorial](https://youtu.be/GyJWYpOGj1o) — find your assigned ticket (separate from environment setup).
- [Branch register](branch-register.md) — current heads and pull-request destinations.
- [Pull request template](pull-request-template.md)
- [Peer review checklist](review-checklist.md) — request at least two student reviews.
- [Cross-objective coordination](cross-objective-coordination.md) — shared surfaces, integration order, and CI constraints.
- [Start-here README](README.md) — full student entry page.

## Contribution path

```text
Jira ticket
    ↓
Objective shared feature branch (see branch register)
    ↓
Your separate task branch
    ↓
Local Docker run and testing
    ↓
Draft pull request into the shared feature branch
    ↓
At least two peer reviews
    ↓
Merge into the shared feature branch
```

## Access help

If you cannot open the organisation or a repository, contact Maple Fox on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`
- Include your GitHub username, the repository, and a screenshot of the error.
