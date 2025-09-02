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

Code implementation following:

- **Project Guidelines** - Coding standards from `/documents/guidelines/`
- **Architecture Patterns** - System design from `/documents/architecture/`
- **Task Requirements** - Specifications from task documents
- **Existing Conventions** - Patterns already established in codebase

## Implementation Process

1. **Load Context**
   - Task documents from feature directory
   - Project guidelines and architecture
   - Existing codebase patterns

2. **Implement Code**
   - Follow established project structure
   - Apply consistent patterns and conventions
   - Ensure all specialists use same context

## How It Works

Implementation specialists receive complete context:

- Task requirements
- Project guidelines and architecture
- Existing code patterns

Approriate specialists are selected based on the implementation needs.

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
