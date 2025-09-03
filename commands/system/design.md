---
name: design
description: Create design documentation for new features
argument-hint: "user authentication system" or "payment integration"
---

# Design Command

Create comprehensive design documentation for new features.

## Usage

```bash
/design [feature description]
```

## Context Clarification

If requirements are unclear:

1. **Use `/interview` command** to systematically gather:
   - Feature name and business purpose
   - Target users and use cases
   - Functional and non-functional requirements
   - Technical constraints and limitations
   - Integration points and dependencies
   - Performance and scalability needs
   - Security and compliance requirements
2. **Verify all aspects** are understood
3. **Confirm design approach** before creating documentation

## Output Structure

```
/documents/features/###-[feature-name]/design/
├── requirements.md    # What needs to be built
├── architecture.md    # How it will be built
├── decisions.md       # Why these choices
└── diagrams/         # Visual representations
```

## Process

1. **Start with User Conversation**
   - Begin by engaging with the user directly
   - Ask clarifying questions to understand the feature
   - Continue dialogue until requirements are clear
   - Required information to gather:
     - Feature name and purpose
     - Business goals and success metrics
     - Target users and use cases
     - Functional requirements (must-have vs nice-to-have)
     - Non-functional requirements (performance, scalability, security)
     - Technical constraints and limitations
     - Integration points with existing systems
     - Data flow and storage requirements
     - UI/UX expectations
     - Timeline and priorities

2. **Context Preparation**
   - Load ./documents/guidelines/ from `./documents/guidelines/`
   - Load architecture context from `./documents/architectures/`
   - Prepare comprehensive context package for each specialist

3. **Design Generation with Context**
   - Pass guidelines and architecture context to EACH specialist agent
   - Ensure all specialists work within established project constraints
   - Maintain consistency across all design documents

4. **Create Design Documentation**
   - Analyze requirements
   - Create architecture design
   - Document decisions
   - Generate design files

## Specialists Used

Each specialist receives:

- Complete feature requirements from information gathering
- Project guidelines from `./documents/guidelines/`
- Architecture context from `./documents/architectures/`
- Existing design patterns and conventions

Specialists invoked:

- `frontend-design-specialist` - UI/UX architecture
- `backend-design-specialist` - Server architecture
- `system-design-specialist` - Distributed systems
- `security-design-specialist` - Security design
- `data-design-specialist` - Database design

## Important Notes

- **USER FIRST**: Always start with user conversation, not assumptions
- **INTERACTIVE DIALOGUE**: Engage in back-and-forth until clarity is achieved
- **CONTEXT IS CRITICAL**: Always pass guidelines and architecture to specialists
- **MAINTAIN CONSISTENCY**: All designs must align with project standards

## Anti-Overengineering Rules

**NEVER DO:**

- Add features not in requirements
- Over-abstract or apply complex patterns unnecessarily
- Write "just in case" or "future-proof" code
- Add unnecessary configurations or options
- Design for imaginary use cases

**ONLY DO WHAT'S ESSENTIAL:**

- ✅ Explicitly requested features only
- ✅ Simplest solution first
- ✅ YAGNI (You Aren't Gonna Need It)
- ✅ KISS (Keep It Simple, Stupid)
- ✅ MVP approach - minimum viable solution

Design documents will be created and ready for review.
