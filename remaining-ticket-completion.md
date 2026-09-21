# How to finish the remaining bucket tickets

Checked 21 September 2026. This is a completion procedure for the remaining
Tutorial, Security, Documentation and Migration requirements. It distinguishes
work already reviewed on GitHub from participant sessions, operator knowledge
and decisions that still need an actual record. The source workbook is unchanged.

## Start with the work that is already accepted

Tutorial [Web #263](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263),
migration [Web #259](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/259),
[API #170](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/170),
[Deploy #38](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/38) and
[Guide #12](https://github.com/ontrack-features-t2-2026/github-guide/pull/12) are
approved and merged. Reuse their evidence instead of opening duplicate fixes.

The [tutorial approval](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263#pullrequestreview-5262891472)
explicitly discusses the history gate, failure behavior, target validation and
minimum stored fields. The [documentation approval](https://github.com/ontrack-features-t2-2026/github-guide/pull/12#pullrequestreview-5262898939)
accepts the implemented guides and their stated validation limits. Those are
real review records; they do not show that a participant pilot took place.

Two corrections to the earlier handover are important for closure:

- **DOC-14 requires a PR and a review request.** Its checklist does not require
  the author to merge it. Do not hold the card open solely because upstream has
  not merged it after the requested review has been sought.
- **TUT-Q01 permits an accessibility inspector or a screen reader.** Use the
  recorded browser accessibility trees and actual application checks; do not
  invent an additional compulsory human screen-reader session. Safari is required
  only when a supported test environment is available. Record unavailability.

## TUT-Q01: finish the application QA record

Use the current merged web/API/deploy combination in a disposable local or
staging environment with synthetic users. Record all three commit SHAs, the
browser/version, viewport and the test date. The existing
[validation record](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/student-onboarding/validation.md)
and [browser checker](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/11.0.x/docs/student-onboarding/browser-qa)
contain the completed fixture tests and their limits.

1. Enable the test API with `TUTORIAL_ENABLED=1` and restart/recreate only that
   disposable API process. Verify authenticated `/api/settings` returns
   `tutorialEnabled: true`. The flag does not require a web rebuild.
2. Use a fresh synthetic Student whose profile setup is incomplete and whose
   `/api/projects/history` returns exactly `{ "hasProjects": false }`. Complete
   the normal profile form. Verify that the tutorial appears after setup/loading.
3. Use a separate enrolled synthetic Student to exercise **Tutorial and Help**
   from the existing account menu. Follow the real unit selector, task dashboard,
   target-grade control and Calendar. Locate controls; do not submit real work.
4. Check start, Back/Next, skip confirmation, completion, close and replay. Reload
   an in-progress session, reload after temporary skip, and replay after permanent
   dismissal. Confirm normal application use and profile state remain intact.
5. Repeat staff-role and disabled-flag exclusion, no units, missing targets,
   history failure, storage failure and browser Back. Record any injected test
   failure as a simulation; do not report it as a real incident.
6. Use keyboard navigation and inspect the accessibility tree: named dialog and
   controls, title/count, visible focus, modal focus containment, non-modal guided
   steps, Escape and sensible focus return. Save the tree and a short recording.
7. Select **200% in the browser's own zoom UI**, record that setting, and verify
   all controls and the wrapped guide link remain reachable. Repeat at 390px and
   320px, and with reduced motion. CSS `zoom` evidence alone is not native zoom.
8. Record Chrome, Edge and Firefox results. Add Safari if the supported environment
   is available; otherwise record the precise environment limitation. Open a
   focused fix for each observed critical/high defect and rerun its scenario.

Close when the applicable QA matrix is filled with actual results, evidence is
linked, and no critical/high defect remains without an accepted owner and reason.
Do not replace the actual application result with a fixture-only screenshot.

## TUT-D04: complete the human maintenance check and walkthrough

The student/contributor guides are already merged. Finish these two items:

1. Give a second contributor the
   [maintenance exercise](docs/student-onboarding/second-contributor-review.md).
   They should find `student-onboarding.steps.ts`, make one harmless copy change
   in a disposable branch, explain whether the stable ID/version should change,
   run the guide's focused checks and inspect the fallback. Record their actual
   name/handle, date, tested SHA, missing instructions and outcome in that review
   file. Fix any documentation problem they find. An agent review is not this
   requested human exercise.
2. Record the stable tutorial with synthetic data: welcome, four steps, skip or
   finish, then replay from the actual account menu. Show the version/date and
   include a written transcript. Have a second person check privacy and accuracy;
   record their review and add the recording/transcript to the
   [tutorial index](tutorial-links.md) and [evidence index](docs/student-onboarding/evidence-index.md).

Suggested request, for the requester to send:

> Please follow the linked tutorial contributor guide without help and attempt
> one wording change in a disposable branch. Return the tested commit, steps
> attempted, outcome and anything missing. Please also check the linked synthetic
> walkthrough for accuracy and unintended personal data. This is a maintenance
> exercise and media review, not a request to merge my work.

Close TUT-D04 after the response, any corrections and the reviewed walkthrough
are linked. The written guides and generic PR approval alone do not demonstrate
the second contributor's attempted exercise.

## TUT-U01-RUN: run the three-person pilot

1. Arrange three separate 15–20 minute sessions with actual people, including at
   least one less-experienced OnTrack user. Use a working non-production instance
   and synthetic accounts; do not substitute agents for participants.
2. Read the [brief and consent text](docs/evidence/student-onboarding-pilot/pilot-script-and-consent.md).
   Ask each person to find/select a unit, find the task dashboard, locate the
   target-grade control, find Calendar, finish or skip, and replay.
3. Copy the [findings template](docs/evidence/student-onboarding-pilot/findings-and-decisions-template.md).
   Use Reviewer A/B/C, not real participant identities. Record found/hesitated/
   unclear wording for each step, the observed problem and a severity/decision.
4. Classify every finding as Fix now, Document or Future backlog. Link the tested
   environment/SHAs, completed findings and date on TUT-U01-RUN.

Close once three real sessions have usable, de-identified and triaged findings.
The branch's automated tests and screenshots are preparation, not pilot results.

## TUT-U01-FIXES: resolve findings and publish the verdict

1. For each accepted critical/high issue, create one focused fix ticket/PR with
   the finding ID and original reproduction. Do not invent a code change if the
   pilot finds none; explicitly record zero critical/high findings when true.
2. Rerun the original scenario after each fix and fill the
   [pilot-result template](docs/evidence/student-onboarding-pilot/pilot-result-template.md).
   List what worked, what changed, retest evidence and remaining items with owners
   and reasons. Keep participant and assessment data out of the result.
3. Obtain the objective lead, documentation reviewer and technical reviewer's
   actual decisions. Record who, date, decision and evidence link. Publish the
   result link to the team channel and paste that post's link onto the card.

Close when the result, fix/retest links and required decisions are recorded.

## TUT-MVP01 and TUT-S01: record final acceptance accurately

Use the existing threat model, minimum-data decision, tests and linked PR review
for TUT-S01. Record any project-required security-role acceptance rather than
claiming an unrecorded approver. No new security implementation is implied by
the presence of this review step.

For TUT-MVP01, assemble the current SHAs and merged PRs, TUT-Q01 result, three
pilot sessions, fixes/retests, reviewed walkthrough and maintenance exercise in
the [evidence index](docs/student-onboarding/evidence-index.md). Run the final
new/in-progress/completed/dismissed student flows on that exact combination.
Ask the objective, documentation, technical and security reviewers for the MVP
decision; reuse one person in multiple roles only if that is the team's actual
arrangement. Record **accepted**, **partially complete**, or **handed over**, with
the date and precise remaining conditions. PR merge alone is not pilot acceptance.

## DOC-6: create one hosted translation sample and review it

The requester previously confirmed no pilot/output exists. The missing input is
still required; generating our own translation would not test the chosen service.

1. A documentation owner opens a Weglot account/project. Select **Other** if the
   site's technology is not listed, English as source and Simplified Chinese as
   target. Choose **Use a preview URL** for the documentation site instead of
   changing the live site's DNS or integration.
2. Open that preview, switch to Chinese and inspect only the public
   [Initial Setup page](https://ontrackdocumentation.netlify.app/setup/set/).
   Save the preview URL or Chinese output, service/date and exact English source.
   If the service rejects the current site domain, have the docs owner supply the
   correct project/domain; do not replace it with an unrelated site.
3. Fill the [term/command checklist](docs-site-translation-pilot-status.md). For
   each issue retain the English phrase, actual service output, meaning/error
   and suggested correction. Separate existing English-source defects from
   translation errors.
4. Record **yes**, **yes with fixes**, or **no** with supporting examples, request
   the normal documentation review, and attach the verdict/output to DOC-6.

The provider documents this separate-preview workflow in its
[Preview Mode guide](https://support.weglot.com/article/417-how-to-use-the-preview-mode).
No account, subscription or translation result has been created by this guide.

## DOC-12: obtain and record team agreement

The [AI drafting standard](ai-drafting-standard.md) is already merged. On
21 September the requester reported no known record of team agreement. Do not
infer agreement from the general documentation PR approval.

Send the following to the normal team channel, with the standard's link:

> Please confirm agreement with this AI drafting standard: AI may assist drafting,
> a human checks technical accuracy and the listed editing issues, and we name
> the person who actually reviewed the work. Reply “agree” or identify the exact
> wording to change. I will record the decision and update any agreed corrections.

Record the discussion link, date, decision and any agreed changes on DOC-12.
Make a focused documentation PR if the wording changes. Close after the team's
actual agreement is recorded; this guide has not sent the request.

## DOC-14: request the upstream review

[Upstream Web #533](https://github.com/thoth-tech/doubtfire-web/pull/533) already
contains the copied template and comparison. At this check it has no requested
reviewers and no reviews.

Open the PR, choose **Reviewers**, and select Brian's verified GitHub account.
If you cannot select him, ask an upstream maintainer to request his review or
mention the verified account in the PR with this text:

> Brian, please review this DOC-14 port of the T2 PR template. The description
> compares the old and new templates, and the change is limited to
> `docs/PULL_REQUEST_TEMPLATE.md`. No organisation settings are changed.

Paste the review-request/comment link onto DOC-14. All four source checklist
items are then evidenced. Keep upstream merge/review follow-up with the reviewer;
do not merge your own PR or create another identical PR.

## MG-00 and MG-05: record the checks, avoid obsolete work

MG-00's original branch premise is historical. The current reviewed work targets
`11.0.x`, as shown by accepted migration PR #259. An unmerged notifications
decisions file is not evidence of a team-approved migration policy. Do not
create `feature/migration`, reopen the retired branch decision or broaden default
organisation permissions just to match an old checklist.

The [dated access audit](docs/evidence/remaining-closure-20260921/mg00-access-evidence.json)
confirmed that **Sujay-Deakin** and **sakethsram8888** are active organisation
and `ontrack-contributors` members with effective **write** permission on web.
Default organisation repository permission is **none**; it was not changed.
Attach this command/result evidence to
MG-00 together with the maintained-base decision. Invitation steps are unnecessary
for an already active member. The lead must also confirm whether anyone else
currently holds MG-08/09/10/11 and check that person's actual GitHub login with:

```sh
gh api repos/ontrack-features-t2-2026/doubtfire-web/collaborators/ACTUAL_LOGIN/permission --jq .permission
```

To finish the written-coordination item, reuse an existing Brian decision if one
exists. Otherwise the lead can send:

> Migration PR #259 has been reviewed and merged into 11.0.x. Please confirm that
> current migration work targets 11.0.x, so I can replace MG-00's obsolete
> Feature/Notifications wording with the agreed branch and date. The cleanup
> covers the page-9 Grunt/CoffeeScript deliverables and its tests/build passed.

Record that answer in the maintained decisions location and on the card. Do not
label the named-access checks as proof of an unrecorded conversation or another
contributor's permissions. This document does not change anyone's access.

For MG-05, the requester reported on 21 September that they know of no external
CSS guide. Record that limited confirmation, link the
[merged CSS guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/css-style-guide.md)
and its accepted PR #259, and close the document-delivery requirement. A separate
newcomer session was not an explicit MG-05 checklist item and is not added as a
new closure gate. Do not claim that no guide can exist elsewhere.

## MG-11: verify charts with a real application/API session

1. Use the current merged application with a synthetic convenor and a seeded unit
   that has students, tasks and more than one tutorial. Record the web/API SHAs.
2. Open that unit's **Unit Statistics** page. Check the status, target-grade and
   completion charts alongside their values tables. Use the
   [analytics guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/migration/analytics.md)
   for the API's aggregation and five-summary-value semantics.
3. Compare each rendered value against the authenticated API response; exercise
   tutorial/task filters and grade grouping. Do not assume whole-unit aggregation
   deduplicates students across tutorials when the API does not.
4. Simulate one failed stats request, confirm the error/Retry state, restore the
   request and verify recovery. Check an empty selection, narrow layout and theme.
5. Save synthetic screenshots, response/value comparisons and pass/fail results
   on MG-11. If a real defect appears, fix it with a focused regression and PR.

The existing SVG tests, full suite and build remain valid evidence. This session
adds the authenticated application result that fixtures alone cannot establish.

## NPR-D01: finish the operator handover

Use the latest merged runtime and
[runbook](https://github.com/ontrack-features-t2-2026/doubtfire-api/blob/11.0.x/docs/notifications/RUNBOOK.md).
At API `d7f7a5b9`, the runtime switch/fan-out features are still absent. Related
work in an unmerged branch does not establish a live control. The runbook's
absence statements remain accurate for that merged revision; update them after
the relevant implementation actually lands and its commands are verified.

1. Have the deployment owner name the primary/backup operations contact and
   institution mail/DNS owner. Store private contact details in the team's
   approved private operations location; put only an appropriate pointer in the
   public runbook. A sender address or GitHub role does not prove DNS ownership.
2. Obtain three or four actual trimester failure records from the team: date,
   environment, symptom, diagnosis, fix and outcome. Development or staging
   incidents can be used when accurately labelled; the card does not require
   invented production incidents. Remove credentials and student data. If no
   record is available, label it missing; do not rename proposed scenarios as events.
3. Give someone outside the notifications sub-team the runbook and a disposable
   test environment. Ask them to diagnose one staged queue/delivery failure and
   find the containment/recovery procedure without coaching. Use test mail/push
   sinks; avoid sending real notifications during the exercise.
4. Record that person's role/name, date, source SHA, scenario, steps, outcome and
   confusing instructions. Fold their feedback into a small documentation PR.
   Recheck the documented switch/limit commands against the actual runtime.

Close when the operational pointers, truthful incident evidence and independent
operator exercise are recorded. Automated API tests cannot stand in for that
specified human dry-run.

## Mass Assignment Vulnerability Testing

Use the local test report from this follow-up as the starting evidence. Each
case must show a synthetic caller/role, method/path, protected-field injection,
response, before/after persisted state and verdict. A non-error HTTP response
alone does not prove that a protected field was written.

Attach the report to the original security ticket, with its API SHA and tested
endpoint list. Any confirmed vulnerability needs a focused fix and regression;
coordinate disclosure before placing exploitable production details publicly.
State the tested scope and omissions explicitly. Close the ticket when its
request/response findings and any required follow-up are attached. No production
accounts or endpoints are needed for the controlled test.

## Record closure without manufacturing evidence

For each card, paste: **result**, **tested/reviewed SHA**, **evidence link**,
**reviewer or decision link where required**, **date**, and **remaining condition**.
Only check an item that the evidence supports. Publishing this procedure does not
change Planner or spreadsheet statuses, invite people, send team messages, record
approvals, deploy an application or merge a PR.
