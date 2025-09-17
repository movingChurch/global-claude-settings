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
   - Load project standards from `documents/standards/`
   - Load architecture context from `documents/projects/`
   - Check `documents/standards/` for mandatory design process requirements

3. **Reference Research** - Research relevant information:
   - Use WebSearch to find industry best practices and patterns
   - Use WebFetch to analyze relevant documentation and references
   - Gather technical approaches and implementation strategies

4. **Context Preparation** - Prepare comprehensive context for specialists:
   - Requirements and objectives
   - Project standards and architectural constraints
   - Research findings and industry references
   - Technical requirements and constraints

5. **Design Generation** - Call specialist agents as needed with full context:
   - Pass all gathered context to each specialist agent
   - Ensure specialists work within established project constraints
   - Generate architecture design using multiple specialists when beneficial

6. **Document Creation** - Generate architecture document:
   - Load template from `~/.claude/documents/templates/architecture-template.md`
   - **MANDATORY**: Must use loaded template as exact base structure - NO modifications to template structure allowed
   - **MANDATORY**: All sections, headings, and formatting from template must be preserved exactly
   - **MANDATORY**: Only substitute variables (${PROJECT_NAME}, ${FEATURE_NAME}) and fill content placeholders
   - **FORBIDDEN**: Creating custom sections, changing section order, or modifying template structure
   - Create `documents/design/[feature-name]/architecture.md`
   - Include tables and mermaid diagrams as specified in template structure only

## Output

```text
Created: documents/design/[feature-name]/architecture.md

🏗️ ARCHITECTURE DOCUMENT CREATED:
✓ Feature requirements gathered through Korean interview
✓ Project standards and architectural constraints loaded
✓ Industry references and best practices researched
✓ Comprehensive context prepared for design specialists
✓ Architecture design generated using specialist agents
✓ Visual diagrams and tables included for clarity
✓ Architecture document ready for implementation planning
```

## Anti-Overengineering Rules

**NEVER DO:**
- Design beyond what requirements specify
- Add architecture components not needed for requirements
- Over-abstract or add unnecessary complexity
- Create "future-proof" designs for unspecified needs
- Add extra diagrams or sections beyond template structure

**ONLY DO WHAT'S ESSENTIAL:**
- ✅ Design only for documented requirements
- ✅ Use simplest solution that meets needs
- ✅ Follow template structure exactly
- ✅ Keep architecture at appropriate abstraction level
- ✅ Focus on solving stated problems only

## Success Criteria

**GOOD** = Clear architecture document with comprehensive context, visual diagrams, and actionable design that aligns with project standards and requirements
**BAD** = Ambiguous architecture, missing context, over-engineered design, or architecture that conflicts with project standards and constraints
