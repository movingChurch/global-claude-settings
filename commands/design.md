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

If feature description is not provided or unclear, the system will interactively ask for:

- Feature name and purpose
- Target users
- Key requirements
- Technical constraints
- Integration points

## Output Structure

```
/documents/features/###-[feature-name]/design/
├── requirements.md    # What needs to be built
├── architecture.md    # How it will be built
├── decisions.md       # Why these choices
└── diagrams/         # Visual representations
```

## Process

1. **Persistent Interactive Information Gathering**
   - Continue asking questions until ALL required information is obtained
   - Do NOT proceed to design until complete clarity is achieved
   - Ask follow-up questions for any ambiguous or incomplete answers
   - Required information checklist:
     - Feature name and detailed description
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
   - Load project guidelines from `/documents/guidelines/`
   - Load architecture context from `/documents/architecture/`
   - Prepare comprehensive context package for each specialist

3. **Design Generation with Context**
   - Pass guidelines and architecture context to EACH specialist agent
   - Ensure all specialists work within established project constraints
   - Maintain consistency across all design documents

4. Analyze requirements
5. Create architecture design
6. Document decisions
7. Generate design files

## Specialists Used

Each specialist receives:

- Complete feature requirements from information gathering
- Project guidelines from `/documents/guidelines/`
- Architecture context from `/documents/architecture/`
- Existing design patterns and conventions

Specialists invoked:

- `frontend-design-specialist` - UI/UX architecture
- `backend-design-specialist` - Server architecture
- `system-design-specialist` - Distributed systems
- `security-design-specialist` - Security design
- `data-design-specialist` - Database design

## Important Notes

- **DO NOT SKIP QUESTIONS**: Continue asking until ALL information is clear
- **ENFORCE COMPLETENESS**: Missing information leads to poor design
- **CONTEXT IS CRITICAL**: Always pass guidelines and architecture to specialists
- **MAINTAIN CONSISTENCY**: All designs must align with project standards

Design documents will be created and ready for review.
