# Handover video template

DOC-13. Use one recording per coherent feature or workstream, with a target
length of 8–12 minutes. Use Microsoft Teams recording and screen sharing in a
non-production environment with synthetic accounts. Export a transcript and
correct technical terms and commands before linking it.

## Two-person workflow

The outline author fills in the script below and verifies source paths, branch
names and limitations. A second contributor follows that outline to record the
walkthrough; any step they cannot reproduce goes back to the author before
recording. Record the actual author and presenter names in the video description.
Neither role substitutes for the PR's independent technical review.

## Recording outline

| Time | Section | What the presenter shows |
| --- | --- | --- |
| 0:00–1:00 | Purpose | Feature name, problem, user outcome and the source revision being demonstrated. |
| 1:00–2:00 | Setup | Repository, branch/PR, prerequisite services and how to start the synthetic demo. Link the full setup guide instead of rereading it. |
| 2:00–5:00 | What changed | One complete normal user journey, the key failure/empty state and the files that own the behaviour. |
| 5:00–7:00 | Why | Important design choices, shared interfaces and privacy/permission boundaries. |
| 7:00–9:00 | Validation | Commands and recorded results, known limitations and checks the next contributor can reproduce. |
| 9:00–11:00 | What comes next | Unmerged PRs, dependencies, unresolved issues and the first useful next task. |
| Final minute | Where to find it | Guide, source PR, transcript and evidence index. State whether the work is proposed, merged or deployed. |

Before recording, hide credentials, personal notifications and real student
data. Use readable text, describe visual actions aloud and avoid rapid pointer
movement. A synthetic demo must be labelled as such.

## Description and publication fields

- Feature/workstream and recording date.
- Outline author and presenter.
- Tested source commit, PR and target branch.
- Required environment and synthetic scenario.
- Written setup guide, transcript and known limitations.
- Recording duration and who can access the link.

Store the video using the team's existing approved media location. Link the
finished recording and transcript from [Tutorials and walkthroughs](tutorial-links.md)
and the feature handover. Test access as an intended viewer; an author's access
does not prove everyone can open it. Recording and team announcements are
separate activities from this repository template.
