---
name: verify
description: Run all configured project checks
argument-hint: "verify" or "verify quick"
---

# Verify Command

Run all verification checks configured in your project.

## Context Clarification

Before verification, if requirements are unclear:

1. **Use `/interview` command** to understand:
   - Verification priorities and focus areas
   - Test coverage expectations
   - Performance benchmarks
   - Security requirements
2. **Clarify acceptance criteria**
3. **Confirm verification scope** before proceeding

## Usage

```bash
/verify [scope]
```

**Options:**

- No argument or `all` - Run all checks
- `quick` - Essential checks only
- `lint` - Linting only
- `test` - Tests only
- `build` - Build only

## What It Does

1. **Discovers** project configuration automatically
2. **Executes** all found verification checks
3. **Reports** unified pass/fail status

## Checks

- **Build** - Compile and bundle
- **Test** - Run test suites
- **Lint** - Code quality checks
- **Type** - Type safety validation
- **Deps** - Dependency health

## Output

```text
✅ Build successful
✅ Dependencies resolved
⚠️  Lint: 3 warnings
✅ Tests: 87% coverage
❌ Type check: 2 errors

STATUS: FAIL
Fix 2 type errors to proceed
```

## Pass/Fail

**PASS** = Build works, no critical errors
**WARN** = Style issues, low coverage
**FAIL** = Build failed or blocking errors

The command adapts to any project structure and tooling.
