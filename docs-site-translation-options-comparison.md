# DOC-5: Automated Translation Options for the Documentation Site

**Research date:** 16 September 2026
**Scope:** Research only. No translation feature has been implemented.

## Current Documentation Site

The OnTrack documentation site is stored in the
[doubtfire-astro repository](https://github.com/thoth-tech/doubtfire-astro).
It is built with Astro and Starlight and is currently deployed through Netlify.

Starlight already supports multilingual websites, including language-specific
routes, fallback pages and right-to-left languages. However, it does not
automatically translate the written documentation.

## Options Compared

| Option | Setup effort | Ongoing maintenance | Cost and quality |
| --- | --- | --- | --- |
| Starlight built-in internationalisation | Low to medium. Configure the languages and create a content folder for each language. Estimated setup: 1–2 developer days. | High. Contributors must translate and update each page whenever the English version changes. | No additional service cost. Human-reviewed translations can provide the best quality, but this option requires the most contributor time. |
| Google Cloud Translation API | Medium to high. A script or build process must send changed content to the API while protecting Markdown, links and code examples. Estimated setup: 2–4 developer days. | Low to medium. New translations can be generated automatically, but technical wording still needs checking. | The first 500,000 characters each month are currently free, followed by usage-based pricing. Translation quality may vary for OnTrack terms and technical instructions. |
| Hosted translation service such as Weglot | Low. The service can be connected to the website and can detect new or updated pages automatically. Estimated pilot setup: 2–4 hours. | Low. This option requires the least manual upkeep because the provider manages most translation updates and the language selector. | A small free plan is available, but a documentation site would probably need a paid subscription based on its word count and number of languages. Technical accuracy, accessibility and privacy would still need to be checked. |

## Least Manual Upkeep

A hosted translation service would require the least manual upkeep each
trimester. It can detect content changes and update translated versions without
contributors maintaining a separate copy of every documentation page.

## Recommendation

I recommend running a small hosted-service pilot with one additional language
and a limited group of documentation pages. This is the quickest way to find
out whether automated language support is useful without committing to a full
implementation.

The pilot would take approximately two to four hours to configure, followed by
one to two hours for checking technical wording, links, code blocks,
accessibility and layout. Before a full rollout, the team should confirm the
total site word count, subscription cost, privacy requirements and translation
quality.

## Sources

- [OnTrack documentation repository](https://github.com/thoth-tech/doubtfire-astro)
- [Starlight internationalisation guide](https://starlight.astro.build/guides/i18n/)
- [Google Cloud Translation pricing](https://cloud.google.com/products/translate/pricing)
- [Weglot pricing](https://www.weglot.com/pricing)
