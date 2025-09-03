---
name: guideline build
description: Create comprehensive coding standards through systematic questioning and template-based generation
argument-hint: "tech-stack (e.g., javascript, python, react)"
---

# Guideline Build Command

Create comprehensive coding standards and best practices documentation for specific technologies through systematic questioning and template-based generation.

## Usage

```bash
/guideline build [tech-stack]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Technology/framework specifics
   - Coding conventions and naming standards
   - Project structure preferences
   - Quality and testing standards
   - Security and performance considerations
   - Tool and library preferences

2. **Requirement Validation** - Ensure all guidelines are clear, actionable, and complete

3. **Document Generation** - Call `@technical-writer` to create guideline document using template from `~/.claude/documents/templates/guideline-template.md`

4. **File Creation** - Save document to `../documents/guidelines/[tech-stack].md`

## Output

```
Created: ../documents/guidelines/[tech-stack].md

📋 GUIDELINE CREATED:
✓ Comprehensive coding standards defined
✓ Naming conventions and formatting rules established
✓ Best practices and patterns documented
✓ Quality standards and testing requirements specified
✓ Security and performance guidelines included
✓ Tool and library recommendations provided
```

## Success Criteria

**GOOD** = Complete, actionable coding standards that can be consistently applied across projects with clear examples and rationale
**BAD** = Vague guidelines, missing critical standards, or inconsistent formatting that leads to ambiguous implementation
