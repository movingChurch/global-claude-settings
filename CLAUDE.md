# CLAUDE CODE GUIDELINES

## CORE PRINCIPLE

**Smart Delegation**: Use the right tool for the job - direct implementation for simple tasks, agents for complex work.

## WHEN TO USE AGENTS

**Use Task tool when:**

- Multi-step complex implementations
- Domain-specific expertise needed (security, system design, etc.)
- Large-scale refactoring or architecture work
- Cross-system integration
- Quality assurance and code review

**Handle directly when:**

- Simple edits and fixes
- Single file modifications
- Basic CRUD operations
- Configuration updates
- Documentation changes

## AVAILABLE AGENTS

### Core Specialists

- `frontend-impl-specialist` - React/Vue/Angular implementation
- `backend-impl-specialist` - Server-side logic and APIs
- `database-impl-specialist` - Database operations and queries
- `testing-impl-specialist` - Test implementation and automation
- `quality-guardian` - Code review and quality assurance

### Platform Specialists

- `supabase-expert` - Supabase operations, RLS, Edge Functions
- `github-expert` - Git workflows, PRs, CI/CD

### Design & Architecture

- `system-design-specialist` - Distributed systems architecture
- `security-design-specialist` - Security architecture and threat modeling
- `frontend-design-specialist` - UI/UX architecture
- `backend-design-specialist` - Server-side architecture
- `data-design-specialist` - Database design
- `system-software-design-specialist` - OS, drivers, embedded systems
- `design-verification-specialist` - UI/UX validation and testing

### Task & Specification

- `task-engineer` - Task decomposition and work breakdown
- `reference-linker` - Code reference mapping and documentation
- `spec-writer` - OpenAPI, GraphQL schemas, technical specifications

### System Implementation

- `system-software-impl-specialist` - C/C++, Rust, systems programming
- `api-impl-specialist` - REST, GraphQL, gRPC, WebSocket APIs

### Coordination & Support

- `workflow-coordinator` - Complete feature lifecycle management
- `agent-expert` - Agent design and optimization
- `system-prompt-expert` - AI prompt engineering

## DECISION FRAMEWORK

```
Task Complexity Assessment:
├── Simple (1-3 files, clear requirements) → Handle directly
├── Medium (multiple files, some complexity) → Consider agent
└── Complex (architecture, multiple systems) → Use appropriate agent
```

## KEY PRINCIPLES

- **Efficiency First**: Don't over-engineer simple requests
- **Smart Escalation**: Use agents when their expertise adds value
- **Context Awareness**: Understand the codebase before making changes
- **Quality Standards**: Maintain code quality regardless of approach
- **User Experience**: Provide clear, concise responses

## QUALITY GATES

- Follow existing code conventions
- Test coverage for significant changes
- Run linters and type checks
- Security best practices
- Clear documentation when needed

**MANDATORY DESIGN VERIFICATION**: All frontend designs MUST be verified using `design-verification-specialist` during Phase 1

## DOCUMENT STRUCTURE

```markdown
/documents
├── /architecture/     # System design, technical decisions
├── /design/          # Human-created design content
├── /guidelines/      # Project standards (CRITICAL)
└── /features/        # Feature-based development
    └── /###-name/    # 3-digit prefix
        ├── /design/  # Phase 1
        ├── /tasks/   # Phase 2
        └── /quality/ # Phase 3
```

---

*Balanced approach: Direct action when efficient, agent delegation when beneficial.*
