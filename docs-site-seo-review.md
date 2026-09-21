# Documentation search metadata review

DOC-7. Recommendations only, checked 20 September 2026. No hosting, domain or
deployed-site settings were changed.

These five pages are linked from the documentation home or primary sidebar and
are plausible first stops for a new contributor. This selection is based on
navigation, not traffic analytics. All five returned HTTP 200. The deployed HTML
was inspected for its title, description and heading structure; source was
cross-checked against [Astro revision efb32e6](https://github.com/thoth-tech/doubtfire-astro/tree/efb32e65700c533072008ca0e894cfdaf6740d61).

| Page | Current title / description | Recommended title | Recommended description | Heading/content change |
| --- | --- | --- | --- | --- |
| [Home](https://ontrackdocumentation.netlify.app/) | Welcome to Ontrack Technical Documentation · OnTrack; description is the Starlight starter text. | OnTrack documentation: setup and contributor guides | Set up OnTrack, find the frontend and API guides, and learn how to contribute changes with testing and peer review. | Keep one H1; replace the generic introduction with Start here, Repositories and Tutorials sections. |
| [Introduction](https://ontrackdocumentation.netlify.app/document/introduction/) | OnTrack Technical Documentation · OnTrack; no description. | About OnTrack and its repositories | Understand OnTrack's student learning workflow and how the Angular frontend, Rails API and deployment repositories fit together. | Keep the generated H1; replace the single broad Introduction H2 with What OnTrack does, Architecture and Where to contribute. |
| [Initial setup](https://ontrackdocumentation.netlify.app/setup/set/) | Initial Setup · OnTrack; no description. | Set up OnTrack for local development | Install the prerequisites, clone the OnTrack repositories, start the local environment and verify it before opening your first pull request. | Preserve the H2 sequence but group prerequisites before commands. Update the T1 references and malformed command punctuation against the current repository READMEs. |
| [Frontend](https://ontrackdocumentation.netlify.app/frontend/page/) | Example · OnTrack; no description. | OnTrack frontend development guide | Find the Angular frontend structure, local development commands, component conventions and checks for contributing to OnTrack Web. | Currently a placeholder with H1 Example and H1 Add topic. Write the real guide before using this description; keep one generated H1 and use H2 sections. |
| [API index](https://ontrackdocumentation.netlify.app/backend/api/api_list/) | Doubtfire API · OnTrack; no description. | OnTrack API reference: endpoints and authentication | Browse OnTrack API resources for users, units, projects, tasks and submissions, with links to endpoint and authentication documentation. | Change the body H1 to H2 so it does not duplicate the generated page H1. Turn the resource names into links to their endpoint pages. |

Starlight renders each frontmatter title as the main page heading and appends the
site name to the browser title. Use concise frontmatter titles without a second
site-name suffix; add a distinct frontmatter description per page. The table
descriptions are proposed copy, not a claim that the missing frontend content
exists.

## Crawl files and next-trimester work

GET requests to [robots.txt](https://ontrackdocumentation.netlify.app/robots.txt),
[sitemap-index.xml](https://ontrackdocumentation.netlify.app/sitemap-index.xml)
and [sitemap.xml](https://ontrackdocumentation.netlify.app/sitemap.xml) all returned
HTTP 404 HTML pages. There is no `site` canonical URL in the inspected Astro
configuration and no `public/robots.txt` at that source revision.

After the hosting owner confirms the canonical domain, configure that URL,
generate and inspect a sitemap, and add a robots file that references it. Check
that only intended public documentation is indexed and preview hosts are handled
separately. A robots file is not access control. Recheck deployed metadata after
publication; a source change alone does not establish the deployed result.

The [landing outline](landing-page-outline.md) supplies the proposed content for
the first page; the [tutorial index](tutorial-links.md) supplies existing links.
