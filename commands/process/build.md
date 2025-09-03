---
name: process build
description: Define mandatory development workflows through systematic analysis and template-based documentation
argument-hint: "workflow-type (e.g., feature-development, bug-fix, deployment)"
---

# Process Build Command

Define mandatory development workflows and procedures that LLMs must follow through systematic analysis and template-based documentation.

## Usage

```bash
/process build [workflow-type]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Workflow purpose and trigger conditions
   - Required sequential steps and dependencies
   - Quality gates and validation checkpoints
   - Tool requirements and automation points
   - Success criteria and completion conditions
   - Error handling and rollback procedures
   - Documentation and communication requirements

2. **Process Analysis** - Analyze gathered requirements to define:
   - Mandatory step sequence and order
   - Verification points at each stage
   - Required tools and commands
   - Input/output specifications for each step

3. **Document Generation** - Call `@technical-writer` to create process document using template from `~/.claude/documents/templates/process-template.md`

4. **File Creation** - Save document to `../documents/process/[workflow-type].md`

## Output

```
Created: ../documents/process/[workflow-type].md

⚙️ PROCESS CREATED:
✓ Mandatory workflow steps defined and sequenced
✓ Quality gates and validation checkpoints established
✓ Tool requirements and automation points specified
✓ Success criteria and completion conditions documented
✓ Error handling and rollback procedures included
✓ Verification and communication requirements defined
```

## Success Criteria

**GOOD** = Complete, enforceable workflow with clear sequential steps, validation points, and unambiguous success criteria that ensure consistent execution
**BAD** = Optional or unclear steps, missing validation points, or ambiguous criteria that allow inconsistent workflow execution
