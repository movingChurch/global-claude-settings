---
name: architecture build
description: Design comprehensive project structure through systematic analysis and template-based documentation
argument-hint: "project-name or domain (e.g., e-commerce-api, dashboard-ui)"
---

# Architecture Build Command

Design comprehensive project-specific structure, system topology, and architectural decisions through systematic analysis and template-based documentation.

## Concept

**Architecture**: **이 프로젝트만의 특별한 구조와 설계 결정**

- 프로젝트 특화된 구조 정의 (폴더 구조, 모듈 관계, 시스템 설계)
- 시스템 토폴로지와 컴포넌트 간의 관계 설계
- 데이터 흐름 패턴과 상태 관리 전략
- 통합 패턴과 API 계약 정의
- 비즈니스 도메인 모델링과 경계 컨텍스트

## Usage

```bash
/architecture build [project-name]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - **Business Domain**: Project purpose, scope, and business context
   - **System Topology**: Component relationships and service boundaries
   - **Data Architecture**: Data flow patterns, state management, and persistence strategy
   - **Integration Design**: API contracts, external service interactions, and communication patterns
   - **Technical Constraints**: Performance requirements, scalability needs, technology stack
   - **Infrastructure**: Deployment architecture, environments, and infrastructure decisions
   - **Security Architecture**: Authentication, authorization, and compliance requirements
   - **Organizational Structure**: Team boundaries, ownership, and development workflow

2. **Architecture Analysis** - Analyze gathered requirements to define:
   - **System Structure**: Component hierarchy, module boundaries, and service topology
   - **Data Flow Design**: Information flow patterns, state management, and event sourcing
   - **Integration Architecture**: API design, service contracts, and communication protocols  
   - **Domain Modeling**: Business entities, bounded contexts, and domain relationships
   - **Infrastructure Design**: Deployment patterns, environment configuration, and scaling strategy

3. **Document Generation** - Call `@technical-writer` to create architecture document using template from `~/.claude/documents/templates/architecture-template.md`

4. **File Creation** - Save document to `./documents/architectures/[project-name].md`

## Output

```
Created: ./documents/architectures/[project-name].md

🏗️ ARCHITECTURE CREATED:
✓ System topology and component relationships defined
✓ Business domain model and bounded contexts established
✓ Data flow patterns and state management strategy documented
✓ Integration architecture and API contracts specified
✓ Infrastructure design and deployment patterns included
✓ Security architecture and compliance requirements mapped
✓ Module boundaries and service responsibilities defined
✓ Variable definitions and configuration structure included
```

## Success Criteria

**GOOD** = Complete project-specific architecture with clear structure, well-defined responsibilities, and consistent patterns that guide implementation decisions
**BAD** = Generic or incomplete structure, unclear module boundaries, or missing critical architectural decisions that lead to inconsistent implementation
