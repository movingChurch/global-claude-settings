---
name: process build
description: Define mandatory development workflows through systematic analysis and template-based documentation
argument-hint: "workflow-type (e.g., feature-development, bug-fix, deployment)"
---

# Process Build Command

Define mandatory development workflows and procedures with enforced quality gates that LLMs must follow through systematic analysis and template-based documentation.

## Concept

**Process**: **LLM이 반드시 따라야 하는 강제 실행 절차**
- 선택이 아닌 필수 과정: 모든 단계가 순차적으로 강제 실행
- 품질 게이트와 검증 체크포인트: 각 단계별 통과 조건 명시
- 오류 처리와 롤백 절차: 실패 시 복구 방안과 단계별 되돌리기
- 컴플라이언스와 감사: 규정 준수와 추적 가능한 실행 기록

## Usage

```bash
/process build [workflow-type]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - **Workflow Definition**: Purpose, trigger conditions, and scope boundaries
   - **Sequential Steps**: Required steps, dependencies, and execution order
   - **Quality Gates**: Validation checkpoints, pass/fail criteria, and blocking conditions
   - **Tool Requirements**: Required tools, automation points, and command specifications
   - **Success Criteria**: Completion conditions, deliverables, and acceptance criteria
   - **Error Handling**: Failure scenarios, rollback procedures, and recovery steps
   - **Compliance**: Audit requirements, documentation standards, and regulatory needs
   - **Communication**: Notification points, stakeholder updates, and reporting requirements

2. **Process Analysis** - Analyze gathered requirements to define:
   - **Mandatory Workflow**: Non-optional step sequence with enforced execution order
   - **Quality Assurance**: Verification points with clear pass/fail criteria at each stage
   - **Tool Integration**: Required commands, automation scripts, and validation tools
   - **Audit Trail**: Input/output specifications, logging requirements, and traceability
   - **Exception Handling**: Error scenarios, rollback procedures, and recovery workflows

3. **Document Generation** - Call `@technical-writer` to create process document using template from `~/.claude/documents/templates/process-template.md`

4. **File Creation** - Save document to `./documents/process/[workflow-type].md`

## Output

```
Created: ./documents/process/[workflow-type].md

⚙️ PROCESS CREATED:
✓ Mandatory workflow steps defined with enforced sequential execution
✓ Quality gates and validation checkpoints with pass/fail criteria established
✓ Tool requirements and automation points specified with commands
✓ Success criteria and completion conditions documented with measurable outcomes
✓ Error handling and rollback procedures included with recovery workflows
✓ Compliance and audit requirements defined with traceability
✓ Communication and notification points specified
✓ Exception handling scenarios with resolution steps documented
```

## Success Criteria

**GOOD** = Complete, enforceable workflow with clear sequential steps, validation points, and unambiguous success criteria that ensure consistent execution
**BAD** = Optional or unclear steps, missing validation points, or ambiguous criteria that allow inconsistent workflow execution
