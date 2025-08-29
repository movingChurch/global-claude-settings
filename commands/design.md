---
name: design
description: Starts an interactive design phase for new features. Describe your needs in natural language, and design experts will engage in conversation to deeply understand requirements and collaborate on the design process.
argument-hint: "I want to create a user authentication system" or "I need payment functionality, but how should I approach it?"
---

# Design Phase Command

This command initiates the design work necessary before building new features. Just like drawing blueprints before constructing a building, this is the planning stage where we figure out how to build something before writing code.

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

1. **Delegates to Design Experts**: Design specialist agents manage the entire process
2. **Automatically Includes Project Context**: References all existing project information
3. **Creates Git Branch**: Sets up a separate branch for design work
4. **Generates Design Documentation**: Systematically documents design results

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

An interactive design journey with design experts:

1. **Natural Language Understanding**: Initial requirements are identified based on your description
2. **Deep Questioning**: Essential questions like "Why is this feature needed?" and "What experience do users want?" are asked
3. **Interaction**: Design ideas are proposed, feedback is received, and improvements are made together
4. **Expert Collaboration**: Frontend, backend, and security experts are consulted as needed
5. **Consensus Building**: Design decisions are reviewed together and consensus is reached
6. **Documentation**: Design derived through conversation is systematically documented

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

When starting new features, using this command allows you to establish a solid design foundation before proceeding with implementation.
