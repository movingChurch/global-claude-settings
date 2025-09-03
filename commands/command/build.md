---
name: command build
description: Create user command interfaces through systematic analysis and template-based generation
argument-hint: "command-name (e.g., deploy, test, analyze)"
---

# Command Build Command

Create user command interfaces that provide structured workflows and consistent outputs through systematic analysis and template-based generation.

## Usage

```bash
/command build [command-name]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Command purpose and target users
   - Required arguments and parameters
   - Sequential workflow steps and logic
   - Expected inputs and outputs
   - Success and failure conditions
   - Integration with agents or tools
   - Usage examples and edge cases

2. **Command Analysis** - Analyze gathered requirements to define:
   - Command interface and argument structure
   - Step-by-step execution workflow
   - Clear success/failure criteria
   - Consistent output formatting

3. **Document Generation** - Call `@technical-writer` to create command document using template from `~/.claude/documents/templates/command-template.md`

4. **File Creation** - Save document to appropriate command namespace folder (e.g., `~/.claude/commands/[namespace]/[command-name].md`)

## Output

```
Created: ~/.claude/commands/[namespace]/[command-name].md

⚡ COMMAND CREATED:
✓ Command interface and arguments defined
✓ Sequential workflow steps documented
✓ Success and failure criteria specified
✓ Integration points and tool usage mapped
✓ Usage examples and edge cases covered
✓ Consistent output formatting established
```

## Success Criteria

**GOOD** = Complete command specification with clear interface, unambiguous workflow, and consistent behavior that users can rely on for predictable results
**BAD** = Unclear interface, ambiguous steps, or inconsistent behavior that leads to unpredictable command execution and user confusion