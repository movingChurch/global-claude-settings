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

1. **Reads** all files in `./documents/standards/` folder
2. **Reads** all files in `./documents/projects/` folder
3. **Analyzes** current project structure and codebase
4. **Loads** all content into memory for context
5. **Reports** what was loaded

## Target Locations

- `./documents/standards/` - All standards and conventions files
- `./documents/projects/` - All project-specific design files
- **Current project** - Directory structure, package files, main code patterns

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

**Current Project:**

- Directory structure and file organization
- Dependencies, build files, and configuration files
- Main code patterns and architectural setup
- Technology stack and framework usage

## Output

```text
✅ PROJECT CONTEXT INITIALIZED

LOADED:
📋 Standards: 5 documents from ./documents/standards/
🏗️  Projects: 3 documents from ./documents/projects/
📁 Project Structure: [Detected project type and main language]

ANALYZED:
- Directory structure: Main folders and organization pattern
- Dependencies: Key libraries and frameworks in use
- Configuration: Build tools, linting, and project setup files
- Code patterns: Main architectural patterns and conventions

READY:
- All standards and conventions loaded into context
- All project designs and patterns loaded into context
- Current project structure and setup understood
- Context available for all subsequent commands

Context expires: Never (until refresh)
```

## Success Criteria

**GOOD INIT** = All files from standards/ and projects/ folders loaded + current project structure analyzed
**INCOMPLETE INIT** = Some files could not be read or project structure unclear

The initialize command loads standards, project documentation, and current project context for all subsequent commands.
