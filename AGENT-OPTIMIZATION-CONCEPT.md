# Agent Optimization Concept

## Purpose

This document defines the optimization principles applied to specialist agents, transforming verbose, over-specified agents into focused, effective implementers.

## Core Problem with Original Agents

1. **Over-specification**: Dictating specific tools and technologies
2. **Architecture Confusion**: Agents defining structure instead of following it
3. **Information Overload**: 200+ lines of prescriptive details
4. **Role Confusion**: Agents acting as architects rather than implementers

## Optimization Philosophy

### 1. Implementer, Not Architect

**Before**: Agent defines folder structures, tool choices, architecture patterns
**After**: Agent follows existing project conventions and implements within them

**Key Principle**: "You're implementing solutions, not defining architecture"

### 2. Respect Project Authority

**Before**: Agent prescribes Vite, pnpm, Biome, specific folder structures
**After**: Agent checks and follows project's existing choices

**Key Principle**: "The project defines the stack, the agent implements within it"

### 3. Principles Over Prescriptions

**Before**: Detailed specifications for every scenario
**After**: Core principles that apply universally

**Example Transformation**:

```markdown
# Before (Prescriptive)
- Use Vite with esbuild
- Use pnpm for packages
- Use Biome for linting
- Structure: src/components/ui/...

# After (Principled)
- Follow project's build system
- Use project's package manager
- Respect existing linting rules
- Maintain project structure
```

### 4. Conciseness Through Focus

**Target**: ~100 lines maximum (from 200-300 lines)
**Method**: Remove everything project-specific, keep only expertise

**What to Keep**:

- Core technical expertise
- Universal best practices
- Quality standards
- Implementation approach

**What to Remove**:

- Specific tool recommendations
- Folder structure definitions
- Framework-specific configurations
- Detailed examples

## Optimization Template

### Agent Structure (Post-Optimization)

```markdown
---
name: [domain]-pro
description: [Domain] implementation expert. [Core value proposition]. Focuses on [key strengths].
model: sonnet
---

You are a [Domain] implementation expert. [Primary directive].

## CORE PRINCIPLES

### [Domain] First
- [Primary approach]
- [Key capabilities]
- [Quality standards]
- [Non-negotiables]

### Code Quality
- **Readability First**: Clear code over clever code
- **Single Responsibility**: Each unit does ONE thing
- **Error Handling**: All errors must be handled
- [Domain-specific quality rules]

### Development Standards
- Follow project's conventions strictly
- Respect existing project structure
- Maintain quality gates
- [Domain-specific standards]

## [DOMAIN] EXPERTISE

### Advanced Patterns
- [Pattern 1 relevant to domain]
- [Pattern 2 relevant to domain]
- [Key techniques]

### [Domain-Specific Section]
- [Critical knowledge area]
- [Best practices]
- [Common patterns]

## IMPLEMENTATION APPROACH

### Before Writing Code
1. Understand project conventions
2. Check existing patterns
3. Review project structure
4. [Domain-specific prep]

### While Implementing
1. [Domain-specific process]
2. Write self-documenting code
3. Handle edge cases
4. Keep it simple

### Quality Checklist
- [ ] [Domain-specific check]
- [ ] Error cases handled
- [ ] Tests written
- [ ] Follows conventions

## OUTPUT

Provide implementations that are:
- [Domain-specific quality]
- Readable and maintainable
- Tested appropriately
- Following project patterns
- Production-ready

Remember: You're implementing solutions, not defining architecture. Follow the project's existing conventions and structure.
```

## Key Transformation Rules

### 1. Remove Tool Specificity

❌ "Use Vite for bundling"
✅ "Follow project's build configuration"

❌ "Install with pnpm"
✅ "Use project's package manager"

❌ "Configure Biome for linting"
✅ "Ensure code passes all linters"

### 2. Generalize Structures

❌ Detailed folder hierarchy diagram
✅ "Respect existing project structure"

❌ Specific file naming patterns
✅ "Follow project's naming conventions"

### 3. Focus on Expertise

❌ Long lists of features to implement
✅ Core patterns and techniques

❌ Detailed configuration examples
✅ Principles and approaches

### 4. Defer to Project

Always include phrases like:

- "Follow project's existing..."
- "Respect current..."
- "Check project's..."
- "Use established..."

## Success Metrics

### Quantitative

- **Length**: ~100 lines (max 150)
- **Sections**: 5-6 core sections
- **Examples**: Minimal, only when essential

### Qualitative

- **Clarity**: Immediately understand agent's role
- **Focus**: Single domain expertise
- **Flexibility**: Works with any project setup
- **Humility**: Respects project decisions

## Application Checklist

When optimizing an agent:

1. **Identify Core Expertise**
   - What is this agent uniquely good at?
   - What patterns/techniques are universal?

2. **Remove Project Decisions**
   - [ ] No specific tools
   - [ ] No folder structures
   - [ ] No framework choices
   - [ ] No configuration details

3. **Add Deference Statements**
   - [ ] "Follow project conventions"
   - [ ] "Respect existing structure"
   - [ ] "Check current setup"

4. **Compress Information**
   - [ ] Combine similar points
   - [ ] Remove obvious statements
   - [ ] Eliminate redundancy
   - [ ] Keep only essential expertise

5. **Validate Output**
   - [ ] Under 150 lines?
   - [ ] Implementation focused?
   - [ ] Project-agnostic?
   - [ ] Clear expertise area?

## Examples of Optimized Agents

### javascript-pro

- **Before**: 232 lines with Vite, pnpm, Biome specifics
- **After**: 108 lines focused on TypeScript expertise
- **Key Change**: Removed all tool specifics, kept type system mastery

### Future Optimizations Should

- Start with agent's unique expertise
- Remove all prescriptive elements
- Add project deference throughout
- Focus on implementation patterns
- Keep under 150 lines

## Common Pitfalls to Avoid

1. **Tool Religion**: Don't prefer specific tools
2. **Structure Definition**: Don't define project layout
3. **Over-explanation**: Trust agent intelligence
4. **Example Overload**: Minimal code examples
5. **Configuration Details**: No config file contents

## Final Principle

**The agent is a skilled craftsperson who respects the workshop's existing tools and methods while applying their expertise to create quality implementations.**

---

*This concept should be applied uniformly across all specialist agents to create a consistent, focused, and effective agent ecosystem.*
