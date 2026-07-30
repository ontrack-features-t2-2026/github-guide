# Pull Request Template

Copy everything below this line into your GitHub pull request description.

---

## Jira task

- Jira ticket and link:
- Objective:
  - [ ] Cross-Unit Dashboard
  - [ ] Email Notifications
  - [ ] Mobile Notifications
  - [ ] Peer Progress Indicator
- Workstream:
  - [ ] Documentation
  - [ ] Features
  - [ ] Migration
  - [ ] Security

## Destination check

My pull request targets:

- [ ] `feature/cross-unit`
- [ ] `feature/email-notifications`
- [ ] `feature/mobile-notifications`
- [ ] `feature/peer-progress-indicator`
- [ ] `fix/local-dev-run` because this is an approved Deploy task

- [ ] I confirmed that this task PR does not target `11.0.x` directly.
- [ ] I created my branch from the correct shared feature branch.

## What problem does this address?

Explain the user or technical problem in simple terms.

## What did I change?

Summarise the main changes.

- 
- 
- 

## What is not included?

State anything deliberately left outside this Jira ticket.

- 

## Dependencies

Use `Not applicable` where needed.

- Related Web branch or PR:
- Related API branch or PR:
- Deploy branch or setup used:
- Related Jira tickets:
- Other dependencies:

## Testing

### Commands or checks completed

```text
Add commands or manual checks here.
```

### Roles tested

- [ ] Student
- [ ] Tutor
- [ ] Convenor or unit chair
- [ ] Administrator
- [ ] Not applicable

### Results

Explain what you expected and what happened.

### Evidence

Add screenshots, short recordings, API examples or test output where useful.

## Security and privacy

- [ ] I did not commit passwords, keys, secrets or tokens.
- [ ] I did not include real student submissions, feedback, grades or other private data.
- [ ] I checked that users only access information allowed for their role.
- [ ] I considered input validation and failure cases.
- [ ] I considered whether notification content could expose sensitive information.
- [ ] I recorded any remaining security or privacy concern below.

Security or privacy notes:

## Documentation and handover

- [ ] Documentation was updated in this PR.
- [ ] A separate documentation Jira ticket or PR is linked.
- [ ] No documentation change is required, and I explained why below.

Documentation notes:

## Reviewer requests

- Peer reviewer 1:
- Peer reviewer 2:
- Additional reviewer, where useful:

## Final checklist

- [ ] The PR title is meaningful and includes the Jira ticket number.
- [ ] The PR explains what changed and why.
- [ ] The correct base branch is selected.
- [ ] Relevant tests pass.
- [ ] Cross-repository dependencies are linked.
- [ ] Screenshots or other evidence are attached where useful.
- [ ] At least two peer reviews have been requested.
- [ ] Review comments will be resolved before merge.
