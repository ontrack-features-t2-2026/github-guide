# AI Drafting Standard for Documentation

## Purpose

Allow students to use AI tools for initial drafting while protecting the accuracy, clarity, and reputation of OnTrack documentation.

This is a short team standard, not a formal policy document.

## What AI may be used for

AI tools may be used to:

- draft an initial outline or first pass of a guide, tutorial, or summary;
- rephrase rough notes for grammar and readability;
- turn bullet lists into Markdown tables, checklists, or step sequences.

AI must not replace your own understanding of the work. You must know what the draft actually says and what any commands or steps actually do before you use them.

## Mandatory human review

Every AI-assisted draft must be checked by a human before a pull request is opened:

1. Read the full draft and confirm you understand it.
2. Verify commands, paths, branch names, links, and ticket references against the real repositories and [branch-register.md](branch-register.md).
3. Amend the draft for clarity and correctness. Treat AI output as a starting draft only.
4. Open a pull request using the normal process and [pull-request-template.md](pull-request-template.md).

The student author remains responsible for the submitted documentation.

## Reviewers

Use the normal peer-review process. Request at least two student reviewers. Anyone on the team may pick up the review; reviewers do not need to be pre-named.

Reviewers must check relevance, accuracy, and clarity. Looking for AI content alone is not enough. AI use is allowed when this standard is followed.

## AI tells checklist

Remove these before requesting review:

- [ ] Conversational filler (for example "Hope this helps", "In conclusion", "Here is a comprehensive overview")
- [ ] Unnecessary emojis
- [ ] Invented commands, flags, URLs, or file paths
- [ ] Redundant narration (for example "In this section, we will explain...")
- [ ] Generic placeholders left unchanged (for example `foo/bar` or `<your-username-here>`)
- [ ] Tone that does not match the rest of `github-guide` (prefer direct, active instructions)
