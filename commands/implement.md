---
name: implement
description: Implement features based on your description. I'll handle straightforward implementations directly or use specialist agents for complex work.
argument-hint: "Please implement user authentication functionality" or "I want to improve API performance. Please add caching functionality"
---

# Implementation Command

Describe what you want to implement and I'll either handle it directly for simple tasks or coordinate with implementation specialists for complex work.

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

1. **Smart Delegation**: Use specialists when their expertise matches the task
2. **Analyze Requirements**: Review specifications and existing code
3. **Quality Implementation**: Follow project guidelines and best practices
4. **Delegate to Specialists**: Use appropriate experts for their domains:
   - `frontend-impl-specialist` for UI/UX implementation
   - `backend-impl-specialist` for server-side logic and APIs
   - `database-impl-specialist` for database operations and queries
   - `testing-impl-specialist` for test implementation
   - `api-impl-specialist` for REST/GraphQL/WebSocket APIs
   - `system-software-impl-specialist` for C/C++, drivers, system-level code

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

## Implementation Approach

**When to Use Specialists:**
- Frontend work → `frontend-impl-specialist`
- Backend/API development → `backend-impl-specialist` or `api-impl-specialist`
- Database work → `database-impl-specialist`
- System programming → `system-software-impl-specialist`
- Testing implementation → `testing-impl-specialist`
- Multi-component features → Use multiple specialists as needed

**Direct Implementation:**
- Simple configuration changes
- Basic file modifications
- Documentation updates

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

Implementation progress tracking provides real-time status:

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

## Quality Standards

All implementations follow:

- ✅ Project coding standards and conventions
- ✅ Proper error handling and validation
- ✅ Security best practices
- ✅ Performance considerations
- ✅ Appropriate test coverage
- ✅ Clear documentation when needed

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

Use this command to implement features by delegating to the right specialist for each type of work. Specialists have deep expertise in their domains and will deliver higher quality results.
