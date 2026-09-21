# Remaining tutorial, security, documentation and migration work

Source: the 20 September 2026 export of **OnTrack T2 2026**, the 39 rows not marked
Completed in the four requested buckets. This handover covers repository work
and PRs. The workbook has not been modified. Existing completed tickets and
non-GitHub activities are not silently reopened or claimed as completed.

All new work is submitted for independent review. Nothing was merged or deployed
by this change. The first-time tutorial defaults off; review the web, API,
deployment and documentation changes together before enabling it.

## Pull requests

| Deliverable | Repository review |
| --- | --- |
| Tutorial shell, state, four steps, replay, tests and threat model | [Web PR #263](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/263) |
| Legacy cleanup, analytics charts, CSS guide and migration registers | [Web #259](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/259) |
| API cleanup, contributor guide, notifications runbook, tutorial flag and history summary | [API #170](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/170) |
| Tutorial environment pass-through | [Deploy #38](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/38) |
| Documentation index, rules, SEO outline and handover | This GitHub Guide PR |
| Upstream peer-review PR template | [Thoth Tech Web #533](https://github.com/thoth-tech/doubtfire-web/pull/533) |

## First-Time Tutorial: 12 unfinished source rows

| Ticket | Repository result / remaining boundary |
| --- | --- |
| TUT-W01 | Reusable shell, typed registry and explicit stable target attributes implemented in the web change. |
| TUT-W02 | Current-user history summary including inactive/withdrawn projects, profile readiness, minimal browser progress, skip/resume/dismiss/complete/version handling and safe failure implemented. |
| TUT-W03 | Four existing controls explained with trusted copy and missing-target guidance; no automatic grade, enrolment, calendar or submission mutation. |
| TUT-W04 | Tutorial and Help entry added to the existing account menu; replay preserves saved completion/dismissal. |
| TUT-T01 | Focused automated state/component/settings/welcome/header regression tests are in the web PR; exact results are in its validation record. |
| TUT-S01 | Data flow, stored fields, shared-device risk, profile boundary, dependency decision and tests are documented beside the implementation. Independent security approval remains pending. |
| TUT-Q01 | Reproducible browser/keyboard/viewport checks and their actual limitations belong in the web validation record. Do not infer native assistive-technology or full-stack pilot completion from component tests. |
| PR-TUT-17 | Default-off authenticated API flag, client gate and deployment environment wiring span web/API/deploy PRs. |
| TUT-D04 | Existing guide contribution [#7](https://github.com/ontrack-features-t2-2026/github-guide/pull/7) is retained and updated to the implemented contract and real source paths. Independent maintenance review and final recording remain human activities. |
| TUT-MVP01 | This PR index plus the [tutorial handover](docs/student-onboarding/handover.md) records the reviewable repository result. MVP release/pilot approval is not declared. |
| TUT-U01-RUN | Live sessions with at least three reviewers are outside the requested GitHub-only work. Existing script and blank templates remain available; no sessions or observations were fabricated. |
| TUT-U01-FIXES | No actual pilot findings were supplied. Repository defects found during implementation/QA are fixed and tested in the web PR; this is not a fabricated pilot result. Publish a pilot verdict only after real findings exist. |

## Security Team: 2 unfinished source rows

| Ticket | Repository result / remaining boundary |
| --- | --- |
| BGW-03 | Already fixed by API commit `42f7373191bb0b6686e0d2d4ee71cc3a2f814f80`, merged in [#111](https://github.com/ontrack-features-t2-2026/doubtfire-api/pull/111). Existing communications-mailer regression rerun successfully; no duplicate patch. |
| Mass Assignment Vulnerability Testing | Source ticket explicitly requests live-test findings attached to the ticket and no repository edits. Excluded under GitHub-only scope. |

## Documentation: 16 unfinished source rows

| Ticket | Repository result / remaining boundary |
| --- | --- |
| DOC-3 | [Tutorial and video index](tutorial-links.md), linked from README, with current/historical/access status. |
| DOC-6 | [Missing hosted translation input](docs-site-translation-pilot-status.md) recorded as requested; no translation-quality result claimed. |
| DOC-7 | [Five-page SEO review](docs-site-seo-review.md) records observed titles, descriptions, headings and crawl-file HTTP status with proposed copy. |
| DOC-8 | [Landing-page outline](landing-page-outline.md) covers active repositories, support repositories and start-here links. |
| DOC-10 | [Trigger and state contract](onboarding-tutorial-trigger-and-state-rules.md) defines no-prior-project eligibility, skip/dismissal, replay and three worked cases. |
| DOC-12 | Existing AI standard was already merged in [#6](https://github.com/ontrack-features-t2-2026/github-guide/pull/6). Added the missing navigation link and concrete punctuation/encoding and reviewer-attribution checks. Team agreement is not fabricated. |
| DOC-13 | [Handover video template](handover-video-template.md) defines the outline, duration, recording tool, two-person split and index/transcript links. |
| DOC-14 | Upstream template-only [PR #533](https://github.com/thoth-tech/doubtfire-web/pull/533) preserves the existing template location and explains the comparison. No branch-protection or organisation settings changed. |
| NPR-D01 | API notifications runbook documents actual queue containment/recovery, mail/DNS diagnosis and VAPID rotation. Missing runtime channel controls, numeric fan-out limits, private contacts and operator dry-run are explicit. Those separate features/operational activities are not invented. |
| DX-A02 | API removes remaining dead scaffold/config and unused `User.default`; `.rspec` was already removed in merged API #162. |
| DX-A07 | Root API contributor guide is usable; notification-specific details remain under their own guide with a backlink. |
| DX-D06 | Already merged in [Deploy #32](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/pull/32), with earlier schema cleanup in #13. No duplicate image/tag changes. |
| DX-W01 | `.nvmrc` already matches the supported Node 22 line on the web base. Verified in the migration audit; no duplicate change. |
| DX-W02 | README already describes modern Angular setup; retired Grunt-era `setup.sh` removed and maintained README remains the setup source. |
| DX-W12 | Version-neutral npm script names, repository metadata and the three requested tooling packages moved to dev dependencies with a consistent lockfile. |
| DX-W13 | README already documents recursive submodule setup and JPlag production asset verification. Verified and retained. |

## Migration: 9 unfinished source rows

| Ticket | Repository result / remaining boundary |
| --- | --- |
| MG-00 | Branch/access conversation with Brian is not performed. Implementation uses isolated branches from current `11.0.x`; successful pushes demonstrate this account's access, not another contributor's permission. |
| MG-01 | Recovery register audits the stranded T1 PRs against current upstream code, with live/superseded/non-migration verdicts and evidence. No historical PR was closed or retargeted. |
| MG-02 | Open upstream PRs grouped by base/age/content with a draft closing note and explicit author-review exceptions. No closing note was posted. |
| MG-04 | Current component/style inventory with counts, source examples and priorities replaces stale ticket assumptions. |
| MG-05 | CSS style guide covers Material, Tailwind, shared SCSS, lint rules, theme tokens and incremental layout migration. |
| MG-06 | Legacy audit confirms `MIGRATION-GUIDE.md` was already removed and maps remaining sources/callers. It does not restore obsolete instructions. |
| MG-08 | Retired Grunt/Karma build configuration and helper scripts removed after reference checks. |
| MG-09 | Superseded CoffeeScript removed; retained legacy sources are catalogued with reasons instead of blanket deletion. |
| MG-11 | Three analytics charts restored with existing API data, filters, loading/retry states and accessible tables. Chart dependency updated for Angular 22 after actual SVG tests exposed the old runtime incompatibility. |

## Evidence and review boundary

The original API #170 configuration/cleanup revision (`f0a7331`) passed all five
CI test workers, build, RuboCop and CodeQL, alongside 21 focused tests / 87 assertions and before/after
feature-flag checks. Deploy #38 passed its production validator and ten Compose
flag-render cases. Migration #259 passed 149 suites / 1,094 tests plus lint and
build. Tutorial #263 at `4cbe005` passed 98 focused tests, typechecking, lint and
production build; its [validation record](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/codex/buckets-tutorial-20260920/docs/student-onboarding/validation.md)
tracks browser-harness evidence being finalised and its limits. The subsequent
withdrawn-history API correction (`73836040`) passed seven regression tests /
29 assertions and RuboCop. It adds a dedicated summary consumed by the client
gate; updated full CI and client checks must be checked at the latest PR
revisions. None of
these results establishes human pilot or full-application acceptance. PR descriptions
record exact tested source heads; recheck results after later changes. The
documentation workflow checks tracked Markdown links and whitespace.

Conflict checks compare the actual PR heads with the current base and other open
work using Git's merge machinery; this establishes the checked snapshot, not a
guarantee against future edits. Shared tutorial/API/deploy contracts are documented
above. Independent reviewers still decide whether and when to merge.

Outstanding non-repository work includes pilot participants, native accessibility
review where unperformed, operational contacts/dry-runs, team announcements and
approvals. DOC-6 additionally requires an actual hosted-service Chinese output.
None of those gaps is hidden by the existence of these PRs.
