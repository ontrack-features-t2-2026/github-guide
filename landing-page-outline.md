# OnTrack landing page content outline

DOC-8. Content proposal for review, 20 September 2026.

## What OnTrack does

OnTrack helps students plan practical coursework, submit evidence of learning
and act on feedback from teaching staff. Contributors maintain the student and
staff interface, the API that protects and stores learning data, and the tools
used to run the system.

## Start here

1. Read the [student setup guide](student-setup.md), then check the current
   repository README and the base branch named on your ticket or PR.
2. Use the [tutorials and walkthroughs index](tutorial-links.md) for setup videos,
   transcripts and first-time tutorial guidance.
3. Read the [PR template](pull-request-template.md), [review checklist](review-checklist.md)
   and [AI drafting standard](ai-drafting-standard.md) before contributing.

## Choose a repository

| Repository | Who works here and what they change | Observed activity |
| --- | --- | --- |
| [doubtfire-web](https://github.com/ontrack-features-t2-2026/doubtfire-web) | Frontend, accessibility and migration contributors change the Angular interface and browser tests. | Active; default branch `11.0.x`, pushed 20 September. |
| [doubtfire-api](https://github.com/ontrack-features-t2-2026/doubtfire-api) | Backend and security contributors change Rails APIs, permissions, data and background jobs. | Active; default branch `11.0.x`, pushed 20 September. |
| [doubtfire-deploy](https://github.com/ontrack-features-t2-2026/doubtfire-deploy) | Deployment contributors maintain local and production Compose configuration and operational guidance. | Active; default branch `11.0.x`, pushed 20 September. |
| [github-guide](https://github.com/ontrack-features-t2-2026/github-guide) | Documentation contributors maintain team setup, contribution guidance and evidence indexes. | Active; default branch `main`, pushed 19 September before this change. |
| [doubtfire-astro](https://github.com/thoth-tech/doubtfire-astro) | Documentation-site contributors maintain the public Astro/Starlight site. | Separate upstream documentation repository; it hosts the site reviewed by DOC-7. |

The T2 organisation also contains `ontrack-maplefox-hosting` and
`ontrack-automation`. Both last showed a push on 28 August at this audit. Treat
them as support repositories, not a default student starting point. No listed
T2 repository is archived; an older push date alone does not prove abandonment.
This is an activity snapshot, not an assignment of owners or a release decision.

## Help and contribution

Link the existing README access-help section, the maintained setup instructions
and the tutorial index. Keep branch names in one maintained register rather than
copying a fixed objective-branch map onto the landing page. Historical recordings
remain useful but should carry their recording date and a current-guide link.
