# Student Setup and Contribution Guide

This guide takes you from receiving your Jira ticket to opening a pull request.

## 1. Confirm your access

Accept the invitation to the `ontrack-features-t2-2026` GitHub organisation.

Check that you can open:

- [doubtfire-web](https://github.com/ontrack-features-t2-2026/doubtfire-web)
- [doubtfire-api](https://github.com/ontrack-features-t2-2026/doubtfire-api)
- [doubtfire-deploy](https://github.com/ontrack-features-t2-2026/doubtfire-deploy/tree/fix/local-dev-run)

If you cannot access a repository or need access urgently, contact **Maple Fox** on Microsoft Teams.

- Email: `s223932052@deakin.edu.au`
- Send your GitHub username, the affected repository and a screenshot of the error.

Do not create a different workflow or push to another organisation because access is missing. Ask for help first.

## 2. Find your Jira ticket

Use the [Jira ticket tutorial](https://youtu.be/GyJWYpOGj1o) to find your assigned work.

Before coding, confirm:

- the Jira ticket number;
- your objective;
- your workstream;
- whether the task needs Web, API, Deploy, or more than one repository;
- the acceptance criteria;
- any linked dependencies.

## 3. Install the required tools

You need:

- [Git](https://git-scm.com/install/);
- [Docker Desktop](https://www.docker.com/products/docker-desktop/), running before you start OnTrack;
- a [GitHub](https://github.com/login) account;
- [VS Code](https://code.visualstudio.com/download) or another editor;
- enough free disk space and memory for Docker.

You do not need to install Ruby or Node directly on your computer for this local Docker workflow.

## 4. Clone the three repositories

The three folders must sit beside each other because the Deploy configuration reads your local Web and API folders.

```text
ontrack-t2-2026/
├── doubtfire-deploy/
├── doubtfire-web/
└── doubtfire-api/
```

Run:

```bash
mkdir ontrack-t2-2026
cd ontrack-t2-2026

git clone --branch fix/local-dev-run \
  https://github.com/ontrack-features-t2-2026/doubtfire-deploy.git

git clone https://github.com/ontrack-features-t2-2026/doubtfire-web.git

git clone https://github.com/ontrack-features-t2-2026/doubtfire-api.git
```

The organisation repositories are your `origin` remotes. Add the Thoth Tech repositories as `upstream` references:

```bash
git -C doubtfire-deploy remote add upstream \
  https://github.com/thoth-tech/doubtfire-deploy.git

git -C doubtfire-web remote add upstream \
  https://github.com/thoth-tech/doubtfire-web.git

git -C doubtfire-api remote add upstream \
  https://github.com/thoth-tech/doubtfire-api.git
```

Check the result:

```bash
git -C doubtfire-deploy remote -v
git -C doubtfire-web remote -v
git -C doubtfire-api remote -v
```

Do not pull or merge upstream changes unless your team asks you to.

## 5. Switch Web and API to your objective branches

Find your exact branches in [branch-register.md](branch-register.md).

### Cross-Unit Dashboard

```bash
git -C doubtfire-web fetch origin
git -C doubtfire-web switch feature/cross-unit

git -C doubtfire-api fetch origin
git -C doubtfire-api switch feature/cross-unit
```

### Email Notifications

```bash
git -C doubtfire-web fetch origin
git -C doubtfire-web switch feature/email-notifications

git -C doubtfire-api fetch origin
git -C doubtfire-api switch feature/email-notifications
```

### Mobile Notifications

```bash
git -C doubtfire-web fetch origin
git -C doubtfire-web switch feature/mobile-notifications

git -C doubtfire-api fetch origin
git -C doubtfire-api switch feature/mobile-notifications
```

### Peer Progress Indicator

```bash
git -C doubtfire-web fetch origin
git -C doubtfire-web switch feature/peer-progress-indicator

git -C doubtfire-api fetch origin
git -C doubtfire-api switch feature/peer-progress-indicator
```

If Git says the local branch does not exist, use this form:

```bash
git switch --track origin/<branch-name>
```

Run that command from inside the affected repository.

## 6. Run OnTrack locally

Start Docker Desktop first.

From the `doubtfire-deploy/development` folder, run:

```bash
cd doubtfire-deploy/development

docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  up -d --build
```

The first build can take a while.

### First-time local database setup

Run this only for your local development database. It deletes and recreates the local database.

```bash
docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  run --rm --no-deps doubtfire-api \
  bash -c "bundle exec rake db:drop db:create db:schema:load && bundle exec rails db:environment:set RAILS_ENV=development && bundle exec rake db:populate"
```

Then make sure everything is running:

```bash
docker compose \
  -f docker-compose.yml \
  -f docker-compose.local-paths.yml \
  up -d
```

Open:

- Web: `http://localhost:4200`
- API documentation: `http://localhost:3000/api/docs`

Local test accounts use the password `password`:

- `student_1`
- `atutor`
- `aconvenor`
- `aadmin`

## 7. Create your task branch

Move into the repository required by your Jira ticket.

Example for an Email Notifications Web task:

```bash
cd ../../doubtfire-web

git switch feature/email-notifications
git pull --ff-only origin feature/email-notifications

git switch -c feature/ABC-123-notification-preferences
```

Use this pattern:

```text
<workstream>/<Jira-ticket>-<short-description>
```

Examples:

```text
feature/ABC-123-notification-preferences
docs/ABC-124-email-event-guide
migration/ABC-125-update-notification-service
security/ABC-126-authorisation-tests
```

Never complete your task directly on `11.0.x` or a shared feature branch.

## 8. Make and save your changes

Check which branch you are on:

```bash
git branch --show-current
```

Check changed files:

```bash
git status
```

Stage only the files you intend to commit:

```bash
git add path/to/file
```

Commit with a clear message:

```bash
git commit -m "feat: add notification preference toggle"
```

Common commit types are:

- `feat` for new behaviour;
- `fix` for a bug fix;
- `docs` for documentation;
- `refactor` for code restructuring without a behaviour change;
- `test` for tests;
- `chore` for maintenance or configuration.

Push your task branch:

```bash
git push -u origin feature/ABC-123-notification-preferences
```

## 9. Open a pull request

On GitHub, select **Compare & pull request** after pushing your branch.

Check the base branch carefully. It must be your objective's shared feature branch.

Example:

```text
Your branch:
feature/ABC-123-notification-preferences

Correct base branch:
feature/email-notifications
```

Do not use `11.0.x` as the base for an ordinary task pull request.

Open the pull request as a **Draft** if the work or testing is not finished. Copy the contents of [pull-request-template.md](pull-request-template.md) into the description.

## 10. Request and respond to reviews

Request at least two peer reviews.

A useful reviewer should:

- read the Jira ticket and PR description;
- inspect the changed files;
- test functional work locally where practical;
- check relevant security and privacy risks;
- provide a clear review summary.

Respond to comments and push fixes to the same task branch. The pull request will update automatically.

## 11. Keep your evidence

Keep links or screenshots showing:

- your Jira ticket;
- your branch;
- your commits;
- your pull request;
- test results;
- reviewer comments;
- changes made after feedback;
- the final merge result.

This evidence helps show what you personally contributed.

## Basic security rules

- Never commit passwords, tokens, API keys or private keys.
- Do not use real student submissions, feedback or grades in screenshots or tests.
- Check that users can only view data allowed for their role.
- Keep notification text minimal where it may appear in email subjects, browsers or lock screens.
- Record any unresolved security or privacy concern in the Jira ticket and pull request.
