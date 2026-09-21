# TUT-D04 evidence index

**Original documentation owner:** Jeffy Sam Babu
**Updated:** 21 September 2026
**Status:** Implementation and documentation merged; follow-up evidence and human acceptance tracked separately

This index separates source available for review from human validation. Planner
status and an existing document are not proof that a deployed feature works.

## Publication and source provenance

| Evidence | Current status | Reference |
| --- | --- | --- |
| Original TUT-D04 documentation | Merged on 19 September 2026 | [PR #7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7), from `docs/student-onboarding-user-and-contributor-guide` |
| Implementation-aligned documentation refresh | Approved and merged | [Guide #12](https://github.com/ontrack-features-t2-2026/github-guide/pull/12) |
| Web shell, registry, progress and replay | Approved and merged | [Web PR #263](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263), [branch](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920), paths in [contributor guide](contributor-guide.md#source-map) |
| Tutorial setting and current-user history summary | Default-off flag and read-only history check | [API PR #170](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/170), `codex/buckets-api-20260920`; PR-TUT-17 |
| Deployment flag forwarding | Approved and merged | [Deploy PR #38](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/38) |
| Source-adjacent tests, security and QA evidence | Published with completed fixture browser results and explicit limits | [Web `docs/student-onboarding/`](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding) |
| Follow-up application checks and remaining requirements | Dated results, procedures and review links | [Completion procedure](../../remaining-ticket-completion.md) |

PR #7's documentation checks apply to its original revision. They do not validate
this refresh, the new web implementation or production rollout. Follow each
current PR's checks and its exact tested revision.

## Shared foundation

- [Objective and earlier planning](../../first-time-tutorial-objective.md).
- [Problem statement and user stories](../../onboarding-tutorial-problem-statement-and-user-stories.md).
- [Step copy](../../onboarding-tutorial-step-copy.md).
- [Current trigger, storage and version contract](../../onboarding-tutorial-trigger-and-state-rules.md).
- [Cross-objective coordination](../../cross-objective-coordination.md).
- [Original prototype and review material](../design/student-onboarding-prototype-review/).

The earlier branch register is historical context. The current review sources
are listed above; do not wait for the old shared onboarding branch to exist.

## Ticket-to-evidence map

| Tickets | Repository deliverable | Evidence boundary |
| --- | --- | --- |
| TUT-W01 | Shell, target resolver and typed registry | Approved and merged source in [Web PR #263](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263) |
| TUT-W02 / TUT-D03 / DOC-10 | Eligibility, browser state and version policy | Service, authenticated history summary (including withdrawn enrolments) and [shared rules](../../onboarding-tutorial-trigger-and-state-rules.md) |
| TUT-W03 / TUT-D02 | Four steps and stable targets | Registry and [copy source](../../onboarding-tutorial-step-copy.md) |
| TUT-W04 | Account-menu Tutorial and Help replay | Header and shared shell; no separate progress store |
| PR-TUT-17 | Authenticated default-off flag and deploy forwarding | [API PR #170](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/170) and deploy PR #38 |
| TUT-S01 / TUT-T01 / TUT-Q01 / TUT-MVP01 | Security, regression and QA/validation material | Use the web validation package for actual results and limitations; no totals copied here |
| TUT-U01-PREP | Pilot preparation material | [Existing pilot preparation branch](https://github.com/ontrack-features-t2-2026/github-guide/tree/docs/student-onboarding-pilot-result/docs/evidence/student-onboarding-pilot) |
| TUT-U01-RUN / TUT-U01-FIXES | Human sessions and resulting fixes/retest | No session outcome or pilot approval supplied; pending |
| TUT-D04 | Seven maintained guides/evidence records | Documentation PR approved; independent maintenance exercise and media review remain pending |

## Validation and review records

The web [validation package](https://github.com/ontrack-features-t2-2026/doubtfire-web/tree/codex/buckets-tutorial-20260920/docs/student-onboarding)
is the single reference for commands, tested commits, automated results, browser
observations, screenshots and uncovered scenarios. The package is published with
Web PR #263; browser-harness evidence is complete within its recorded scope. Do not treat an
unrun checklist as a passed check.

For this documentation, run `node .github/scripts/validate-docs.mjs` and
`git diff --check`. These verify local links and file hygiene, not browser
behaviour or the accuracy of an external page.

| Human activity | Recorded status |
| --- | --- |
| Independent maintenance-guide exercise | [Requested; response pending](second-contributor-review.md) |
| Student pilot sessions and retest | No results supplied |
| Product/security/release approval | Security-related PR review exists; no pilot/product/release acceptance is inferred |
| Walkthrough recording and privacy review | No new recording or review claimed |

Use only synthetic data in visual evidence. Keep private student information,
credentials, full calendar URLs and unrelated desktop content out of artifacts.

## Related published guidance

- [Calendar instructions](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/CAL-DOC01-calendar-how-to.md).
- [Theme contract](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/theme/THEME-CONTRACT.md).
- [MG-05 CSS style guide](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/css-style-guide.md), merged in [Web PR #259](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/259).
- [Accessibility baseline](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/11.0.x/docs/A11Y-D01-Accessibility-Baseline_Phase1.md), with its dated scope.
- [Tutorial/video index](../../tutorial-links.md).
