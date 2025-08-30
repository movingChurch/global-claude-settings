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

## Output Structure

```
/documents/features/###-[feature-name]/design/
├── requirements.md    # What needs to be built
├── architecture.md    # How it will be built
├── decisions.md       # Why these choices
└── diagrams/         # Visual representations
```

## Process

1. Analyze requirements
2. Create architecture design
3. Document decisions
4. Generate design files

## Specialists Used

- `frontend-design-specialist` - UI/UX architecture
- `backend-design-specialist` - Server architecture
- `system-design-specialist` - Distributed systems
- `security-design-specialist` - Security design
- `data-design-specialist` - Database design

Design documents will be created and ready for review.