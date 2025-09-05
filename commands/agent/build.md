---
name: agent build
description: Create specialist AI agents through systematic analysis and template-based generation
argument-hint: "agent-name or specialty (e.g., database-expert, security-specialist)"
---

# Agent Build Command

Create specialist AI agents with defined expertise, personality, and boundaries through systematic analysis and template-based generation.

## Concept

**Agent**: **각 영역의 전문가 페르소나**
- 오퍼레이터가 전문 영역 능력이 필요할 때 호출하는 전문가
- 페르소나와 자체 폴리시 보유 (Role, Expertise, Personality, Boundaries)
- 보편적인 내용만 프롬프트에 포함, 프로젝트 특화 컨텍스트는 외부 로드
- 도메인별 네임스페이스로 구성 (backend/, frontend/, system/, etc.)

## Usage

```bash
/agent build [agent-name]
```

## Context Clarification

Before building, if requirements are unclear:

1. **Interview Process** - Use `/interview` command to systematically gather all requirements
2. **Continue questioning** until all details are clear and complete
3. **Verify understanding** before document generation
4. **Never assume** - always ask when uncertain

## What It Does

1. **Interview Process** - Use `/interview` command to systematically gather requirements about:
   - Agent role and core identity
   - Specific expertise and technical knowledge domains
   - Personality traits and interaction style
   - Boundaries and responsibilities (what agent does/doesn't do)
   - Collaboration patterns with other agents
   - Output formats and communication preferences
   - Tools and resources the agent should have access to

2. **Agent Analysis** - Analyze gathered requirements to define:
   - Clear role definition and scope
   - Specific technical expertise areas
   - Consistent personality and interaction patterns
   - Well-defined boundaries and limitations

3. **Document Generation** - Call `@technical-writer` to create agent document using template from `~/.claude/documents/templates/agent-prompt-template.md`

4. **File Creation** - Save document to `~/.claude/agents/[agent-name].md`

## Output

```
Created: ~/.claude/agents/[agent-name].md

🤖 AGENT CREATED:
✓ Agent role and identity clearly defined
✓ Specific expertise domains documented
✓ Personality traits and interaction style established
✓ Boundaries and responsibilities specified
✓ Collaboration patterns with other agents defined
✓ Communication preferences and output formats set
```

## Success Criteria

**GOOD** = Well-defined specialist agent with clear expertise, consistent personality, and unambiguous boundaries that integrates effectively with the system
**BAD** = Generic agent, unclear expertise scope, or conflicting boundaries that create confusion in multi-agent interactions
