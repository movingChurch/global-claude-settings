---
name: architecture build
description: Design comprehensive project structure through systematic analysis and template-based documentation
argument-hint: "project-name or domain (e.g., e-commerce-api, dashboard-ui)"
---

# Architecture Build Command

Design comprehensive project-specific structure and architectural decisions through systematic analysis and template-based documentation.

## Usage

```bash
/architecture build [project-name]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Project purpose and scope
   - Technical requirements and constraints
   - Folder structure and module organization
   - Data flow and system interactions
   - Integration points and dependencies
   - Scalability and performance needs
   - Security and compliance requirements

2. **Architecture Analysis** - Analyze gathered requirements to define:
   - Project-specific folder hierarchy
   - Module responsibilities and boundaries
   - Design patterns and architectural decisions
   - Variable definitions and configuration structure

3. **Document Generation** - Call `@technical-writer` to create architecture document using template from `~/.claude/documents/templates/architecture-template.md`

4. **File Creation** - Save document to `./documents/architectures/[project-name].md`

## Output

```
Created: ./documents/architectures/[project-name].md

🏗️ ARCHITECTURE CREATED:
✓ Project structure and folder hierarchy defined
✓ Module responsibilities and boundaries established
✓ Data flow and system interactions documented
✓ Design patterns and architectural decisions specified
✓ Variable definitions and configuration structure included
✓ Integration points and dependencies mapped
```

## Success Criteria

**GOOD** = Complete project-specific architecture with clear structure, well-defined responsibilities, and consistent patterns that guide implementation decisions
**BAD** = Generic or incomplete structure, unclear module boundaries, or missing critical architectural decisions that lead to inconsistent implementation
