---
name: guideline build
description: Create comprehensive coding standards through systematic questioning and template-based generation
argument-hint: "tech-stack (e.g., javascript, python, react)"
---

# Guideline Build Command

Create comprehensive coding standards and best practices documentation for specific technologies with authoritative references and industry standards through systematic questioning and template-based generation.

## Concept

**Guidelines**: 특정 기술/도구에 대한 **보편적이고 재사용 가능한 기준**
- 프로젝트 독립적이며 어디서든 적용 가능
- 업계 표준과 공식 문서 기반의 신뢰성 있는 가이드라인
- 레퍼런스 검증을 통한 권위 있는 소스 기반 표준화

## Usage

```bash
/guideline build [tech-stack]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Technology/framework specifics and version considerations
   - Coding conventions and naming standards
   - Project structure preferences
   - Quality and testing standards
   - Security and performance considerations
   - Tool and library preferences

2. **Reference Research** - Research and validate authoritative sources:
   - **Tier 1**: Official documentation and specifications
   - **Tier 2**: Framework maintainer guidelines and RFC documents
   - **Tier 3**: Industry standard practices (Google Style Guides, Airbnb, etc.)
   - **Tier 4**: Community best practices and established patterns
   - Verify source credibility and currency (last updated within 2 years)
   - Include direct links to referenced materials

3. **Requirement Validation** - Ensure all guidelines are clear, actionable, and complete

4. **Document Generation** - Call `@technical-writer` to create guideline document using template from `~/.claude/documents/templates/guideline-template.md`

5. **File Creation** - Save document to `./documents/guidelines/[tech-stack].md`

## Output

```
Created: ./documents/guidelines/[tech-stack].md

📋 GUIDELINE CREATED:
✓ Comprehensive coding standards defined with authoritative references
✓ Naming conventions and formatting rules established
✓ Best practices and patterns documented with source links
✓ Quality standards and testing requirements specified
✓ Security and performance guidelines included
✓ Tool and library recommendations provided with version info
✓ Reference validation completed (Tier 1-4 sources verified)
✓ Official documentation links and industry standards included
```

## Success Criteria

**GOOD** = Complete, actionable coding standards that can be consistently applied across projects with clear examples and rationale
**BAD** = Vague guidelines, missing critical standards, or inconsistent formatting that leads to ambiguous implementation
