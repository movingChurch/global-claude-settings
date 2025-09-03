---
name: document discussion
description: Capture and structure detailed LLM conversations into comprehensive discussion documents
argument-hint: "document discussion [topic]" or just "document discussion"
---

# Document Discussion

Capture current conversation and create structured documentation in the `/documents/discussions/` folder.

## Usage

```bash
/document discussion [topic]
```

**Options:**

- `[topic]` - Specific topic name for the discussion
- No arguments - Interactive mode to auto-detect or specify topic

## Context Clarification

Before documenting discussion:

1. **If discussion scope is unclear**, use `/interview` to understand:
   - Key topics to highlight
   - Decision points to emphasize
   - Audience for the documentation
   - Level of detail needed
2. **Verify completeness** - ensure all important points are captured
3. **Confirm structure** before generating document

## What It Does

1. **Capture conversation** - Extract complete dialogue from current session start to present
2. **Analyze conversation** - Identify key themes, decisions, and outcomes from existing conversation
3. **Structure content** - Organize into logical sections with clear flow and hierarchy
4. **@technical-writer** - Create comprehensive discussion document following established format
5. **Generate metadata** - Include participants, date, context, and cross-references
6. **Save document** - Create file in `/documents/discussions/` with descriptive filename

## Content Structure

**Standard sections included:**

- **Participants** - All conversation participants and roles
- **Date** - Discussion timestamp
- **Discussion Content** - Organized by topics and subtopics
- **Key Findings** - Major discoveries and insights
- **Generated Documents** - List of files created during discussion
- **Next Steps** - Action items and follow-up tasks

## Filename Convention

```
[topic-name]-[yyyy-mm-dd].md
```

**Examples:**

- `authentication-system-design-2025-09-03.md`
- `database-migration-strategy-2025-09-03.md`
- `api-architecture-decisions-2025-09-03.md`

## Output

```
Created: /documents/discussions/[topic-name]-2025-09-03.md

📝 DISCUSSION CAPTURED:
✓ Full conversation history extracted
✓ Key decisions and outcomes identified
✓ Structured content with clear sections
✓ Metadata and cross-references included
✓ Ready for future reference and review

DOCUMENT SECTIONS:
• Participants and roles
• Discussion timeline and context
• Detailed content with subtopics
• Major findings and insights
• Generated artifacts
• Next steps and action items
```

## Success Criteria

**GOOD** = Complete conversation capture with clear structure, key insights identified, and actionable outcomes documented
**BAD** = Missing context, unclear structure, or important decisions not highlighted
