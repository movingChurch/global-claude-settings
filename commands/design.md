---
name: design
description: Start designing new features through interactive conversation. Describe your needs and I'll help you plan the architecture and requirements.
argument-hint: "I want to create a user authentication system" or "I need payment functionality, but how should I approach it?"
---

# Design Command

This command starts the design process for new features. I'll help you plan the architecture, understand requirements, and create design documentation.

## Usage

```bash
/design [describe in natural language]
```

**Natural Language Input Examples:**

- "I want to create a user authentication system. I'd like OAuth2 support"
- "I need payment functionality and I'm considering Stripe integration"
- "I need to design a new dashboard UI"
- "Database performance improvement is needed"

**Interactive Design Process:**
Design experts will use Socratic questioning to help discover what you truly need together.

## What This Command Does

1. **Interactive Design Process**: Engage in conversation to understand requirements
2. **Architecture Planning**: Plan system design and technical approach
3. **Creates Git Branch**: Set up a separate branch for design work
4. **Generate Documentation**: Create comprehensive design documentation
5. **Delegate to Specialists**: Use design experts when their expertise matches:
   - `frontend-design-specialist` for UI/UX architecture
   - `backend-design-specialist` for server-side architecture
   - `system-design-specialist` for distributed systems
   - `security-design-specialist` for security architecture
   - `data-design-specialist` for database design

## Information Automatically Included

When executing this command, the following information is automatically considered:

- **Project Guidelines**: Project rules and standards (mandatory)
- **Existing Structure Information**: Current system architecture and design
- **Design Standards**: Design approaches used in the project
- **Expert Information**: Roles of specialist agents for collaboration

## Usage Examples

```bash
# Describe naturally and comfortably
/design I want to create a system where users can log in safely. I'd also like to support Google and Facebook login

# It's okay if you don't have specific technical details
/design I need online payment functionality, but what approach would be best?

# You can also describe problem situations
/design Our current dashboard is too slow and users are finding it inconvenient. How can we improve it?
```

## Interactive Design Process

1. **Requirements Gathering**: Understand what you want to build
2. **Architecture Discussion**: Plan the technical approach
3. **Design Decisions**: Make informed choices about implementation
4. **Expert Consultation**: Delegate to appropriate design specialists:
   - Frontend architecture → `frontend-design-specialist`
   - Backend systems → `backend-design-specialist`
   - Distributed systems → `system-design-specialist`
   - Security planning → `security-design-specialist`
   - Database design → `data-design-specialist`
5. **Documentation**: Create clear design specifications

## Generated Document Locations

Design documents are created in the following location:

```bash
/documents/features/###-[feature-name]/design/
├── requirements.md    # Requirements summary
├── architecture.md    # Architectural design
├── decisions.md       # Design decisions and rationale
└── diagrams/         # Design diagrams
```

## Git Workflow

- `feature/###-[feature-name]-design` branch is created
- Design documents are committed to this branch
- PR is created for design review
- After approval, proceed to next stage (task breakdown)

## Design Completion Criteria

Items to verify before moving to the next stage:

- ✅ Requirements are clear and unambiguous
- ✅ Project guidelines are fully complied with
- ✅ Sufficient consultation with necessary experts
- ✅ Pros and cons of design choices are clearly documented
- ✅ Consensus with stakeholders is complete
- ✅ Architectural Decision Records (ADR) are complete
- ✅ Implementable design specifications are finished

Use this command to establish a solid design foundation before implementation. I'll delegate to the appropriate design specialist based on the type of architecture expertise needed.
