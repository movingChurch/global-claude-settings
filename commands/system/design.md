---
name: design
description: Create architecture design documentation through Korean interview and research
argument-hint: "design [feature description]" or just "design"
---

# Design Command

Create comprehensive architecture design documentation through systematic Korean questioning, research, and specialist consultation.

## Usage

```bash
/design [feature description]
```

## What It Does

1. **Korean Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Feature name for directory structure
   - Business purpose and objectives
   - Target users and use cases
   - Functional and non-functional requirements
   - Technical constraints and limitations
   - Integration points and dependencies
   - Performance and scalability needs
   - Security and compliance requirements
   - Continue questioning until user confirms completion

2. **Context Loading** - Load project context:
   - Load existing requirements.md from `documents/design/[feature-name]/requirements.md` (if exists)
   - Load project guidelines from `documents/guidelines/`
   - Load architecture context from `documents/architectures/`

3. **Reference Research** - Research relevant information:
   - Use WebSearch to find industry best practices and patterns
   - Use WebFetch to analyze relevant documentation and references
   - Gather technical approaches and implementation strategies

4. **Context Preparation** - Prepare comprehensive context for specialists:
   - Requirements and objectives
   - Project guidelines and architectural constraints
   - Research findings and industry references
   - Technical requirements and constraints

5. **Design Generation** - Call specialist agents as needed with full context:
   - Pass all gathered context to each specialist agent
   - Ensure specialists work within established project constraints
   - Generate architecture design using multiple specialists when beneficial

6. **Document Creation** - Generate architecture document:
   - Use `architecture-template.md` as base structure
   - Create `documents/design/[feature-name]/architecture.md`
   - Include tables and mermaid diagrams for visual clarity

## Output

```text
Created: documents/design/[feature-name]/architecture.md

🏗️ ARCHITECTURE DOCUMENT CREATED:
✓ Feature requirements gathered through Korean interview
✓ Project guidelines and architectural constraints loaded
✓ Industry references and best practices researched
✓ Comprehensive context prepared for design specialists
✓ Architecture design generated using specialist agents
✓ Visual diagrams and tables included for clarity
✓ Architecture document ready for implementation planning
```

## Success Criteria

**GOOD** = Clear architecture document with comprehensive context, visual diagrams, and actionable design that aligns with project standards and requirements
**BAD** = Ambiguous architecture, missing context, or design that conflicts with project guidelines and constraints
