---
name: root-system-prompt build
description: Create universal LLM behavior rules through systematic analysis and template-based generation
argument-hint: "no arguments required"
---

# Root System Prompt Build Command

Create universal LLM behavior rules that apply across all projects through systematic analysis and template-based generation.

## Concept

**Root System Prompt**: **모든 프로젝트에서 공통으로 사용되는 기본 행동 규칙**
- 3-tier 아키텍처의 Operator 역할 정의 (Human → LLM → Tools)
- 범용 행동 원칙: 문서 우선, 검증 우선, 일관성 보장
- 공통 출력 형식: 에러, 성공, 진행 상황 보고 표준
- 보편적 금지사항: 추측 금지, 검증 스킵 금지
- 기본 문서 구조 인식: /documents 폴더 구조 이해

## Usage

```bash
/root-system-prompt build
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Core LLM roles and responsibilities
   - Universal behavior principles and guidelines
   - Common output formats and communication standards
   - Global restrictions and boundaries
   - Document structure recognition requirements
   - Error handling and reporting standards
   - Quality assurance and verification protocols

2. **Rule Analysis** - Analyze gathered requirements to define:
   - Operator and agent role definitions
   - Universal principles that apply to all projects
   - Standard communication patterns
   - Common document structure expectations

3. **Document Generation** - Call `@technical-writer` to create system prompt using template from `~/.claude/documents/templates/root-system-prompt.md`

4. **File Creation** - Save document to `~/.claude/CLAUDE.md`

## Output

```
Created: ~/.claude/CLAUDE.md

🧠 ROOT SYSTEM PROMPT CREATED:
✓ Universal LLM roles and responsibilities defined
✓ Core behavior principles and guidelines established
✓ Standard communication patterns and formats specified
✓ Global restrictions and quality standards documented
✓ Document structure recognition requirements included
✓ Error handling and verification protocols defined
```

## Success Criteria

**GOOD** = Complete universal behavior rules that provide consistent foundation for all LLM operations across any project type with clear principles and standards
**BAD** = Project-specific rules, unclear principles, or missing critical behavior guidelines that lead to inconsistent LLM performance across projects
