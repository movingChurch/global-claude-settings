---
name: document define
description: Create requirements documents through systematic questioning using requirements-template.md
argument-hint: "document define" (fully interactive)
---

# Document Define Command

Create requirements documents through systematic questioning and template-based creation using the requirements-template.md structure.

## Usage

```bash
/document define
```

**Options:**

- No arguments - Fully interactive mode to gather feature name and all requirements

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Process Guide Loading** - Load development process requirements:
   - Check `documents/standards/` for project-specific workflow requirements
   - Load any mandatory process steps for requirements gathering

2. **Interview Process** - Use `/interview` command to systematically gather requirements:
   - Start with feature name for directory structure
   - Gather project purpose and objectives
   - Collect expected deliverables and outcomes
   - Gather detailed functional requirements iteratively
   - Collect specific acceptance criteria and success metrics
   - Identify any constraints or dependencies
   - **Continue iterative questioning until user confirms all requirements are complete**
   - **Do not proceed to next step until user explicitly states "done" or "complete"**

3. **Structure Creation** - Create directory structure: `documents/design/[feature-name]/`

4. **Template Loading** - Load requirements template from `~/.claude/documents/templates/requirements-template.md`

5. **Requirement Processing** - Process requirements into 5W1H format:
   - Transform each functional requirement into 5W1H sentence structure
   - Ensure each requirement clearly specifies: who, what, when, where, why, and how
   - Validate requirements are clear, actionable, and complete

6. **Document Generation** - Call `@technical-writer` to create requirements document:
   - **MANDATORY**: Must use loaded template as exact base structure - NO modifications to template structure allowed
   - **MANDATORY**: All sections, headings, and formatting from template must be preserved exactly
   - **MANDATORY**: Only substitute variables (${PROJECT_NAME}, ${FEATURE_NAME}) and fill content placeholders
   - **FORBIDDEN**: Creating custom sections, changing section order, or modifying template structure
   - Create Korean requirements document following template structure precisely

7. **File Creation** - Save Korean requirements document to `documents/design/[feature-name]/requirements.md`

## Output

```text
Created: documents/design/[feature-name]/requirements.md

📋 REQUIREMENTS DOCUMENT CREATED:
✓ Feature name collected and directory structure established
✓ Project purpose clearly defined in one sentence (Korean)
✓ Expected deliverables and outcomes documented (Korean)
✓ Detailed requirements gathered using 5W1H methodology (Korean)
✓ Each requirement includes who, what, when, where, why, and how
✓ Acceptance criteria and success metrics specified (Korean)
✓ Template structure followed for consistency
✓ Korean requirements document ready for development planning
```

## Anti-Overengineering Rules

**NEVER DO:**
- Add requirements not explicitly requested by user
- Create additional sections beyond template structure
- Assume future needs or add "nice-to-have" features
- Over-complicate simple requirements
- Add technical implementation details (belongs in design phase)

**ONLY DO WHAT'S ESSENTIAL:**
- ✅ Document exactly what user requested
- ✅ Use template structure precisely as-is
- ✅ Transform requirements into 5W1H sentence format for clarity
- ✅ Keep requirements at appropriate abstraction level
- ✅ Focus on business needs, not technical solutions

## Success Criteria

**GOOD** = Clear, actionable requirements document with complete 5W1H details for each requirement that can guide development decisions
**BAD** = Ambiguous requirements, missing context, vague descriptions, or over-engineered requirements beyond user requests
