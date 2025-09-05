---
name: project-system-prompt build
description: Create project-specific LLM behavior rules through systematic analysis and template-based generation
argument-hint: "project-name (e.g., e-commerce-api, dashboard-ui)"
---

# Project System Prompt Build Command

Create project-specific LLM behavior rules and context that complement the root system prompt through systematic analysis and template-based generation.

## Concept

**Project System Prompt**: **특정 프로젝트에만 적용되는 특화된 규칙**
- 루트 레벨 이후 추가 로드되는 프로젝트별 컨텍스트
- 프로젝트 컨텍스트: 프로젝트명, 목적, 도메인, 비즈니스 로직
- 기술 스택: 사용 언어, 프레임워크, 도구 설정
- 프로젝트 특화 경로: 소스 코드 위치, 빌드 경로, 설정 파일
- 특별 규칙: 이 프로젝트만의 컨벤션과 변수 정의

## Usage

```bash
/project-system-prompt build [project-name]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Project purpose, scope, and domain context
   - Technology stack and framework choices
   - Project-specific folder structure and file organization
   - Custom conventions and coding standards
   - Project variable definitions and configuration
   - Special requirements or constraints
   - Integration points and external dependencies

2. **Context Analysis** - Analyze gathered requirements to define:
   - Project-specific context and domain knowledge
   - Technology stack configuration and preferences
   - Custom paths and directory structure
   - Project variable values and settings

3. **Document Generation** - Call `@technical-writer` to create system prompt using template from `~/.claude/documents/templates/project-system-prompt.md`

4. **File Creation** - Save document to `./CLAUDE.md`

## Output

```
Created: ./CLAUDE.md

🎯 PROJECT SYSTEM PROMPT CREATED:
✓ Project context and domain knowledge defined
✓ Technology stack and framework preferences specified
✓ Custom folder structure and file organization documented
✓ Project-specific conventions and standards established
✓ Variable definitions and configuration values included
✓ Integration points and dependencies mapped
```

## Success Criteria

**GOOD** = Complete project-specific context that seamlessly integrates with root system prompt, providing all necessary project knowledge for consistent implementation
**BAD** = Generic context, missing project specifics, or conflicting rules that create confusion when combined with root system prompt