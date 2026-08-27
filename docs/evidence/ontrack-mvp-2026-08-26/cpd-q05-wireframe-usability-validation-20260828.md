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

## As-built text wireframe

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

## Validation matrix

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

## Decision and honest limitations

`CPD-Q05` is **validated as an as-built usability/accessibility evidence
record**. The requester, acting as owner, waived an inactive-peer subjective
opinion gate. That waiver closes the checklist dependency without fabricating
participant endorsement or attributing approval to an uncontacted person.

The result does not claim:

- independent participant research, accessibility certification or assistive-
  technology conformance testing;
- a fully stacked phone layout—the documented narrow view intentionally uses
  horizontal scrolling;
- production-data validation; or
- protected GitHub approval for open Web documentation
  [#108](https://github.com/ontrack-features-t2-2026/doubtfire-web/pull/108).

No CPD product-fix PR was required for the final live result. Web #108 is
technically green but remains open and review-required. CPD can therefore be
handed over as **validated / handed over — protected publication review
pending**.
