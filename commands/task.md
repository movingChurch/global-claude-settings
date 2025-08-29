---
name: task
description: Starts task breakdown using natural language description. Reference existing designs or describe new work, and through conversation, we'll break it down into implementable tasks.
argument-hint: "Please break down the user authentication design into tasks" or "What tasks are needed to implement payment functionality?"
---

# Task Breakdown Command (Natural Language Support)

A command where task experts break down work into implementable detailed tasks through conversation based on natural language description. You can reference existing design documents or describe new work.

## Usage

```bash
/task [describe in natural language]
```

**Natural Language Input Examples:**

- "Please break down the user authentication design into implementation tasks"
- "What tasks are needed to implement the payment system?"
- "How can dashboard performance improvement be divided into tasks?"
- "Please plan API security enhancement tasks"

**Interactive Confirmation Process:**
Task experts can confirm and adjust the broken-down tasks.

## Prerequisites

Before using this command:

- ✅ Phase 1 design must be complete and approved
- ✅ Design documents must exist in `/documents/features/###-[feature-name]/design/`
- ✅ Design PR must be merged
- ✅ All design quality gates must be passed

## What This Command Does

1. **Delegates to task-orchestrator**: Uses the Task tool to invoke the task-orchestrator agent
2. **Analyzes design documents**: Reviews completed design phase outputs
3. **Coordinates specialists**: Works with task-engineer, reference-linker, and spec-writer
4. **Creates task documentation**: Generates implementable task specifications
5. **Sets up Git workflow**: Creates task documentation branch

## Context Provided

The command automatically includes:

- **Project Guidelines**: All content from `/documents/guidelines/` (mandatory)
- **Design Documents**: Completed design phase outputs
- **Architecture Context**: Relevant architectural decisions
- **Codebase References**: Existing code that needs modification or reference

## Usage Examples

```bash
# Task breakdown referencing existing design documents
/task The user authentication system design is complete, please break it down into implementation tasks

# New work description and breakdown request
/task I need to create payment processing functionality, what tasks are needed? I'm considering Stripe integration

# Task planning based on problem situations
/task Current API responses are slow and need performance improvement. How should I divide this into tasks?

# With technical requirements
/task I need to create a new GraphQL API for mobile apps. How should I divide and proceed with the tasks?
```

## What Happens Next

The task-orchestrator agent will:

1. **Analyze design documents** to extract implementation requirements
2. **Coordinate with specialists**:
   - `task-engineer`: Technical task breakdown and checklists
   - `reference-linker`: Code references and file:line documentation
   - `spec-writer`: Detailed technical specifications
3. **Create comprehensive task documentation** with dependencies and sizing
4. **Optimize for parallel execution** where possible
5. **Generate implementation-ready specifications**

## Output Location

Task documents will be created in:

```bash
/documents/features/###-[feature-name]/tasks/
├── task-001-auth-backend.md
├── task-002-auth-frontend.md
├── task-003-auth-database.md
├── task-004-auth-testing.md
├── README.md (task overview)
└── specifications.md
```

## Task Document Structure

Each task will include:

```markdown
# Task: [Task Name]

## Overview
- Task description
- Estimated time: [1-8 hours]
- Priority: [P0-P3]

## Dependencies
- Prerequisites: [List prior tasks]
- Required resources: [List resources]

## Implementation Checklist
- [ ] Concrete, actionable steps

## Code References
- Related files: `path/to/file.ext:line`
- Modification targets: `path/to/target.ext:line`

## Technical Specifications
- Input/Processing/Output requirements
- Error handling specifications

## Acceptance Criteria
- Measurable completion requirements
```

## Git Workflow

- Creates branch: `feature/###-[feature-name]-tasks`
- Task documents are committed to this branch
- PR created for task review
- Transition to implementation phase after approval

## Quality Gates

Before proceeding to Phase 3, tasks must meet:

- ✅ All design elements covered by tasks
- ✅ Each task is clear and executable (1-8 hours)
- ✅ Dependencies properly identified
- ✅ Code references accurately documented
- ✅ Technical specifications complete
- ✅ No circular dependencies
- ✅ Parallel execution opportunities identified
- ✅ Acceptance criteria measurable

## Task Prioritization

- **P0 - Blockers**: Critical path items blocking other work
- **P1 - Core Features**: Essential functionality for MVP  
- **P2 - Standard Features**: Regular feature implementation
- **P3 - Enhancements**: Improvements and optimizations

Use this command after design approval to create comprehensive, implementable task documentation that enables efficient Phase 3 implementation.
