---
name: execute
description: Execute all tasks sequentially with checklist tracking
argument-hint: "execute [feature-name]" or just "execute"
---

# Execute Command

Execute all tasks sequentially from task documents, tracking checklist progress and verification conditions.

## Usage

```bash
/execute [feature-name]
```

## What It Does

1. **Context Loading** - Load all required documents (document-first approach):
   - Read all task files from `documents/design/[feature-name]/tasks/`
   - Load `requirements.md` and `architecture.md` for reference
   - Load project guidelines from `documents/guidelines/`
   - Load architecture context from `documents/architectures/`
   - Check `documents/process/` for mandatory execution process requirements

2. **Sequential Task Execution** - Execute tasks in dependency order:
   - Process tasks in `001-`, `002-`, `003-` sequence
   - For each task, load complete context and specifications
   - Call appropriate specialist agents based on task requirements

3. **Checklist Tracking** - Track implementation progress:
   - Work through each task's implementation checklist item by item
   - Mark checklist items as completed during implementation
   - Ensure all checklist items are satisfied before moving to next task

4. **Verification Process** - Validate completion conditions:
   - Test each task against its completion conditions (verification criteria)
   - Ensure verification conditions are met before proceeding
   - Document completion status and results

5. **Agent Coordination** - Use specialist agents with full context:
   - Pass complete context (requirements, architecture, guidelines) to each agent
   - Select appropriate specialists based on task type and requirements
   - Ensure consistent implementation across all tasks

6. **Progress Reporting** - Track and report execution status:
   - Show current task progress and checklist completion
   - Report verification results for each completed task
   - Provide overall feature implementation status

## Output

```text
EXECUTING: documents/design/[feature-name]/tasks/

🚀 TASK EXECUTION IN PROGRESS:
✓ 001-[task-name].md - Completed (3/3 checklist items, verification passed)
🔄 002-[task-name].md - In Progress (1/4 checklist items completed)
⏳ 003-[task-name].md - Pending
⏳ 004-[task-name].md - Pending

📋 CURRENT CHECKLIST:
✓ [Completed checklist item]
🔄 [Current checklist item]
☐ [Pending checklist item]
☐ [Pending checklist item]
```

## Anti-Overengineering Rules

**NEVER DO:**
- Implement features beyond task specifications
- Add extra functionality not in checklist items
- Create additional files or components not specified
- Over-optimize or add unnecessary abstractions
- Skip verification conditions to add extra features

**ONLY DO WHAT'S ESSENTIAL:**
- ✅ Execute exactly what each task specifies
- ✅ Complete all checklist items as written
- ✅ Verify completion conditions precisely
- ✅ Focus on making tasks pass verification
- ✅ Stop when task verification conditions are met

## Success Criteria

**GOOD** = All tasks executed sequentially with completed checklists, verified completion conditions, and working implementation
**BAD** = Incomplete tasks, unverified completion conditions, over-engineered implementation, or implementation that doesn't meet task specifications
