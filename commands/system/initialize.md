---
name: initialize
description: Load ./documents/standards/ and projects into context
argument-hint: "initialize" or "initialize refresh"
---

# Initialize Command

Load and memorize all ./documents/standards/ and projects for consistent context in future work.

## Usage

```bash
/initialize [option]
```

**Options:**

- No argument - Initialize project context
- `refresh` - Reload and update existing context
- `status` - Show what's currently loaded

## Context Clarification

Before initialization, if project context is unclear:

1. **Use `/interview` command** to gather:
   - Project type and technology stack
   - Team structure and workflows
   - Existing conventions to preserve
   - Integration requirements
2. **Confirm project scope** and boundaries
3. **Verify understanding** before setting up project structure

## What It Does

1. **Discovers** all project documentation automatically
2. **Loads** standards and projects into memory
3. **Validates** documentation completeness
4. **Reports** what was found and loaded

## Discovery Locations

- `./documents/standards/` - Project standards and conventions
- `./documents/projects/` - System design patterns
- `./documents/design/` - Existing design documents
- Root configuration files - Project setup and tooling

## Context Loading

**Standards:**

- Coding standards and conventions
- Project structure patterns
- Quality requirements
- Development workflows

**Projects:**

- System design decisions
- Technical patterns and constraints
- Integration requirements
- Performance and security standards

## Output

```text
✅ PROJECT CONTEXT INITIALIZED

LOADED:
📋 Standards: 5 documents
🏗️  Projects: 3 documents
📐 Design Patterns: 2 documents

READY:
- Coding standards applied
- Project patterns available
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
