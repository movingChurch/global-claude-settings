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

Tasks will be prioritized and ready for implementation.