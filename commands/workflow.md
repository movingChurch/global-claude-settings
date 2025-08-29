---
name: workflow
description: Manages the entire development process in natural language. Coordinate the entire process from design to implementation through natural conversation like "I want to create feature X" or "How is project Y progressing?"
argument-hint: "I want to create user login functionality" or "I'm curious about the payment system progress"
---

# Complete Development Workflow Command (Natural Language Support)

A command that manages the entire feature development process through natural conversation. It coordinates the entire process from design to implementation, monitors progress, and ensures compliance with quality guidelines.

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

1. **Complete lifecycle management**: Orchestrates Design → Tasks → Implementation
2. **Phase transition control**: Validates quality gates between phases
3. **Git workflow integration**: Manages branch strategies and PR processes
4. **Quality gate enforcement**: Ensures standards compliance at each phase
5. **Risk monitoring**: Proactive identification and mitigation
6. **Stakeholder coordination**: Manages communication and reviews

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

## What Happens Next

The workflow-coordinator agent will:

1. **Initialize feature structure** with proper documentation hierarchy
2. **Set up Git workflows** with appropriate branch strategies
3. **Coordinate phase orchestrators**:
   - `design-orchestrator`: For Phase 1 design work
   - `task-orchestrator`: For Phase 2 task breakdown  
   - `implementation-orchestrator`: For Phase 3 implementation
4. **Manage phase transitions** with quality gate validation
5. **Monitor progress and risks** proactively
6. **Coordinate reviews and approvals** at each phase
7. **Maintain stakeholder communication** throughout lifecycle

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

- ✅ Complete feature lifecycle management
- ✅ 100% project guideline compliance  
- ✅ Clear phase transition criteria
- ✅ 100% quality gate operation
- ✅ Early risk identification and mitigation
- ✅ Stakeholder satisfaction
- ✅ Continuous process improvement
- ✅ On-time, on-quality delivery

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

Use this command when you need comprehensive, end-to-end feature development management with quality gates, risk monitoring, and stakeholder coordination.