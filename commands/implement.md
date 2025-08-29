---
name: implement
description: Describe implementation requests in natural language, and implementation experts will coordinate tasks to implement high-quality code. You can reference existing task documents or directly describe new implementation requirements.
argument-hint: "Please implement user authentication functionality" or "I want to improve API performance. Please add caching functionality"
---

# Implementation Command (Natural Language Support)

Describe implementation requests in natural language, and implementation experts will confirm understanding through conversation and implement high-quality code. You can reference existing task documents or directly describe new features.

## Usage

```bash
/implement [describe in natural language]
```

**Natural Language Input Examples:**
- "Please implement user authentication functionality"
- "I want to create a payment processing system. Please integrate with Stripe"
- "API response speed is slow, so I want to add caching"
- "Please implement just the frontend first"
- "Please implement only high-priority features"

**Interactive Confirmation Process:**
Implementation experts confirm requirements and align understanding before implementation.

## Prerequisites

Before using this command:

- ✅ Phase 1 design must be complete and approved
- ✅ Phase 2 task documentation must be complete and approved
- ✅ Task documents must exist in `/documents/features/###-[feature-name]/tasks/`
- ✅ Task PR must be merged
- ✅ All task quality gates must be passed
- ✅ Dependencies must be resolved

## What This Command Does

1. **Delegates to implementation-orchestrator**: Uses the Task tool to invoke the implementation-orchestrator
2. **Analyzes task documents**: Reviews all task specifications and dependencies
3. **Coordinates specialists**: Assigns tasks to appropriate implementation specialists
4. **Manages parallel execution**: Optimizes work distribution across specialists
5. **Enforces quality gates**: Ensures all implementations meet project standards
6. **Monitors progress**: Tracks completion and identifies blockers

## Context Provided

The command automatically includes:

- **Project Guidelines**: All content from `/documents/guidelines/` (mandatory)
- **Task Documentation**: Complete task specifications and dependencies
- **Design Documents**: Original design decisions and architecture
- **Code References**: Existing codebase context and modification targets

## Usage Examples

```bash
# Full implementation referencing existing task documents
/implement Please implement the user authentication system. I want to complete all tasks

# Implement only some components
/implement Please implement only the frontend part of the payment system first

# Priority-based implementation
/implement Please implement only the most important features from the dashboard UI first

# Direct new feature implementation request
/implement I want to create a user profile page. I need photo upload and editing functionality

# Performance improvement request
/implement API responses are too slow, please add caching and database optimization

# Security enhancement request
/implement Please strengthen the current system with 2FA authentication and XSS security
```

## What Happens Next

The implementation-orchestrator agent will:

1. **Analyze task documentation** and identify dependencies
2. **Create implementation strategy** for parallel execution
3. **Assign tasks to specialists**:
   - `frontend-impl-specialist`: UI components, user interactions
   - `backend-impl-specialist`: Server logic, business rules
   - `system-software-impl-specialist`: C/C++, drivers, OS-level code
   - `database-impl-specialist`: Schema, queries, migrations
   - `api-impl-specialist`: REST/GraphQL/gRPC endpoints
   - `testing-impl-specialist`: Unit/integration/E2E tests
4. **Monitor progress** and coordinate handoffs
5. **Enforce quality standards** throughout implementation

## Specialist Assignment Strategy

| Task Type | Primary Specialist | Secondary | Parallel Options |
|-----------|-------------------|-----------|------------------|
| UI Components | frontend-impl | testing-impl | Multiple components |
| API Endpoints | backend-impl | api-impl | Independent endpoints |
| Data Processing | backend-impl | database-impl | Batch operations |
| System Level | system-software-impl | testing-impl | Driver components |
| Integration | api-impl | testing-impl | API versions |

## Quality Gates (Enforced)

Every implementation must meet:

- ✅ **Functionality**: Matches design specifications exactly
- ✅ **Code Quality**: Follows project guidelines (100% compliance)  
- ✅ **Testing**: >80% test coverage with passing tests
- ✅ **Performance**: Response time <200ms, optimal memory usage
- ✅ **Security**: Input sanitization, injection prevention, XSS protection
- ✅ **Documentation**: Code comments and updates to project docs
- ✅ **Code Review**: Peer review completed and approved

## Git Workflow

- Creates branch: `feature/###-[feature-name]`
- Atomic commits for each task completion
- PR created for implementation review
- Quality gates validated before merge
- Merge to main after all approvals

## Progress Monitoring

The orchestrator provides real-time status:

```markdown
## Implementation Status
### Completed
- [x] Task-001: Auth Backend API (backend-impl-specialist)
### In Progress  
- [ ] Task-002: Login UI Component (frontend-impl-specialist) - 75%
### Blocked
- Task-003: Database Migration (dependency: Task-001)
### Next Steps
- Task-004: Integration Tests (ready to assign)
```

## Output Locations

Implementation artifacts will be created in:

```
# Code Implementation
src/
├── components/     # Frontend implementations
├── services/       # Backend implementations  
├── database/       # Database implementations
└── tests/         # Test implementations

# Quality Documentation  
/documents/features/###-[feature-name]/quality/
├── review-notes.md    # Code review feedback
├── test-results.md    # Test execution results
└── performance.md     # Performance benchmarks
```

## Parallel Execution

The orchestrator maximizes efficiency by:

- ✅ Identifying independent tasks for concurrent execution
- ✅ Launching multiple specialists simultaneously
- ✅ Managing task dependencies to prevent blocking  
- ✅ Coordinating handoffs between specialists
- ✅ Optimizing resource allocation

## Anti-Patterns Prevented

The orchestrator will never:

- ❌ Bypass guidelines for speed
- ❌ Merge code without tests
- ❌ Overload single specialists  
- ❌ Process parallel tasks sequentially
- ❌ Skip code reviews
- ❌ Ignore documentation updates
- ❌ Compromise on security

## Success Criteria

Implementation is complete when:

- ✅ All tasks implemented to specification
- ✅ Test coverage exceeding 80% 
- ✅ Performance targets achieved
- ✅ Security requirements satisfied
- ✅ 100% guideline compliance
- ✅ Complete documentation
- ✅ Clean code review results
- ✅ Ready for production deployment

Use this command when task documentation is complete and you're ready to begin coordinated, quality-controlled implementation of your feature.