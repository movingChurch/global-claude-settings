---
name: document build
description: Build new documents through guided questioning and template-based creation
argument-hint: "document build [template-type] [document-name]" or just "document build"
---

# Document Build

Create new documents through systematic questioning and template-based creation.

## Usage

```bash
/document build [template-type] [document-name]
```

**Options:**

- `[template-type]` - Type of document (command, agent, system-prompt, etc.)
- `[document-name]` - Name of document to create
- No arguments - Interactive mode to define both

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Check template** - Load appropriate template from `/documents/templates/`
2. **Interview requirements** - Use /interview command to systematically gather all requirements through guided questions
3. **Verify** - Ensure all requirements are clear and complete
4. **@technical-writer** - Create document following template structure and standards
5. **Present draft** - Show final document for approval and create file

## Output

New document file created in appropriate location following standard template.

## Success Criteria

**GOOD** = Document is clear, actionable, and follows template standards
**BAD** = Ambiguous requirements, missing steps, or inconsistent format
