---
name: commit
description: Create organized commits with detailed messages
argument-hint: "commit" or "commit --push"
---

# Commit Command

Create well-organized commits with detailed, semantic commit messages.

## Usage

```bash
/commit [options]
```

**Options:**

- No argument - Analyze changes and create commits
- `--push` - Commit and push to remote
- `--amend` - Amend last commit
- `--interactive` - Review each commit before creating

## Context Clarification

Before committing, if unclear:

1. **Use `/interview` command** to understand:
   - Commit granularity preferences
   - Commit message conventions
   - Branch protection rules
   - Sign-off requirements
2. **Verify scope** - what should be included/excluded
3. **Confirm approach** before creating commits

## What It Does

1. **Analyzes** all uncommitted changes
2. **Groups** related changes logically
3. **Creates** atomic, focused commits
4. **Writes** detailed commit messages
5. **Follows** conventional commit format

## Commit Grouping Strategy

**Automatic Grouping:**

- **By feature** - Related functionality changes
- **By type** - feat, fix, refactor, docs, test, style
- **By scope** - Components, modules, or areas
- **By impact** - Breaking changes separated

## Commit Message Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**

- `feat` - New feature
- `fix` - Bug fix
- `refactor` - Code restructuring
- `docs` - Documentation only
- `style` - Formatting, no code change
- `test` - Adding tests
- `chore` - Maintenance

**Example Output:**

```text
ANALYZING CHANGES...

Found 12 changes across 5 files
Suggested 3 logical commits:

COMMIT 1/3:
feat(auth): implement OAuth2 login flow
- Add OAuth2 provider configuration
- Create login callback handler
- Implement token refresh mechanism
Files: auth/oauth.js, auth/config.js

COMMIT 2/3:
fix(api): resolve rate limiting issue
- Fix incorrect rate limit calculation
- Add proper error handling
Files: api/middleware.js

COMMIT 3/3:
docs(readme): update setup instructions
- Add OAuth configuration steps
- Update environment variables
Files: README.md

Proceed? [Y/n/edit]
```

## Commit Guidelines

**Good Commits:**

- Single purpose
- Complete functionality
- Clear message
- Proper type/scope

**Avoid:**

- Mixed concerns
- WIP commits
- Vague messages
- Huge changesets

## Specialist Used

- `github-expert` - Git operations and best practices

## Success Criteria

**GOOD** = Atomic commits, clear history, semantic messages
**BAD** = Mixed changes, unclear messages, broken commits

The commit command ensures clean, professional git history.
