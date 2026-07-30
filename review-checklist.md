# Peer Review Checklist

Use this checklist when reviewing another student's pull request.

A review is not only a quick look at the code. A useful review checks the Jira task, the pull request destination, the changed files, the behaviour, the evidence and any security or privacy risk.

At least two peer reviews should be requested for each student task pull request.

## 1. Read the Jira ticket and pull request

Confirm that you understand:

- the problem being solved;
- the acceptance criteria;
- the objective and workstream;
- what is included and excluded;
- any Web, API or Deploy dependency.

Do not approve a PR when its purpose is unclear. Ask the author to improve the description first.

## 2. Check the destination branch

Confirm the PR base branch matches the objective:

| Objective | Correct base branch |
|---|---|
| Cross-Unit Dashboard | `feature/cross-unit` |
| Email Notifications | `feature/email-notifications` |
| Mobile Notifications | `feature/mobile-notifications` |
| Peer Progress Indicator | `feature/peer-progress-indicator` |
| Approved local environment task | `fix/local-dev-run` |

Ordinary student task PRs must not target `11.0.x` directly.

## 3. Inspect the changed files

Check that:

- the changes match the Jira ticket;
- unrelated files were not changed;
- names and comments are understandable;
- repeated code is avoided where practical;
- temporary debugging code is removed;
- generated files, secrets and private data are not included;
- error and empty states are considered;
- documentation is updated or linked where needed.

## 4. Fetch the PR locally

From the matching repository, use the PR number to create a temporary local review branch:

```bash
git fetch origin pull/<PR-NUMBER>/head:review/pr-<PR-NUMBER>
git switch review/pr-<PR-NUMBER>
```

Example for PR 12:

```bash
git fetch origin pull/12/head:review/pr-12
git switch review/pr-12
```

When Web and API changes depend on each other, check out the linked branches in both local repositories before testing.

## 5. Run or inspect the relevant tests

For functional work, test it locally where practical.

Use the Deploy workspace to run the selected Web and API branches together:

```bash
cd doubtfire-deploy/development

docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  up -d --build
```

Record:

- the Web branch and commit tested;
- the API branch and commit tested;
- the browser or role used;
- the commands run;
- expected behaviour;
- observed behaviour;
- any failure, edge case or regression found.

Documentation-only work may not need the full application, but links, commands, spelling and technical accuracy should still be checked.

## 6. Security and privacy review

Check what is relevant to the task:

- [ ] No password, token, API key, private key or secret is committed.
- [ ] No real student submission, feedback, grade or personal information is exposed.
- [ ] Users can only access information allowed for their role.
- [ ] Inputs are validated.
- [ ] Error messages do not expose sensitive details.
- [ ] Notification text uses the minimum necessary information.
- [ ] Disabled notification preferences remain disabled.
- [ ] Date, extension and status changes do not create stale or misleading information.
- [ ] Logs and screenshots are safe to share.
- [ ] Any unresolved risk is written in the PR and Jira ticket.

## 7. Choose the correct GitHub review result

### Approve

Use **Approve** when the work is ready and no blocking issue remains.

### Comment

Use **Comment** for useful feedback that does not block the PR.

### Request changes

Use **Request changes** when something must be fixed before merge. Clearly explain the problem and, where practical, suggest how the author can verify the fix.

## 8. Leave a clear review summary

Copy and complete this summary:

```markdown
## Review summary

PR reviewed:
Jira ticket:
Commit tested:

### Environment

- Web branch and commit:
- API branch and commit:
- Deploy branch:
- Browser or tool:
- User role tested:

### Checks completed

1.
2.
3.

### Expected result


### Observed result


### Findings

- Blocking issues:
- Non-blocking suggestions:
- Security or privacy notes:

### Review outcome

- [ ] Approve
- [ ] Comment
- [ ] Request changes

Reason:
```

A clear summary creates useful evidence for both the reviewer and the author.

## 9. After the author updates the PR

- Read the new commits.
- Retest the affected behaviour.
- Confirm your earlier comments were resolved.
- Update your review result where needed.

## 10. Clean up your temporary local review branch

After the review is finished, switch away from the temporary branch and delete it locally:

```bash
git switch <your-normal-branch>
git branch -D review/pr-<PR-NUMBER>
```

Do not delete another student's remote task branch.
