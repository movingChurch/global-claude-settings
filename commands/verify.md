---
name: verify
description: Run all configured project checks (lint, test, build)
argument-hint: "verify" or "verify quick"
---

# Verify Command

Run all verification checks configured in your project.

## Usage

```bash
/verify [scope]
```

**Scope options:**

- `all` or no argument - Run all configured checks (default)
- `quick` - Essential checks only (build, syntax)
- `lint` - Run only linting tools
- `test` - Run only tests
- `build` - Run only build process

## Anti-Overengineering Rules

**ESSENTIAL CHECKS ONLY:**

- ✅ Run only configured project checks
- ✅ Skip checks not defined in project
- ✅ Focus on blocking issues, not perfection
- ✅ Prioritize functionality over style
- ✅ Fast feedback over comprehensive coverage

**NO EXCESSIVE VERIFICATION:**

- ❌ Don't add checks not requested
- ❌ Don't gold-plate quality standards
- ❌ Don't run unnecessary tools
- ❌ Don't over-analyze minor issues

## What Gets Verified

### Auto-Detected from Project

The command automatically discovers and runs whatever is configured in your project:

- **Build Scripts**: npm run build, make, cargo build, mvn compile, etc.
- **Test Scripts**: npm test, pytest, cargo test, go test, etc.
- **Lint Scripts**: npm run lint, pylint, cargo clippy, etc.
- **Type Checking**: tsc, mypy, flow, or any configured type checker
- **Format Checking**: prettier, black, rustfmt, gofmt, etc.

### Common Script Locations

- `package.json` scripts
- `Makefile` targets
- `Cargo.toml` commands
- `pyproject.toml` / `setup.cfg` / `tox.ini`
- `.github/workflows` CI scripts
- `gradle` / `maven` tasks
- Custom shell scripts (test.sh, lint.sh, etc.)

## Verification Process

1. **Discovery**: Find all available checks in the project:
   - Check for package.json scripts
   - Look for Makefile targets
   - Find build configuration files
   - Detect CI/CD workflows
   - Identify test runners

2. **Essential First**: Run critical checks
   - Build/compilation (if configured)
   - Syntax validation
   - Dependency checks

3. **Quality Second**: Run quality checks
   - Linting (if configured)
   - Tests (if configured)
   - Type checking (if configured)

4. **Report**: Show what was found and run

## Specialists Used

- `general-purpose` - Discover and execute project-configured checks
- `quality-guardian` - Analyze results and provide recommendations

## Output Format

```text
✅ PROJECT VERIFICATION COMPLETE

DISCOVERED CHECKS:
- Build: npm run build
- Test: npm test  
- Lint: npm run lint
- Type Check: npm run typecheck

ESSENTIAL CHECKS:
✅ Build successful
✅ Dependencies resolved

QUALITY CHECKS:
⚠️  3 linting warnings (non-blocking)
✅ Tests passed (87% coverage)
❌ Type check failed (2 errors)

SUMMARY:
- Status: FAIL (type errors must be fixed)
- Blocking Issues: 2
- Warnings: 3
- Time: 45s
```

## Success Criteria

**PASS Requirements:**

- All essential checks pass
- No blocking errors
- Build succeeds
- Core functionality works

**Warnings are OK:**

- Style/formatting issues
- Non-critical linting warnings
- Coverage below 100%
- Minor optimization suggestions

Project verification provides fast, actionable feedback on code readiness.
