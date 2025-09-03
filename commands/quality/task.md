---
name: task
description: Break down designs into implementable tasks
argument-hint: "break down authentication design" or "create payment tasks"
---

# Task Command

Convert design documents into clear, implementable tasks.

## Usage

```bash
/task [feature name or description]
```

## Context Clarification

Before creating tasks, if requirements are unclear:

1. **Use `/interview` command** to understand:
   - Task granularity preferences
   - Team size and skill levels
   - Sprint duration and velocity
   - Dependencies and constraints
2. **Clarify priorities** - MVP vs nice-to-have features
3. **Confirm task structure** before breaking down

## Prerequisites

- Design documents in `/documents/features/###-[feature-name]/design/`

## Output Structure

```
/documents/features/###-[feature-name]/tasks/
├── task-001-[name].md    # Individual task files
├── task-002-[name].md    # Atomic work units
├── README.md             # Task overview
└── specifications.md     # Technical specs
```

## Task Format

Each task includes:

- Description
- Dependencies
- Implementation checklist
- Code references
- Acceptance criteria

## Specialists Used

- `task-engineer` - Task breakdown
- `reference-linker` - Code references
- `spec-writer` - Technical specifications

## Anti-Overengineering Rules

**NO EXCESSIVE TASK BREAKDOWN:**

- Unnecessary granularity or micro-tasks
- Tasks not derived from requirements
- Over-complex dependency chains
- "Preparation" tasks for future needs
- Abstract or speculative work items

**ESSENTIAL TASKS ONLY:**

- ✅ Critical to core functionality
- ✅ Required for complete user flow
- ✅ Explicitly user-requested work
- ✅ Simple, clear work units
- ✅ Direct path to working feature

Tasks will be prioritized and ready for implementation.
