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
   - Check `documents/process/` for project-specific workflow requirements
   - Load any mandatory process steps for requirements gathering

2. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Feature name for directory structure
   - Project purpose and objectives
   - Expected deliverables and outcomes
   - Detailed functional requirements with 5W1H methodology
   - Specific acceptance criteria and success metrics
   - Any constraints or dependencies
   - Continue questioning until user confirms completion

3. **Structure Creation** - Create directory structure: `documents/design/[feature-name]/`

4. **Template Loading** - Load requirements template from `~/.claude/documents/templates/requirements-template.md`

5. **Requirement Validation** - Ensure all requirements are clear, actionable, and complete using 5W1H framework

6. **Document Generation** - Call `@technical-writer` to create requirements document in Korean following template structure with variable substitution

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

## Success Criteria

**GOOD** = Clear, actionable requirements document with complete 5W1H details for each requirement that can guide development decisions
**BAD** = Ambiguous requirements, missing context, or vague descriptions that lead to unclear implementation goals
