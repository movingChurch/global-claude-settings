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

## Context Clarification

Before reviewing, if focus areas are unclear:

1. **Use `/interview` command** to determine:
   - Review priorities (security, performance, maintainability)
   - Specific concerns or known issues
   - Compliance requirements
   - Severity thresholds for findings
2. **Ask about context** - business criticality, deployment timeline
3. **Confirm review scope** before proceeding

## What It Does

1. **Compares** code against ./documents/guidelines/
2. **Validates** architecture pattern compliance
3. **Checks** coding standards from `./documents/guidelines/`
4. **Verifies** design patterns from `./documents/architectures/`
5. **Ensures** consistency with established conventions

## Review Based On

**Project Guidelines (`./documents/guidelines/`):**
- ✓ Coding standards and conventions
- ✓ Naming patterns and style rules
- ✓ File organization structure
- ✓ Quality requirements
- ✓ Development workflows

**Architecture Patterns (`./documents/architectures/`):**
- ✓ System design compliance
- ✓ Technical pattern usage
- ✓ Integration requirements
- ✓ Performance standards
- ✓ Security requirements

**Existing Codebase:**
- ✓ Consistency with current patterns
- ✓ Similar implementations
- ✓ Established conventions
- ✓ Team practices

## Output Example

```text
CODE REVIEW: auth/login.js

📋 GUIDELINES COMPLIANCE:
✅ Follows naming conventions from guidelines
✅ Matches file organization structure
❌ Missing error handling pattern (see guidelines/error-handling.md)

🏗️ ARCHITECTURE COMPLIANCE:
✅ Uses repository pattern correctly
❌ Direct DB call instead of service layer (see architecture/layers.md)
⚠️  Missing rate limiting (architecture/security.md)

🔴 VIOLATIONS:
1. Line 95: Against security guidelines
   Remove: console.log(password)
   Reference: guidelines/security.md#logging

2. Line 112: Architecture pattern violation
   Use service layer instead of direct DB access
   Reference: architecture/patterns.md#service-layer

ACTION REQUIRED:
Align with ./documents/guidelines/ and architecture before merge
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