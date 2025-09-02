---
name: review
description: Comprehensive code review with actionable feedback
argument-hint: "review current file" or "review --pr 123"
---

# Review Command

Perform thorough code reviews with constructive feedback.

## Usage

```bash
/review [target] [options]
```

**Options:**

- `[file/directory]` - Specific code to review
- `--pr [number]` - Review pull request
- `--security` - Focus on security issues
- `--performance` - Focus on performance
- `--quick` - High-level review only

## What It Does

1. **Examines** code quality and correctness
2. **Identifies** bugs and vulnerabilities
3. **Checks** standards compliance
4. **Suggests** improvements
5. **Validates** best practices

## Review Checklist

**Code Quality:**
- ✓ Readability and clarity
- ✓ Naming conventions
- ✓ Code organization
- ✓ DRY principle
- ✓ SOLID principles

**Functionality:**
- ✓ Logic correctness
- ✓ Edge case handling
- ✓ Error management
- ✓ Input validation
- ✓ Output accuracy

**Security:**
- ✓ Injection vulnerabilities
- ✓ Authentication issues
- ✓ Data exposure risks
- ✓ Cryptography usage
- ✓ Access control

**Performance:**
- ✓ Algorithm efficiency
- ✓ Database queries
- ✓ Memory usage
- ✓ Caching opportunities
- ✓ Async operations

## Output Example

```text
CODE REVIEW: auth/login.js

🟢 STRENGTHS:
- Clean function separation
- Good error handling
- Follows project conventions

🟡 SUGGESTIONS:
1. Line 42: Consider extracting magic number
   const MAX_ATTEMPTS = 3; // instead of hardcoded 3

2. Line 78: Optimize database query
   Use indexed field for user lookup

🔴 ISSUES:
1. Line 95: Security - Password logged in plain text
   Remove: console.log(password)

2. Line 112: Bug - Missing null check
   Add: if (!user) return error

OVERALL: 7/10
Fix critical issues before merge
```

## Review Categories

**Severity Levels:**
- 🔴 **Critical** - Must fix (security, bugs)
- 🟡 **Important** - Should fix (performance, maintainability)
- 🟢 **Minor** - Nice to have (style, optimization)

## Anti-Overengineering

- ✅ Focus on real issues, not perfection
- ✅ Pragmatic suggestions
- ✅ Consider context and deadlines
- ❌ Don't nitpick minor style issues
- ❌ Avoid premature optimization suggestions

## Success Criteria

**GOOD REVIEW** = Actionable, constructive, prioritized
**BAD REVIEW** = Nitpicky, vague, overwhelming

The review command provides professional code review feedback.