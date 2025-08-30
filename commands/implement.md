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

## Specialists Used

- `frontend-impl-specialist` - UI components
- `backend-impl-specialist` - Server logic
- `database-impl-specialist` - Database work
- `api-impl-specialist` - API endpoints
- `testing-impl-specialist` - Test suites

Code will be implemented, tested, and ready for review.