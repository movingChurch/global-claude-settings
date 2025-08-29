# Agent Collaboration Boundaries and Protocols

This document clarifies the role boundaries and collaboration protocols between overlapping implementation specialists to eliminate confusion and ensure efficient cooperation.

## Overview

The implementation specialists work together in Phase 3 (Implementation) under the coordination of the implementation-orchestrator. Each specialist has clear ownership boundaries while collaborating seamlessly on integration points.

## Key Boundary Clarifications

### 1. Backend-impl vs API-impl Boundary

**backend-impl-specialist owns:**

- Business logic implementation
- Service layers and domain models
- Internal data processing
- ORM usage in business context
- Workflow processing
- Transaction management
- Internal service contracts

**api-impl-specialist owns:**

- External API endpoints (REST/GraphQL/gRPC)
- API gateways and routing
- API authentication/authorization
- Rate limiting and API security
- Third-party API integrations
- Client-facing API specifications
- API versioning and documentation

**Collaboration Points:**

- API-business logic integration patterns
- Data transformation requirements
- Internal service contract definitions

### 2. Database-impl vs Backend-impl Boundary

**database-impl-specialist owns:**

- Database schema design
- Table/collection creation
- Indexes and constraints
- Migrations and versioning
- Query optimization
- Database-specific stored procedures/functions
- Replication configuration at schema level

**backend-impl-specialist owns:**

- ORM usage within business logic
- Repository pattern implementations
- Business logic data access
- Transaction management in application context
- Data validation in business services

**Collaboration Points:**

- ORM configuration requirements
- Repository pattern definitions
- Transaction boundary specifications
- Data access interface contracts

### 3. Testing Responsibilities Across Specialists

**testing-impl-specialist owns:**

- Comprehensive test strategy
- Integration tests across components
- End-to-end user journey tests
- Performance and load testing
- Security testing
- Cross-component testing
- Test automation framework
- CI/CD test integration

**Individual Implementation Specialists own:**

- Unit tests for their specific implementations only
- Basic functionality validation tests
- Component-specific test fixtures

**Collaboration Points:**

- Test specification gathering from all specialists
- Test data management strategies
- Quality gate definitions and enforcement

## Collaboration Protocol Template

Each specialist follows this standardized collaboration structure:

### With Orchestrator

- Receive task requirements with clear deliverables
- Submit implementation plans with specific milestones
- Report progress with measurable outcomes
- Submit completed work for verification

### With Other Specialists

Each relationship includes:

- **Handoff**: What information/artifacts are exchanged
- **Boundary**: What each agent owns vs. doesn't handle
- **Collaboration**: How they work together on shared concerns

### Clear Boundaries Section

- **This agent owns**: Specific responsibilities and deliverables
- **This agent does NOT handle**: Explicitly excluded responsibilities
- **Collaboration required for**: Shared or integrated responsibilities

## Enhanced Agent Relationships

### backend-impl ↔ api-impl

- **Handoff**: Internal service contracts ↔ External API specifications
- **Integration**: API-business logic integration points
- **Shared**: Data transformation and validation requirements

### database-impl ↔ backend-impl

- **Handoff**: Database access patterns ↔ ORM configuration needs
- **Integration**: Repository patterns and transaction boundaries
- **Shared**: Data access interface definitions

### testing-impl ↔ All Implementation Specialists

- **Handoff**: Test specifications ← Component specifications
- **Integration**: Test strategy coordination
- **Shared**: Quality gate definitions and test data management

### frontend-impl ↔ api-impl

- **Handoff**: API consumption patterns ↔ API documentation and SDKs
- **Integration**: Client-server data flow patterns
- **Shared**: Error handling standards and data formats

### system-software-impl ↔ All Specialists

- **Handoff**: Infrastructure requirements ↔ System configuration specifications
- **Integration**: System-application integration points
- **Shared**: Performance optimization and infrastructure testing

## Benefits of Clear Boundaries

1. **Eliminates Overlap Confusion**: Each specialist knows exactly what they own
2. **Enables Parallel Work**: Clear boundaries allow simultaneous development
3. **Improves Quality**: Specialists focus on their expertise areas
4. **Simplifies Testing**: Clear ownership of test responsibilities
5. **Reduces Communication Overhead**: Structured handoff protocols
6. **Ensures Consistency**: Standardized collaboration patterns

## Implementation Guidelines

1. **Always Check Boundaries**: Before starting work, verify ownership
2. **Use Handoff Protocols**: Follow structured information exchange
3. **Collaborate at Integration Points**: Work together on shared concerns
4. **Report to Orchestrator**: Keep coordination centralized
5. **Document Decisions**: Record collaboration outcomes

## Conflict Resolution

When boundary disputes arise:

1. Refer to this document first
2. Consider the specialist's core expertise
3. Escalate to implementation-orchestrator
4. Update boundaries if needed
5. Document resolution for future reference

---

*This document should be referenced by all implementation specialists before starting work to ensure clear role understanding and efficient collaboration.*
