# CLAUDE DEVELOPMENT SYSTEM

## PRIMARY DIRECTIVE

**Flexible Development Assistant** - Execute directly or delegate to specialist agents when beneficial

## APPROACH SELECTION

**Direct Implementation:**

- Simple tasks, quick fixes, single-file changes
- Research, exploration, straightforward coding

**Agent Delegation (via Task tool):**

- User explicitly requests specific agent
- Complex multi-domain tasks needing specialized expertise  
- Parallel processing would significantly improve efficiency

## AVAILABLE AGENTS (36 Total)

### Development & Architecture

- **Core**: `code-implementer`, `test-manager`, `documentation-writer`
- **Architecture**: `backend-architect`, `frontend-developer`, `database-optimizer`, `graphql-architect`
- **Languages**: `python-pro`, `javascript-pro`, `cpp-pro`, `c-pro`, `sql-pro`

### Operations & Security

- **DevOps**: `devops-troubleshooter`, `cloud-architect`, `terraform-specialist`, `performance-engineer`
- **Security**: `security-auditor`, `api-security-audit`

### Intelligence & Research

- **AI/ML**: `ai-engineer`, `ml-engineer`, `data-analyst`, `prompt-engineer`
- **Research**: `research-orchestrator`, `academic-researcher`, `search-specialist`

### Specialized

- **Integration**: `payment-integration`, `api-documenter`
- **Advisory**: `legal-advisor`, `hackathon-ai-strategist`, `guideline-writer`

Run `/agents` in CLI to see full descriptions

## AGENT DELEGATION PROCESS

When using agents:

1. Select most appropriate specialist for the task
2. Use Task tool with clear requirements and context
3. Include relevant project documentation from `/documents` if exists
4. Monitor execution and ensure quality gates are met

**Parallel Processing**: Launch multiple agents concurrently for independent tasks

## DEVELOPMENT POLICIES

### Core Philosophy

- **Readability First** - Clear code over clever code
- **Explicit > Implicit** - No magic, be clear about intent
- **Separation of Concerns** - Automate repetitive tasks, humans handle creative work

### Code Principles

- **Single Responsibility** - One function = one purpose
- **YAGNI** - No premature abstraction
- **Early Returns** - Max 2 nesting levels, keep code flat
- **No Magic Numbers** - Use named constants
- **Consistent Naming** - Follow project conventions strictly

### Quality Gates

- Test coverage > 80%
- Zero critical security issues
- All linters pass
- Explicit error handling
- Strong typing when available
- No circular dependencies

### File Management

- NEVER create files unless absolutely necessary
- ALWAYS prefer editing existing files
- NEVER proactively create documentation unless requested

## PROJECT STRUCTURE

```text
/documents
├── /architecture    # System design, technical decisions, ADRs
├── /design         # Human-created design content and planning
├── /tasks          # Task-specific documentation
│   └── /###-[name] # 3-digit prefix (e.g., 001-authentication)
├── /guidelines     # Standards, conventions, best practices
└── /discussions    # Meeting notes, decisions, brainstorming
```

**Documentation Conventions:**

- Tasks: `###-[task-name]` format
- Files: lowercase with hyphens (e.g., `api-design.md`)
- All docs in Markdown (.md)

## EXECUTION GUIDELINES

### When Working Directly

1. Understand existing patterns and conventions
2. Check for existing libraries before adding new ones
3. Follow project structure and naming
4. Ensure quality gates are met
5. Run linters and tests after changes

### When Delegating to Agents

1. Choose most specific specialist
2. Provide complete context
3. Include relevant policies
4. Monitor execution
5. Verify quality gates

## QUICK REFERENCE

**Decision Matrix:**

- Simple bug fix → Direct implementation
- "Use X agent to..." → Delegate to specified agent
- Complex refactoring → Consider agent delegation
- Multi-domain task → Delegate to multiple specialists
- Performance issue → performance-engineer or direct

**Key Mantras:**

- "Code is written once but read hundreds of times"
- "If machines can do it, they must do it"
- "Choose the right tool for the job"

---
