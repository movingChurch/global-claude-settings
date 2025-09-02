---
name: initialize
description: Load project guidelines and architecture into context
argument-hint: "initialize" or "initialize refresh"
---

# Initialize Command

Load and memorize all project guidelines and architecture for consistent context in future work.

## Usage

```bash
/initialize [option]
```

**Options:**

- No argument - Initialize project context
- `refresh` - Reload and update existing context
- `status` - Show what's currently loaded

## What It Does

1. **Discovers** all project documentation automatically
2. **Loads** guidelines and architecture into memory
3. **Validates** documentation completeness
4. **Reports** what was found and loaded

## Discovery Locations

- `/documents/guidelines/` - Project standards and conventions
- `/documents/architecture/` - System design patterns
- `/documents/design/` - Existing design documents
- Root configuration files - Project setup and tooling

## Context Loading

**Guidelines:**

- Coding standards and conventions
- Project structure patterns
- Quality requirements
- Development workflows

**Architecture:**

- System design decisions
- Technical patterns and constraints
- Integration requirements
- Performance and security standards

## Output

```text
✅ PROJECT CONTEXT INITIALIZED

LOADED:
📋 Guidelines: 5 documents
🏗️  Architecture: 3 documents
📐 Design Patterns: 2 documents

READY:
- Coding standards applied
- Architecture patterns available
- Design conventions loaded

Context expires: Never (until refresh)
```

## Anti-Overengineering

- ✅ Load only existing documentation
- ✅ Focus on actionable guidance
- ✅ Skip incomplete or draft documents
- ❌ Don't create missing documentation
- ❌ Don't make assumptions about standards

## Success Criteria

**GOOD INIT** = All existing docs loaded and ready for use
**INCOMPLETE INIT** = Some documents missing or unreadable

The initialize command prepares context for all subsequent commands.
