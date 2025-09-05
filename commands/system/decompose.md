---
name: decompose
description: Break down requirements and architecture into implementable tasks
argument-hint: "decompose [feature-name]" or just "decompose"
---

# Decompose Command

Convert requirements and architecture documents into clear, implementable tasks using smallest iteration units.

## Usage

```bash
/decompose [feature-name]
```

## What It Does

1. **Document Loading** - Load existing project documents:
   - Read `documents/design/[feature-name]/requirements.md`
   - Read `documents/design/[feature-name]/architecture.md`
   - Load project guidelines from `documents/guidelines/` (when needed)
   - Load architecture context from `documents/architectures/` (when needed)

2. **Task Analysis** - Analyze documents to identify tasks:
   - Break down each requirement into smallest iteration units
   - Map architecture implementation steps to concrete tasks
   - Ensure each task represents: "진행 → 검증 → 결과" cycle

3. **Task Generation** - Call specialist agents for task breakdown:
   - Use `@task-engineer` to break down complex requirements into smallest iteration units
   - Load template from `~/.claude/documents/templates/task-template.md`
   - **MANDATORY**: Must use loaded template as exact base structure - NO modifications to template structure allowed
   - **MANDATORY**: All sections, headings, and formatting from template must be preserved exactly
   - **MANDATORY**: Only substitute variables (${TASK_NAME}) and fill content placeholders
   - **FORBIDDEN**: Creating custom sections, changing section order, or modifying template structure
   - Create `001-[task-name].md`, `002-[task-name].md` format
   - Include purpose, result, implementation checklist, and verification conditions as defined in template

4. **Dependency Management** - Use agents for sequencing:
   - Call `@workflow-coordinator` to establish logical dependencies between tasks
   - Arrange tasks in executable order ensuring sequential execution
   - Validate dependency chains for consistency

5. **File Creation** - Generate task files:
   - Call `@technical-writer` to create well-structured task documents
   - Save tasks to `documents/design/[feature-name]/tasks/`
   - Ensure consistent formatting and clarity

6. **Fallback Interview** - If documents are insufficient:
   - Use `/interview` command in Korean to gather missing information
   - Only when existing documents lack necessary details

## Output

```text
Created: documents/design/[feature-name]/tasks/
├── 001-[task-name].md
├── 002-[task-name].md
└── ...

📋 TASK BREAKDOWN COMPLETED:
✓ Requirements and architecture documents analyzed
✓ Specialist agents used for task breakdown and sequencing
✓ Tasks broken down to smallest iteration units
✓ Each task includes verification conditions
✓ Dependencies and execution order established
✓ Ready for implementation planning
```

## Anti-Overengineering Rules

**NEVER DO:**
- Create tasks not derived from requirements or architecture
- Break down tasks into unnecessarily small units
- Add "preparation" or "research" tasks unless explicitly needed
- Create tasks for imaginary or future requirements
- Add extra sections beyond template structure

**ONLY DO WHAT'S ESSENTIAL:**
- ✅ Create tasks only for documented requirements
- ✅ Use smallest iteration units that produce verifiable results
- ✅ Follow template structure exactly
- ✅ Focus on direct path to requirement completion
- ✅ Ensure each task has clear verification conditions

## Success Criteria

**GOOD** = Clear, implementable tasks with specific verification conditions that represent smallest iteration units derived from requirements and architecture
**BAD** = Vague tasks, missing verification conditions, over-engineered task breakdown, or tasks not aligned with documented requirements and architecture
