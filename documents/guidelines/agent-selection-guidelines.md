# Agent Selection Guidelines

## Overview

This document provides comprehensive guidelines for selecting the optimal agent for any development task within our agent ecosystem. All 23 agents are production-ready and follow consistent quality standards.

## Agent Categories

### Phase Orchestrators (4 Primary Coordinators)

Use these agents to coordinate complete phases or workflows:

- **`design-orchestrator`**: Coordinates Phase 1 (Design) - manages all design specialists
- **`task-orchestrator`**: Coordinates Phase 2 (Tasks) - manages task documentation and work allocation
- **`implementation-orchestrator`**: Coordinates Phase 3 (Implementation) - manages all implementation specialists
- **`workflow-coordinator`**: Coordinates complete feature workflows across all phases

### Design Specialists (Phase 1 - 6 Agents)

Use during design phase for architecture and planning:

- **`frontend-design-specialist`**: UI/UX, React, Vue architecture design
- **`backend-design-specialist`**: API, server, database architecture design
- **`system-design-specialist`**: Distributed systems, microservices, scalability design
- **`system-software-design-specialist`**: OS, drivers, embedded systems, kernel design
- **`security-design-specialist`**: Security architecture, auth/authorization, threat modeling
- **`data-design-specialist`**: Database schema, data flow, ETL pipeline design

### Task Specialists (Phase 2 - 3 Agents)

Use for task documentation and planning:

- **`task-engineer`**: Task decomposition, work breakdown, estimation
- **`reference-linker`**: Code reference mapping, file:line documentation
- **`spec-writer`**: OpenAPI, GraphQL schemas, TypeScript interfaces, DDL scripts

### Implementation Specialists (Phase 3 - 6 Agents)

Use for actual code implementation:

- **`frontend-impl-specialist`**: React, Vue, Angular implementation
- **`backend-impl-specialist`**: Node.js, Python, Java server implementation
- **`system-software-impl-specialist`**: C/C++, Rust, systems programming
- **`database-impl-specialist`**: SQL, NoSQL, schema implementation, query optimization
- **`api-impl-specialist`**: REST, GraphQL, gRPC, WebSocket implementation
- **`testing-impl-specialist`**: Unit, integration, E2E, performance testing

### Support Specialists (Cross-Phase - 4 Agents)

Use for specialized support across all phases:

- **`github-expert`**: Git workflow, PR management, CI/CD
- **`quality-guardian`**: Code review, quality assurance, standards enforcement
- **`agent-expert`**: Agent design, optimization, ecosystem management
- **`system-prompt-expert`**: AI prompt engineering, optimization

## Selection Decision Tree

### 1. Complete Feature Development

```
New Feature Request → design-orchestrator (Phase 1)
↓ Design Complete → task-orchestrator (Phase 2)
↓ Tasks Complete → implementation-orchestrator (Phase 3)
```

### 2. Specific Phase Work

```
Design Questions → design-orchestrator
Task Documentation → task-orchestrator
Implementation Work → implementation-orchestrator
Cross-Phase Coordination → workflow-coordinator
```

### 3. Domain-Specific Tasks

#### Frontend Work

- **Design Phase**: `frontend-design-specialist`
- **Implementation Phase**: `frontend-impl-specialist`

#### Backend Work

- **Design Phase**: `backend-design-specialist`
- **Implementation Phase**: `backend-impl-specialist`

#### API Development

- **Design Phase**: `backend-design-specialist` (architecture) + `spec-writer` (contracts)
- **Implementation Phase**: `api-impl-specialist`

#### Database Work

- **Design Phase**: `data-design-specialist`
- **Implementation Phase**: `database-impl-specialist`

#### System Programming

- **Design Phase**: `system-software-design-specialist`
- **Implementation Phase**: `system-software-impl-specialist`

#### Security Implementation

- **Design Phase**: `security-design-specialist`
- **Implementation Phase**: Multiple specialists based on layer (frontend, backend, system)

#### Testing

- **All Phases**: `testing-impl-specialist` (testing is integrated throughout)

### 4. Support and Quality

```
Git/GitHub Issues → github-expert
Code Quality/Review → quality-guardian
Agent Issues → agent-expert
Prompt Problems → system-prompt-expert
```

## Role Boundaries Clarification

### Clear Separations

**API vs Backend Implementation**:

- `api-impl-specialist`: Protocol implementation (REST, GraphQL, gRPC), authentication, rate limiting
- `backend-impl-specialist`: Business logic, service layers, application architecture

**System Design vs System Software Design**:

- `system-design-specialist`: Distributed systems, microservices, cloud architecture
- `system-software-design-specialist`: Operating systems, drivers, embedded systems, kernel

**Data Design vs Database Implementation**:

- `data-design-specialist`: Schema design, data modeling, ETL architecture
- `database-impl-specialist`: Database setup, optimization, queries, operations

**Task Engineering vs Spec Writing**:

- `task-engineer`: Work breakdown, estimation, task dependencies
- `spec-writer`: Technical contracts (OpenAPI, schemas, interfaces)

## Model Selection Guidelines

### Opus Model (Complex/Creative Tasks)

Use for agents requiring deep reasoning and complex problem-solving:

- All design specialists (creative architecture decisions)
- `system-software-impl-specialist` (complex low-level programming)
- `system-prompt-expert` (creative prompt engineering)
- `agent-expert` (meta-level agent design)

### Sonnet Model (Efficient Implementation)

Use for agents performing structured, well-defined tasks:

- All implementation specialists (following established patterns)
- Task specialists (structured documentation)
- Support specialists (defined processes)

## Quick Reference Table

| Task Type | Primary Agent | Support Agents |
|-----------|---------------|----------------|
| New Feature | `design-orchestrator` → `task-orchestrator` → `implementation-orchestrator` | `workflow-coordinator` |
| API Development | `api-impl-specialist` | `spec-writer`, `testing-impl-specialist` |
| Frontend Feature | `frontend-impl-specialist` | `frontend-design-specialist` (if design needed) |
| Backend Service | `backend-impl-specialist` | `api-impl-specialist`, `database-impl-specialist` |
| Database Schema | `database-impl-specialist` | `data-design-specialist` (if design needed) |
| Security Implementation | `security-design-specialist` + relevant impl specialists | `quality-guardian` |
| Testing | `testing-impl-specialist` | Relevant implementation specialists |
| Git/PR Issues | `github-expert` | `quality-guardian` |
| Agent Problems | `agent-expert` | `system-prompt-expert` |
| System Programming | `system-software-impl-specialist` | `system-software-design-specialist` |

## Anti-patterns to Avoid

❌ **Don't use orchestrators for simple single tasks**

- Use domain specialists directly for focused work

❌ **Don't bypass phase progression**

- Follow Design → Tasks → Implementation for complex features

❌ **Don't use wrong domain specialist**

- `system-design-specialist` ≠ `system-software-design-specialist`
- `api-impl-specialist` ≠ `backend-impl-specialist`

❌ **Don't skip support specialists**

- Use `quality-guardian` for code review
- Use `github-expert` for Git workflow issues

## Success Patterns

✅ **Use orchestrators for multi-step features**

- Let them coordinate the appropriate specialists

✅ **Use domain specialists for focused work**

- Direct implementation within their expertise area

✅ **Use support specialists proactively**

- Quality assurance and workflow management

✅ **Follow the three-phase pattern**

- Design → Tasks → Implementation for complex features

## Conclusion

This agent ecosystem is designed for maximum efficiency and quality. Choose the right agent for the task scope:

- **Complex features**: Start with phase orchestrators
- **Specific tasks**: Use domain specialists directly
- **Quality/Process issues**: Leverage support specialists

All agents follow project guidelines from `/documents/guidelines/` and maintain consistent quality standards.
