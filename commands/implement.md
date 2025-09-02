---
name: implement
description: Implement features from task documents
argument-hint: "implement authentication tasks" or "build payment system"
---

# Implement Command

Turn task documents into working code.

## Usage

```bash
/implement [feature or task reference]
```

## Prerequisites

- Task documents in `/documents/features/###-[feature-name]/tasks/`
- Project guidelines in `/documents/guidelines/`
- Architecture context in `/documents/architecture/`

## What Gets Built

```
src/
├── components/     # Frontend code
├── services/       # Backend code
├── database/       # Database schemas
└── tests/         # Test files
```

## Quality Documentation

```
/documents/features/###-[feature-name]/quality/
├── review-notes.md    # Code review feedback
├── test-results.md    # Test coverage >80%
└── performance.md     # Performance metrics
```

## Implementation Process

1. **Context Loading**
   - Load task documents from feature directory
   - Load project guidelines from `/documents/guidelines/`
   - Load architecture context from `/documents/architecture/`
   - Prepare comprehensive context package for each specialist

2. **Specialist Execution with Context**
   - Pass ALL context to each specialist:
     - Task requirements
     - Project guidelines
     - Architecture patterns
     - Code conventions
     - Existing implementations
   - Ensure consistency across all implementations

## Specialists Used

Each specialist receives:

- Task requirements from `/documents/features/###-[feature-name]/tasks/`
- Project guidelines from `/documents/guidelines/`
- Architecture context from `/documents/architecture/`
- Code conventions and patterns

Specialists invoked:

- `frontend-impl-specialist` - UI components
- `backend-impl-specialist` - Server logic
- `database-impl-specialist` - Database work
- `api-impl-specialist` - API endpoints
- `testing-impl-specialist` - Test suites

## Important Notes

- **CONTEXT IS MANDATORY**: Always pass guidelines and architecture to specialists
- **MAINTAIN CONSISTENCY**: All implementations must follow project standards
- **FOLLOW PATTERNS**: Use existing code patterns and conventions
- **QUALITY FIRST**: Ensure code meets quality standards before completion

## Anti-Overengineering Rules

**NEVER IMPLEMENT:**
- Features not in requirements
- Excessive abstraction layers
- "Future-proof" or preparatory code
- Unnecessary design patterns
- Complex configurations without clear need

**IMPLEMENT ONLY ESSENTIALS:**
- ✅ Explicitly requested functionality only
- ✅ Minimum viable product (MVP) approach
- ✅ Simplest working solution
- ✅ Essential to core functionality only
- ✅ Direct path to user value

Code will be implemented, tested, and ready for review.
