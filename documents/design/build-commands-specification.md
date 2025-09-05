# Build Commands Specification

## Overview

The Build Commands system provides a structured approach to creating foundational components in the LLM-driven development system. Each build command generates specific document types that serve distinct purposes in maintaining system consistency and enabling scalable development workflows.

## Core Architecture

### 3-Tier System Structure

```
Human (Creation) → LLM (Execution) → Automated Tools (Verification)
```

Build commands operate at the intersection of human requirements and LLM execution, providing templates and processes that ensure consistent output regardless of the specific implementation details.

## Build Command Categories

### 1. Root System Prompt Build

**Purpose**: Creates universal LLM behavior rules that apply across all projects.

**Command**: `/document build root-system-prompt [name]`

**Creates**: `/system-prompts/root.md`

**Core Concept**: Universal behavioral foundation for all LLM interactions in the system.

#### Enhanced Requirements

- **Industry Standards Integration**
  - Must reference established AI prompt engineering best practices
  - Include links to authoritative sources (OpenAI, Anthropic documentation)
  - Incorporate community-validated prompt patterns
  - Reference academic research on effective prompt design

- **Behavioral Consistency**
  - Define universal error handling patterns
  - Establish common output formats and structures
  - Set baseline quality thresholds for all responses
  - Create standardized verification checkpoints

- **Template Structure**
```markdown
# Root System Prompt

## Role
[Universal LLM role definition]

## Principles
[Non-negotiable behavioral rules]

## Structure
[Universal document structure awareness]

## Standards
[Industry best practices and references]
```

### 2. Project System Prompt Build

**Purpose**: Creates project-specific context and rules that build upon the root system prompt.

**Command**: `/document build project-system-prompt [name]`

**Creates**: `/system-prompts/project.md`

**Core Concept**: Project-specific behavioral overlay that adapts universal rules to specific contexts.

#### Enhanced Requirements

- **Technology Stack Integration**
  - Reference official documentation for all used technologies
  - Include authoritative configuration patterns
  - Link to community best practices for the specific stack
  - Validate against industry standards for the domain

- **Business Domain Context**
  - Define bounded contexts and domain-specific terminology
  - Reference industry-standard patterns for the business domain
  - Include regulatory compliance requirements where applicable
  - Establish domain-specific quality gates

- **Template Structure**
```markdown
# Project System Prompt

## Context
[Project identity, purpose, technology stack]

## Domain Model
[Business concepts and bounded contexts]

## Technical Standards
[Stack-specific rules and references]

## Integration Patterns
[API contracts and data flow patterns]
```

### 3. Guidelines Build

**Purpose**: Creates universal, reusable standards for specific technologies or practices.

**Command**: `/document build guideline [technology-name]`

**Creates**: `/documents/guidelines/[technology].md`

**Core Concept**: Technology-agnostic best practices that can be applied across multiple projects.

#### Enhanced Requirements

- **Industry Standard References**
  - Must include links to official documentation (e.g., MDN for JavaScript, React docs for React)
  - Reference established style guides (Google, Airbnb, Microsoft)
  - Include community consensus patterns (RFC specifications, W3C standards)
  - Validate against current best practices (not outdated recommendations)

- **Best Practice Validation**
  - Each recommendation must cite authoritative sources
  - Include reasoning for choices when alternatives exist
  - Reference performance implications with benchmarks where available
  - Provide migration paths from deprecated practices

- **Source Credibility Framework**
  - **Tier 1**: Official vendor documentation, W3C standards, RFC specifications
  - **Tier 2**: Established style guides (Google, Airbnb), major framework docs
  - **Tier 3**: Community consensus patterns, widely-adopted open source projects
  - **Tier 4**: Individual expert opinions (must be clearly labeled as such)

- **Template Structure**
```markdown
# [Technology] Guidelines

## Overview
[Technology purpose and scope]

## Official Standards
[Tier 1 sources and references]

## Industry Best Practices
[Tier 2-3 validated patterns]

## Implementation Patterns
[Code examples with source citations]

## References
[Complete bibliography with credibility tier]
```

### 4. Architecture Build

**Purpose**: Creates project-specific structural designs and system topology.

**Command**: `/document build architecture [component-name]`

**Creates**: `/documents/architectures/[component].md`

**Core Concept**: Project-specific structural decisions that define how components interact and data flows.

#### Enhanced Requirements

- **System Topology Definition**
  - Component relationship diagrams with clear dependencies
  - Service boundaries and interface definitions
  - Network topology and communication patterns
  - Deployment architecture and infrastructure decisions

- **Data Flow Patterns**
  - State management architecture (Redux, Zustand, etc.)
  - Event sourcing and CQRS patterns where applicable
  - Database schema design and migration strategies
  - Caching strategies and data consistency patterns

- **Integration Patterns**
  - API contract specifications (OpenAPI/Swagger)
  - Message queue patterns and event handling
  - Third-party service integration patterns
  - Authentication and authorization flow

- **Business Domain Modeling**
  - Domain-Driven Design (DDD) bounded contexts
  - Aggregate design and consistency boundaries
  - Business rule encapsulation patterns
  - Domain event modeling

- **Template Structure**
```markdown
# [Component] Architecture

## System Context
[Component's role in overall system]

## Component Topology
[Internal structure and relationships]

## Data Flow Patterns
[State management and data movement]

## Integration Contracts
[APIs, events, and external interfaces]

## Domain Model
[Business concepts and rules]

## Deployment Architecture
[Infrastructure and operational concerns]
```

### 5. Process Build

**Purpose**: Creates mandatory workflow definitions with sequential steps and quality gates.

**Command**: `/document build process [workflow-name]`

**Creates**: `/documents/process/[workflow].md`

**Core Concept**: Non-optional procedural workflows that enforce consistency and quality.

#### Enhanced Requirements

- **Sequential Step Enforcement**
  - Each step must have clear entry and exit criteria
  - Dependencies between steps must be explicit
  - No step can be skipped or reordered without explicit permission
  - Parallel execution patterns must be clearly defined

- **Quality Gates and Validation Checkpoints**
  - Automated validation criteria for each step
  - Manual review requirements where automation is insufficient
  - Rollback procedures for failed quality gates
  - Escalation paths for quality gate failures

- **Error Handling and Rollback Procedures**
  - Comprehensive error scenarios and recovery steps
  - Data consistency preservation during rollbacks
  - Communication protocols for error situations
  - Post-mortem requirements for system failures

- **Compliance and Audit Requirements**
  - Logging requirements for audit trails
  - Regulatory compliance checkpoints
  - Documentation requirements for compliance
  - Regular process validation and updates

- **Template Structure**
```markdown
# [Workflow] Process

## Overview
[Process purpose and mandatory nature]

## Prerequisites
[Required conditions before starting]

## Sequential Steps
[Ordered workflow with quality gates]

## Quality Gates
[Validation criteria and checkpoints]

## Error Handling
[Failure scenarios and recovery procedures]

## Compliance Requirements
[Audit trails and regulatory needs]
```

### 6. Agent Build

**Purpose**: Creates specialist persona definitions with specific expertise domains.

**Command**: `/document build agent [specialist-type]`

**Creates**: `/agents/[domain]/[specialist].md`

**Core Concept**: Domain-specific AI personas that handle specialized tasks with defined expertise boundaries.

#### Enhanced Requirements

- **Expertise Domain Definition**
  - Specific technical skills and knowledge areas
  - Industry certifications or equivalent knowledge levels
  - Tool proficiency and workflow familiarity
  - Domain-specific vocabulary and concepts

- **Personality and Approach Patterns**
  - Problem-solving methodology and thinking patterns
  - Communication style and interaction preferences
  - Risk tolerance and decision-making criteria
  - Collaboration patterns with other agents

- **Boundary Definition**
  - Clear scope of responsibilities and authority
  - Explicit delegation patterns to other agents
  - Escalation criteria for complex decisions
  - Quality standards for deliverables

- **Template Structure**
```markdown
---
name: [agent-name]
description: [One-line specialist description]
model: [sonnet|opus]
---

# [Agent Name] Agent

## Role
[Specialist identity and domain]

## Expertise
[Technical skills and knowledge areas]

## Personality
[Approach and thinking patterns]

## Boundaries
### What I Do
[Responsibilities and authority]

### What I Don't Do
[Delegation patterns and limitations]
```

### 7. Command Build

**Purpose**: Creates user interface commands with specific workflows and consistent outputs.

**Command**: `/document build command [command-name]`

**Creates**: `/commands/[category]/[command].md`

**Core Concept**: User-facing automation that ensures consistent execution of common workflows.

#### Enhanced Requirements

- **Workflow Automation**
  - Step-by-step execution patterns
  - Input validation and sanitization
  - Output formatting and consistency
  - Error handling and user feedback

- **User Interface Design**
  - Argument patterns and validation
  - Help text and usage examples
  - Progress indicators and status reporting
  - Error messages and recovery guidance

- **Integration Patterns**
  - Coordination with other commands
  - Agent delegation patterns
  - Tool integration and automation
  - Context preservation and state management

- **Template Structure**
```markdown
---
name: [command-name]
description: [One-line command description]
argument-hint: "[usage pattern]"
---

# [Command Name]

[Brief description of command purpose]

## Usage
[Command syntax and arguments]

## What It Does
[Step-by-step workflow description]

## Output
[Expected results and formats]

## Success Criteria
[Quality standards for completion]
```

## Implementation Guidelines

### Variable Usage Patterns

All build commands must support abstraction through variables to maintain document immutability:

- **Environment Variables**: `${API_BASE_URL}`, `${DB_HOST}`
- **Configuration Values**: `${MAX_RETRY}`, `${TIMEOUT_SECONDS}`
- **Path Variables**: `${PROJECT_ROOT}`, `${ASSETS_PATH}`
- **Dynamic Values**: `${CURRENT_VERSION}`, `${BUILD_NUMBER}`

### Reference Validation Framework

All external references must be validated according to the credibility framework:

1. **Verification Required**: All links must be accessible and current
2. **Version Specificity**: Framework versions must be explicitly stated
3. **Update Schedule**: References must be reviewed quarterly
4. **Deprecation Tracking**: Outdated patterns must be removed promptly

### Quality Assurance Process

Each build command must include:

1. **Template Validation**: Ensure all required sections are present
2. **Reference Verification**: Validate all external links and sources
3. **Variable Consistency**: Check all variables are properly defined
4. **Example Completeness**: Verify all examples are functional

### Integration Testing

Build commands must be tested for:

1. **Template Generation**: Verify correct file creation
2. **Variable Substitution**: Test variable replacement functionality
3. **Reference Accessibility**: Validate all external links
4. **Cross-Command Compatibility**: Ensure commands work together

## Conclusion

The Build Commands system provides the foundation for consistent, scalable development workflows in the LLM-driven development system. By following these specifications, teams can ensure that all generated documentation maintains high quality standards, proper references to authoritative sources, and clear implementation guidance.

Each build command serves a specific purpose in the overall system architecture, and their proper implementation is critical for maintaining system consistency and enabling effective human-AI collaboration in development workflows.