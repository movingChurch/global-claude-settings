---
name: workflow
description: Manage complete feature development from design to implementation. I'll coordinate the entire process and track progress.
argument-hint: "I want to create user login functionality" or "I'm curious about the payment system progress"
---

# Complete Development Workflow Command

Manage entire feature development lifecycle through natural conversation. I'll coordinate design, planning, implementation, and quality control.

## Usage

```bash
/workflow [describe in natural language]
```

**Natural Language Input Examples:**

**Starting New Features:**

- "I want to create user login functionality from scratch"
- "I want to develop a payment system comprehensively"
- "Please create an online shopping mall"

**Progress Status Check:**

- "I'm curious about the user authentication project progress"
- "How far has payment functionality development progressed?"
- "Please show me the overall project status"

**Process Management:**

- "Can we move to the next stage?"
- "Please conduct quality inspection"
- "Are there any risk factors?"

**Interactive Process Management:**
The workflow coordinator guides the entire process through natural conversation.

## What This Command Does

1. **Complete Lifecycle Management**: Coordinate design → planning → implementation
2. **Smart Delegation**: Use specialists when their expertise matches the work
3. **Git Workflow Integration**: Manage branches and PR processes
4. **Quality Assurance**: Ensure standards compliance throughout
5. **Progress Monitoring**: Track development and identify issues
6. **Expert Coordination**: Use appropriate specialists for each phase

## Context Provided

The command automatically includes:

- **Project Guidelines**: All content from `/documents/guidelines/` (mandatory)
- **Architecture Context**: System design and technical decisions
- **Design Standards**: Project design conventions and patterns
- **Workflow Policies**: Feature development standards and procedures

## Usage Examples

```bash
# Start complete feature development
/workflow I want to create a system where users can log in safely. I'd like to strengthen security with OAuth2 and JWT

# Check progress status
/workflow How is payment system development progressing? Are there any risk factors or problems?

# Stage transition
/workflow Dashboard UI design is finished, can we move to the task breakdown stage?

# Progress monitoring
/workflow I want to continue monitoring user authentication feature development. Please let me know if problems arise

# Start complex project
/workflow I want to create an online shopping mall. I need user management, product catalog, shopping cart, and payment functionality

# Situational inquiries
/workflow Please show me a list of all currently ongoing projects
/workflow What tasks need to be completed this week?
```

## Feature Lifecycle Management

### Phase Structure

**Phase 1: Design (1 week)**

- Branch: `feature/###-[feature-name]-design`
- Entry: Requirements defined, stakeholders identified
- Exit: Design documents complete, ADRs recorded, PR merged
- Deliverables: `/documents/features/###-[feature-name]/design/`

**Phase 2: Task Documentation (3 days)**  

- Branch: `feature/###-[feature-name]-tasks`
- Entry: Design complete and approved
- Exit: All tasks documented, plan approved, PR merged
- Deliverables: `/documents/features/###-[feature-name]/tasks/`

**Phase 3: Implementation (1-3 weeks)**

- Branch: `feature/###-[feature-name]`
- Entry: Task documentation complete, resources allocated
- Exit: Code implemented, tests passing >80%, reviews approved, PR merged
- Deliverables: Working software, test suites, documentation

### Quality Gate Management

**Design Approval Gate**

- ✅ All requirements addressed
- ✅ Architecture review passed
- ✅ Security review completed
- ✅ Performance considerations documented
- **Reviewers**: Technical Lead, Security Architect, Product Owner

**Task Validation Gate**

- ✅ All tasks have acceptance criteria
- ✅ Dependencies correctly identified  
- ✅ Resource estimates validated
- ✅ Implementation approach confirmed
- **Reviewers**: Development Team Lead, Technical Architect

**Implementation Acceptance Gate**

- ✅ Functionality matches design
- ✅ All tests passing (>80% coverage)
- ✅ Security scan passed
- ✅ Performance benchmarks met
- ✅ Documentation complete
- **Reviewers**: Code Reviewers, QA Team, Product Owner

## Workflow Management

**Specialist Coordination:**

- Design work → relevant design specialists
- Task planning → `task-engineer`, `reference-linker`, `spec-writer`
- Implementation → Domain-specific implementation specialists
- Quality assurance → `quality-guardian`
- Git operations → `github-expert`

**Process Steps:**

1. **Initialize Structure**: Set up documentation and Git workflows
2. **Design Phase**: Plan architecture using appropriate design specialists
3. **Task Planning**: Break down work using task specialists
4. **Implementation**: Execute development using implementation specialists
5. **Quality Control**: Use quality specialists for review and testing
6. **Integration**: Coordinate merge and deployment

## Branch Strategy

```
main
├── feature/001-auth-design      # Phase 1: Design
├── feature/001-auth-tasks       # Phase 2: Tasks  
└── feature/001-auth-system      # Phase 3: Implementation
```

## Progress Monitoring

Comprehensive status reporting includes:

```markdown
## Feature Status: User Authentication
### Overall Progress: 65%

### Phase 1: Design ✅ COMPLETE
- Duration: 6 days (planned: 7)
- Quality Gates: ✅ All passed
- PR Status: ✅ Merged to main

### Phase 2: Tasks ✅ COMPLETE  
- Duration: 2 days (planned: 3)
- Quality Gates: ✅ All passed
- PR Status: ✅ Merged to main

### Phase 3: Implementation 🔄 IN PROGRESS
- Progress: 65% (8 of 12 tasks complete)
- Duration: 8 days (planned: 14)
- Quality Gates: 🔄 Pending final review
- Blockers: None
- Risk Level: 🟢 Low

### Next Steps
- Complete integration testing (2 days)
- Final code review and PR approval
- Production deployment preparation
```

## Risk Management

The coordinator proactively monitors:

- **Schedule Adherence**: Track timeline vs. actuals
- **Quality Metrics**: Test coverage, code quality scores  
- **Dependency Blockers**: External dependencies and handoffs
- **Technical Risks**: Architecture, security, performance concerns
- **Resource Risks**: Team availability and skill gaps

Risk levels and alerts:

- 🟢 **Low Risk**: On track, no issues identified
- 🟡 **Medium Risk**: Minor delays or quality concerns
- 🔴 **High Risk**: Significant blockers or quality issues

## Document Structure Created

```
/documents/features/###-[feature-name]/
├── /design/
│   ├── requirements.md
│   ├── architecture.md  
│   ├── decisions.md (ADRs)
│   └── diagrams/
├── /tasks/
│   ├── task-001-backend.md
│   ├── task-002-frontend.md
│   ├── task-003-database.md
│   ├── README.md (overview)
│   └── specifications.md
└── /quality/
    ├── review-notes.md
    ├── test-results.md
    └── performance.md
```

## Communication Standards

The coordinator maintains:

- **Daily Progress Updates**: Automated status reports
- **Weekly Status Reports**: Comprehensive progress summaries  
- **Phase Completion Notifications**: Milestone achievements
- **Risk Alerts**: Proactive issue identification
- **Stakeholder Updates**: Regular communication cadence

## Success Metrics

Feature development success measured by:

- ✅ **Feature Completeness**: Only requested features implemented accurately
- ✅ **Simplicity**: Simplest working solution delivered
- ✅ **User Satisfaction**: Requirements met precisely, no bloat
- ✅ **Time Efficiency**: Fast delivery, no unnecessary delays
- ✅ **Code Quality**: Simple, maintainable, readable code
- ✅ **Anti-Overengineering**: Unnecessary complexity eliminated
- ✅ **MVP Achievement**: Maximum value with minimum features

## When to Use This Command

**Use `/workflow`** for:

- ✅ New feature development requiring full lifecycle management
- ✅ Complex features with multiple stakeholders  
- ✅ Features with strict quality requirements
- ✅ Cross-team coordination needs
- ✅ Risk monitoring and mitigation
- ✅ Process compliance requirements

**Use individual phase commands** (`/design`, `/task`, `/implement`) for:

- ✅ Single-phase work
- ✅ Simple features  
- ✅ Iterative improvements
- ✅ Quick prototypes

## Anti-Overengineering Rules

**NEVER DO:**
- 🚫 Develop features beyond requirements
- 🚫 Create excessive processes or documentation
- 🚫 Build "just in case" preparatory work
- 🚫 Add unnecessary complexity
- 🚫 Over-engineer quality gates or approval stages

**CORE PRINCIPLES:**
- ✅ **YAGNI**: You Aren't Gonna Need It
- ✅ **MVP First**: Minimum viable product approach
- ✅ **Simple Solutions**: Choose the simplest working approach
- ✅ **User Requested Only**: Only explicitly requested features
- ✅ **Essential Only**: Core functionality requirements only

**IMPLEMENTATION CHECKLIST:**
```
✅ Was this explicitly requested by the user?
✅ Is this essential to core functionality?
✅ Is this the simplest approach?
❌ Is this "might need later" logic?
❌ Are these excessive settings/options?
```

Use this command for complete feature development management. I'll coordinate with the appropriate specialists at each phase based on the expertise needed.
