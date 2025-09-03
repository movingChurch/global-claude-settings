---
name: refactor
description: Refactor code to align with ./documents/guidelines/ and architecture
argument-hint: "refactor this file" or "refactor authentication module"
---

# Refactor Command

Refactor existing code to match project standards and ./documents/architectures/.

## Usage

```bash
/refactor [target]
```

**Options:**

- `[file/directory]` - Specific file or module to refactor
- `current` - Refactor currently open file
- `all` - Scan entire project for refactoring opportunities

## Context Clarification

Before refactoring, if requirements are unclear:

1. **Use `/interview` command** to understand:
   - Refactoring goals and priorities
   - Performance vs readability tradeoffs
   - Backward compatibility requirements
   - Testing coverage expectations
2. **Verify scope** - which patterns to apply, what to preserve
3. **Confirm approach** before making changes

## What It Does

1. **Analyzes** code against ./documents/guidelines/
2. **Identifies** deviations from ./documents/architectures/
3. **Refactors** to match established standards
4. **Validates** changes maintain functionality

## Reference Points

- `./documents/guidelines/` - Project coding standards
- `./documents/architectures/` - System design patterns
- Existing codebase patterns and conventions

## Refactoring Focus

- **Structure** - Match project organization patterns
- **Naming** - Follow naming conventions
- **Patterns** - Apply consistent design patterns
- **Simplicity** - Remove unnecessary complexity
- **Standards** - Align with coding guidelines

## Anti-Overengineering

- ✅ Improve readability and maintainability
- ✅ Simplify complex code
- ✅ Remove dead code
- ❌ Don't add unnecessary abstractions
- ❌ Don't over-optimize working code

## Output

```text
REFACTORING ANALYSIS:

Found 3 improvements:
1. Naming convention: userId → user_id
2. Pattern mismatch: Direct DB call → Repository pattern
3. Complexity: 15-line function → 5-line simplified

Changes applied:
✅ 3 files updated
✅ Tests still passing
✅ No functionality changes
```

## Success Criteria

**GOOD REFACTOR** = Cleaner, simpler, standards-compliant
**BAD REFACTOR** = Added complexity or broke functionality

The refactoring preserves behavior while improving code quality.
