# CPD-Q05 as-built wireframe and usability/accessibility validation — 2026-08-28

## Record type and scope

This is an auditable **as-built text wireframe, heuristic review, automated-test
cross-reference and synthetic live validation** for the Cross-Project
Dashboard. It is not a claim that named participants, students, staff or an
independent accessibility reviewer supplied feedback. No participant feedback
was invented.

The final live check used the exact merged tuple:

- API
  [`6c74dbbc07e219d60ca49e1b5ea42f737e5ef225`](https://github.com/ontrack-features-t2-2026/doubtfire-api/commit/6c74dbbc07e219d60ca49e1b5ea42f737e5ef225);
- Web
  [`16c22c992c821e16981c8f8cb2601f0a61f73007`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/16c22c992c821e16981c8f8cb2601f0a61f73007),
  restored clean before cache-free assertions; and
- Deploy lock
  [`ad463dc8b1b8005f0774819fe4d506da3c281947`](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/commit/ad463dc8b1b8005f0774819fe4d506da3c281947).

The dataset was synthetic. The only local state difference was enabling Demo
mode at `/demo-controls`. The initial one-unit quiet view was the intentional
`DemoDataMaskInterceptor` baseline, not a product defect.

## Mobile-layout follow-up — merged Web PR #120

The exact `16c22c9` validation below remains the historical as-built baseline.
It is not rewritten as if it tested later code. Web
[#120](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/120),
head
[`275a9a5ecd7ac3fa63043eaf10fec8f323824024`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/275a9a5ecd7ac3fa63043eaf10fec8f323824024),
was merged into `11.0.x` as
[`78dad4a99134bccf8429d8c778560ff9cbb1ac07`](https://github.com/ontrack-features-t2-2026/doubtfire-web/commit/78dad4a99134bccf8429d8c778560ff9cbb1ac07).
It implements the requested stacked phone layout while preserving the existing
desktop presentation at 640 px and wider.

```text
Phone layout below 640 px
┌────────────────────────────────────────┐
│ Unit scope [Active units            ▾] │
│ Search all units and tasks [_________] │
│ More filters                 [3 active] │
├────────────────────────────────────────┤
│ COS10001 · Foundations        Active  ▾│
│ 12 matching tasks · Due within 24 hrs  │
├────────────────────────────────────────┤
│ COS20007 · Active Learning    Active  ▾│
│ 8 matching tasks · Next due 2 Sep      │
└────────────────────────────────────────┘

Expanded project
┌────────────────────────────────────────┐
│ COS10001 · Foundations        Active  ▴│
│ Open COS10001 dashboard                │
│ Search tasks [_______________________] │
│ [Sort] [Filter]                        │
│ Grade completion summary, when active  │
│ Existing task rows and detail controls │
└────────────────────────────────────────┘
```

The follow-up uses one task DOM tree rather than separate desktop and mobile
copies. Native disclosure buttons have 48 px minimum targets, visible keyboard
focus, `aria-expanded` and unique `aria-controls` relationships. Collapsed
project summaries expose unit name/state, matching task count and the nearest
actionable deadline or warning. Secondary status, grade and date controls stay
available through a labelled `More filters` disclosure whose active count keeps
hidden criteria discoverable.

Validation recorded on PR #120:

| Follow-up surface | Evidence | Result |
| --- | --- | --- |
| Focused component behavior | Cross-dashboard and list-item tests cover filter disclosure state/count, single-open project behavior, task/deadline summaries, controlled-region IDs, reused task rows and keyboard task links. | 73/73 passing. |
| Full Web regression | Full hosted component suite at the PR head. | 612 passing, one existing todo. |
| Static checks | Repository lint, Angular typecheck and production build. | Pass. |
| Computed layout | Production build checked in Chrome at 320 px closed/open, 390 px open, 640 px after resize from an open mobile disclosure, and 1024 px. | Pass; document width did not exceed viewport. |
| Desktop preservation | Media rule restores the fixed 512 px horizontal unit-card strip, 64 px side padding, visible secondary filters and independent task scrolling at 640 px and wider. | Pass. |
| Review boundary | Source/test heuristic review found no blocking accessibility regression. | Pass for implemented semantics; no claim of independent assistive-technology certification. |

PR #120's required build, lint, test and CodeQL checks passed before merge. This
follow-up is implementation evidence, not a false claim that the earlier live
run exercised code that did not yet exist.

## Original `16c22c9` as-built text wireframe

```text
Cross-Project Dashboard
┌──────────────────────────── Global dashboard filters ───────────────────────────┐
│ Unit scope [Active | Previous | All]   Global search [____________________]     │
│ Task statuses [multi-select]           Target grades [multi-select] [Clear all] │
│ Start date [____-__-__] End date [____-__-__] [Clear dates]                    │
│ Date error alert appears here when start is after end                           │
└─────────────────────────────────────────────────────────────────────────────────┘

Horizontally scrollable unit-card strip; toolbar controls wrap as space narrows
┌─ COS10001 · Active ─────────────────┐  ┌─ COS20007 · Active ─────────────────┐
│ Search tasks [________] [Sort] [Filter] │  │ Search tasks [________] [Sort] [Filter] │
│ Optional grade-completion summary      │  │ Optional grade-completion summary      │
│ Task title / abbreviation              │  │ Task title / abbreviation              │
│ Status: <text>                         │  │ Status: <text>                         │
│ Due warning: <icon + text>             │  │ Due warning: <icon + text>             │
│ [Expand <task> details]                │  │ [Expand <task> details]                │
│ ...                                    │  │ ...                                    │
└────────────────────────────────────────┘  └────────────────────────────────────────┘

Empty, loading, no-match and previous-unit error messages use visible text/status
```

The wireframe mirrors the exact merged
[`f-cross-dashboard.component.html`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/dashboard/f-cross-dashboard.component.html)
and
[`dashboard-list-item.component.html`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/dashboard/list-item/dashboard-list-item.component.html).
It describes the implemented interface rather than a proposed redesign.

## Original `16c22c9` validation matrix

| Surface | Exact evidence | Result |
| --- | --- | --- |
| Active scope | With Demo mode enabled on clean `localhost:4401`, the home view and dashboard exposed `COS10001`, `COS20007` and `COS30046`; the cards rendered 37, 15 and 5 tasks respectively. | Pass. |
| Previous scope | The authorised previous unit `COS30243` rendered in Previous scope. | Pass. |
| All scope | The three active units and `COS30243` were available together with their Active/Previous labels. | Pass. No task count is invented for the previous unit. |
| Global search and reset | The live global-search assertion passed. The exact-head component tests independently cover case-insensitive unit/task fields, status and grade combinations, scope changes, per-unit search precedence, no-result messages and Clear all restoration. | Pass. |
| Sorting, filtering and recommendations | Exact-head tests cover Due Date ordering after search, final-state placement, Hide Completed combinations, date boundaries and recommendation refresh/error/cancellation behaviour. | Pass at component level. |
| Loading, empty and error recovery | The implemented view provides visible loading, no-previous-unit, previous-load-error, per-unit no-match and global no-match states. Tests assert each state. | Pass at component level. |
| Route and data boundary | Route tests allow Student access and redirect a non-whitelisted Tutor. The live dataset used only synthetic fixtures. | Pass for the tested role boundary; this is not a full penetration test. |
| Responsive layout | The filter toolbar wraps, the unit strip is horizontally scrollable and cards keep a stable readable width. Existing captures cover 1440, 1280, 1024, 768 and 390 px widths; the known 390 px horizontal-scroll limitation is preserved rather than hidden. | Pass for the documented multi-card responsive design; no claim of a fully stacked phone layout. |
| Keyboard-operable controls | Scope/status/grade controls use Angular Material selects; search/date fields are native inputs; reset, sort, filter and detail expansion use buttons. Tests exercise labelled Material controls, native inputs and the detail button's `aria-expanded` state. | Pass for semantic control wiring. No separate manual keyboard-only or screen-reader participant session is claimed. |
| Non-colour status and warning meaning | Unit cards print `Active` or `Previous`; tasks print `Status: <label>`. Due warnings include icon plus visible text such as `Due within 24 hours`; the icon is decorative. Tests assert visible status/warning text independently of the coloured strips. | Pass. |
| Accessible names and announcements | The toolbar has `role="search"`; global/per-unit searches and icon buttons have names; reversed dates use `aria-invalid`, `aria-describedby` and a `role="alert"`; empty/no-match surfaces use visible text and `role="status"`. | Pass at source/test-review level; independent assistive-technology certification is not claimed. |

Automated evidence is anchored in the exact merged
[`f-cross-dashboard.component.spec.ts`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/dashboard/f-cross-dashboard.component.spec.ts),
[`f-cross-dashboard.route.spec.ts`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/dashboard/f-cross-dashboard.route.spec.ts)
and
[`dashboard-list-item.component.spec.ts`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/src/app/dashboard/list-item/dashboard-list-item.component.spec.ts).
The focused CPD component run passes **54/54**. The broader exact-head CPD
matrix remains **98 passing tests with one existing todo**, and the hosted Web
suite remains 607 tests across 104 files.

Responsive provenance is retained in the exact merged
[`cpd-sizing-investigation.md`](https://github.com/ontrack-features-t2-2026/doubtfire-web/blob/16c22c992c821e16981c8f8cb2601f0a61f73007/docs/cpd-sizing-investigation.md)
and the committed [desktop](screenshots/cpd-dashboard-desktop.png) and
[390×844](screenshots/cpd-dashboard-narrow-viewport.png) privacy-safe captures.

## Original baseline decision and honest limitations

`CPD-Q05` is **validated as an as-built usability/accessibility evidence
record**. The requester, acting as owner, waived an inactive-peer subjective
opinion gate. That waiver closes the checklist dependency without fabricating
participant endorsement or attributing approval to an uncontacted person.

The result does not claim:

- independent participant research, accessibility certification or assistive-
  technology conformance testing;
- a fully stacked phone layout at the `16c22c9` baseline—the documented narrow
  view used horizontal scrolling and was superseded by the PR #120 follow-up;
- production-data validation; or
- protected GitHub approval for open Web documentation
  [#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108).

No CPD product-fix PR was required for the original live result. Web #108 is
technically green but remains open and review-required. The later product
follow-up, Web #120, is merged. CPD can therefore be handed over as
**validated / handed over**, with the phone improvement published and without
rewriting historical evidence.
