# DOC-6 translation review status

Checked 20 September 2026. **Blocked: hosted-service output is missing.** The
requester confirmed that there is no existing pilot URL or Chinese output and
asked for this missing input to be recorded while the other GitHub work proceeds.

The follow-up [completion procedure](remaining-ticket-completion.md#doc-6-create-one-hosted-translation-sample-and-review-it)
gives the exact preview setup and review steps. The input remains missing; the
existence of a procedure is not a translation-quality result.

[DOC-5](docs-site-translation-options-comparison.md) recommends a small
hosted-service pilot and compares Weglot, Google Cloud Translation and Starlight
internationalisation. It does not select a configured project or supply a
translated page. No service output was generated or assessed for this ticket;
there is no defensible yes/no translation-quality verdict yet.

## Ready-to-run review

Use the public [Initial Setup page](https://ontrackdocumentation.netlify.app/setup/set/)
as the single sample, with English as source and Simplified Chinese as target.
Record the service/project, translation date, exact English source revision and
the resulting Chinese text or preview URL. Use only public documentation.

The inspected [source revision](https://github.com/thoth-tech/doubtfire-astro/blob/efb32e65700c533072008ca0e894cfdaf6740d61/src/content/docs/setup/set.md)
already contains typographic command dashes/quotes and historical T1 references.
Correct these in the English source before judging whether translation preserves
commands. Do not blame a translation service for an English-source defect.

| Term or structure | Meaning that must survive the translation |
| --- | --- |
| OnTrack, Doubtfire, repository names | Keep product names and literal repository identifiers. |
| Unit | A course unit, not a measurement unit. |
| Task/submission | Coursework task and submitted work, not a Git task or a generic form submission. |
| Target grade | The student's intended result, not a promised or awarded grade. |
| Tutor/convenor | Teaching roles, not interchangeable administrator roles. |
| Branch, fork, pull request | Git concepts; preserve command arguments and branch names literally. |
| Shell commands, URLs and code blocks | No translated flags, altered hyphens, smart quotes or changed URLs. |
| English-only submission notice | Documentation language support does not change assessment submission requirements. |

When the output exists, record the original phrase, actual Chinese output,
meaning/error, suggested correction and reviewer for every finding. A fluent
Chinese reviewer should confirm technical meaning. Return **yes**, **yes with
fixes**, or **no** with concrete findings, and link the result here. This list is
a review checklist, not fabricated translation evidence.
