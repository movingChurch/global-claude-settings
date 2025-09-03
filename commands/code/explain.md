---
name: explain
description: Explain complex code, algorithms, or design patterns
argument-hint: "explain this function" or "explain src/auth.js"
---

# Explain Command

Understand complex code through clear explanations and insights.

## Usage

```bash
/explain [target]
```

## Context Clarification

Before explaining, if requirements are unclear:

1. **Use `/interview` command** to understand:
   - Target audience (technical level)
   - Explanation depth needed
   - Specific areas of interest
   - Documentation purpose
2. **Confirm scope** - what aspects to focus on
3. **Verify approach** before generating explanation
```

**Options:**

- `[file/function]` - Specific code to explain
- `current` - Explain currently selected code
- `--deep` - Include implementation details
- `--simple` - ELI5 (Explain Like I'm 5) mode

## What It Does

1. **Analyzes** code structure and logic
2. **Identifies** patterns and algorithms
3. **Explains** purpose and functionality
4. **Suggests** improvements if applicable

## Explanation Coverage

- **Purpose** - What the code does
- **How** - Step-by-step logic flow
- **Why** - Design decisions and trade-offs
- **Patterns** - Design patterns used
- **Complexity** - Time/space analysis
- **Dependencies** - External connections

## Output Example

```text
EXPLAINING: auth/validateToken.js

PURPOSE:
Validates JWT tokens and checks expiration

ALGORITHM:
1. Parse JWT header and payload
2. Verify signature with secret key
3. Check expiration timestamp
4. Validate issuer and audience

PATTERNS:
- Chain of Responsibility (validation steps)
- Early return pattern for errors

COMPLEXITY:
- Time: O(1) for validation
- Space: O(n) for token storage

IMPROVEMENTS:
- Consider caching validated tokens
- Add rate limiting for failed attempts
```

## Focus Areas

- **Logic Flow** - How data moves through code
- **Edge Cases** - Boundary conditions handled
- **Error Handling** - Exception management
- **Performance** - Bottlenecks and optimizations
- **Security** - Potential vulnerabilities

## Success Criteria

**GOOD** = Clear understanding, actionable insights
**BAD** = Vague explanations, missing context

The explain command makes complex code understandable.