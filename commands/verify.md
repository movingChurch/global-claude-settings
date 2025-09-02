---
name: verify
description: Run comprehensive project verification checks (lint, test, build)
argument-hint: "verify all" or "verify frontend only"
---

# Verify Command

Run comprehensive project verification to ensure code quality and functionality.

## Usage

```bash
/verify [scope]
```

**Scope options:**
- `all` - Full verification (default)
- `frontend` - Frontend checks only
- `backend` - Backend checks only
- `quick` - Essential checks only

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

### Code Quality
- **Linting**: ESLint, Prettier, markdownlint (if configured)
- **Type Checking**: TypeScript, mypy, etc.
- **Code Standards**: Project-specific rules only

### Functionality
- **Tests**: Unit, integration, e2e (if configured)
- **Build**: Compilation, bundling, asset generation
- **Dependencies**: Security vulnerabilities, outdated packages

### Essential Checks
- **Syntax**: Code compiles/parses correctly
- **Imports**: All dependencies resolve
- **Configuration**: Valid config files

## Verification Process

1. **Discovery**: Find project tools from package.json, configs
2. **Essential First**: Run blocking checks (syntax, build)
3. **Quality Second**: Run quality checks (lint, test)
4. **Report**: Clear pass/fail status with actionable feedback

## Specialists Used

- `quality-guardian` - Code quality assessment and recommendations
- `testing-impl-specialist` - Test execution and coverage analysis (if tests exist)
- `general-purpose` - Project discovery and tool execution

## Output Format

```
✅ PROJECT VERIFICATION COMPLETE

ESSENTIAL CHECKS:
✅ Syntax validation passed
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