# 🏗️ Claude Code Agent 재구조화 완전 가이드

## 📅 작성일: 2025-08-07
## 👤 목적: 25개 → 13개 에이전트로 최적화 (컨텍스트 유실 대비 완전 문서)

---

## 🎯 핵심 목표

1. **중복 제거**: 유사 기능 에이전트들을 통합
2. **오케스트레이터 패턴**: 직접 작업 금지, Task tool로만 위임
3. **Taskmaster 통합**: 강력한 태스크 관리 시스템 적용
4. **명확한 3단계 플로우**: 문서화 → 구현 → 리팩토링/검증

---

## 📊 현재 상태 (25개 에이전트)

### 현재 에이전트 목록 (/Users/undo/.claude/agents/)
```
1. architecture-guardian.md
2. code-auditor.md
3. code-reviewer.md
4. coverage-analyzer.md
5. dependency-resolver.md
6. doc-maintainer.md
7. feature-documenter.md (오케스트레이터)
8. incremental-implementer.md (오케스트레이터)
9. llm-pair-programmer.md
10. milestone-tracker.md
11. mock-builder.md
12. performance-optimizer.md
13. progress-monitor.md
14. readable-validator.md
15. refactor-assistant.md
16. regression-detector.md
17. requirement-analyzer.md
18. spec-writer.md
19. sprint-planner.md
20. task-decomposer.md (오케스트레이터)
21. task-manager.md
22. tdd-enforcer.md
23. tdd-orchestrator.md
24. test-executor.md
25. test-generator.md
```

---

## 🆕 새로운 구조 (13개 에이전트)

### 📋 Core Orchestrators (5개)
```yaml
1. feature-documenter: 문서화 오케스트레이터
   - 기존 유지, 이미 오케스트레이터로 동작
   - 다른 에이전트들 호출해서 문서 생성

2. task-decomposer: 태스크 분해 오케스트레이터
   - 기존 유지, 이미 오케스트레이터로 동작
   - 문서를 TDD 태스크로 분해

3. incremental-implementer: 구현 오케스트레이터
   - 기존 유지, 이미 오케스트레이터로 동작
   - TASKS.md 따라 점진적 구현

4. code-refactorer: 리팩토링 오케스트레이터 ✨NEW
   - 새로 생성 필요
   - 기존 코드 개선 전담

5. project-validator: 프로젝트 검증 오케스트레이터
   - code-auditor.md를 이름 변경 및 수정
   - 프로젝트 전체 건전성 검증
```

### 🏗️ Foundation Agents (3개)
```yaml
6. requirement-analyzer: 요구사항 분석
   - 기존 유지

7. architecture-guardian: 아키텍처 설계/검증
   - 기존 유지

8. project-manager: Taskmaster 스타일 태스크 관리 ✨NEW
   - 새로 생성 필요
   - 통합할 에이전트들:
     * task-manager.md
     * sprint-planner.md
     * milestone-tracker.md
     * progress-monitor.md
```

### 📝 Implementation Agents (3개)
```yaml
9. test-manager: 테스트 전체 관리 ✨NEW
   - 새로 생성 필요
   - 통합할 에이전트들:
     * test-generator.md
     * test-executor.md
     * tdd-enforcer.md
     * tdd-orchestrator.md
     * coverage-analyzer.md
     * mock-builder.md
     * regression-detector.md

10. code-implementer: 코드 구현 ✨NEW
    - 새로 생성 필요
    - 통합할 에이전트들:
      * llm-pair-programmer.md
      * refactor-assistant.md
      * performance-optimizer.md

11. documentation-writer: 문서 작성 ✨NEW
    - 새로 생성 필요
    - 통합할 에이전트들:
      * spec-writer.md
      * doc-maintainer.md
```

### ✨ Quality Agents (2개)
```yaml
12. code-validator: 코드 품질 검증 ✨NEW
    - 새로 생성 필요
    - 통합할 에이전트들:
      * code-reviewer.md
      * readable-validator.md

13. dependency-resolver: 의존성 관리
    - 기존 유지
```

---

## 🔨 구현 계획

### Phase 1: 새 에이전트 생성 (6개)
```bash
# 생성할 파일들
1. /Users/undo/.claude/agents/code-refactorer.md
2. /Users/undo/.claude/agents/project-manager.md
3. /Users/undo/.claude/agents/test-manager.md
4. /Users/undo/.claude/agents/code-implementer.md
5. /Users/undo/.claude/agents/documentation-writer.md
6. /Users/undo/.claude/agents/code-validator.md
```

### Phase 2: 기존 에이전트 수정 (1개)
```bash
# 수정할 파일
1. code-auditor.md → project-validator.md로 이름 변경 및 내용 수정
```

### Phase 3: 불필요한 에이전트 삭제 (15개)
```bash
# 삭제할 파일들
1. test-generator.md
2. test-executor.md
3. tdd-enforcer.md
4. tdd-orchestrator.md
5. coverage-analyzer.md
6. mock-builder.md
7. regression-detector.md
8. task-manager.md
9. sprint-planner.md
10. milestone-tracker.md
11. progress-monitor.md
12. spec-writer.md
13. doc-maintainer.md
14. code-reviewer.md
15. readable-validator.md
16. llm-pair-programmer.md
17. refactor-assistant.md
18. performance-optimizer.md
```

### Phase 4: CLAUDE.md 업데이트
```yaml
변경사항:
- Agent Ecosystem: 25 → 13 Specialized Agents
- 섹션 재구성
- 새로운 에이전트 설명 추가
```

---

## 📝 각 새 에이전트 상세 설계

### 1. code-refactorer.md
```yaml
name: code-refactorer
description: Orchestrates code refactoring by coordinating multiple agents. Never refactors directly.
color: teal
tools: [Task]

orchestrates:
  - test-manager: "테스트 상태 확인"
  - code-validator: "개선 필요 영역 식별"
  - architecture-guardian: "구조 개선 검증"
  - code-implementer: "리팩토링 수행"
  - test-manager: "리팩토링 후 검증"

workflow:
  1. 모든 테스트 통과 확인
  2. 코드 스멜 식별
  3. 리팩토링 계획 수립
  4. 점진적 리팩토링
  5. 테스트 재검증
```

### 2. project-manager.md (Taskmaster 스타일)
```yaml
name: project-manager
description: Manages tasks, sprints, milestones with Taskmaster-style natural language processing
color: gold
tools: [Read, Write, Task]

features:
  - 자연어 태스크 파싱
  - 스마트 필터링
  - 의존성 자동 감지
  - 복잡도 분석
  - 상태 전환 관리
  - README 동기화

통합된 기능들:
  - task-manager의 태스크 CRUD
  - sprint-planner의 스프린트 관리
  - milestone-tracker의 마일스톤 추적
  - progress-monitor의 진행상황 모니터링
```

### 3. test-manager.md
```yaml
name: test-manager
description: Comprehensive test management including TDD, coverage, and regression
color: green
tools: [Read, Write, Bash, Task]

통합된 기능들:
  - test-generator의 테스트 생성
  - test-executor의 테스트 실행
  - tdd-enforcer의 TDD 강제
  - tdd-orchestrator의 TDD 조율
  - coverage-analyzer의 커버리지 분석
  - mock-builder의 목 생성
  - regression-detector의 회귀 탐지
```

### 4. code-implementer.md
```yaml
name: code-implementer
description: Handles all code implementation, optimization, and improvements
color: blue
tools: [Read, Write, MultiEdit, Task]

통합된 기능들:
  - llm-pair-programmer의 AI 협업
  - refactor-assistant의 리팩토링
  - performance-optimizer의 최적화
```

### 5. documentation-writer.md
```yaml
name: documentation-writer
description: Creates and maintains all documentation
color: yellow
tools: [Read, Write, Task]

통합된 기능들:
  - spec-writer의 명세 작성
  - doc-maintainer의 문서 유지보수
```

### 6. code-validator.md
```yaml
name: code-validator
description: Validates code quality, readability, and standards
color: purple
tools: [Read, Grep, Task]

통합된 기능들:
  - code-reviewer의 코드 리뷰
  - readable-validator의 가독성 검증
```

### 7. project-validator.md (기존 code-auditor 수정)
```yaml
name: project-validator
description: Orchestrates complete project validation
color: crimson
tools: [Task]

validates:
  - 태스크 완료 상태
  - 테스트 커버리지
  - 코드 품질
  - 문서 동기화
  - 의존성 건전성
  - 아키텍처 일관성
```

---

## 🚀 실행 순서

1. **이 문서 저장** (/Users/undo/.claude/AGENT_RESTRUCTURE_PLAN.md)
2. **새 에이전트 6개 생성**
3. **code-auditor → project-validator 변경**
4. **구 에이전트 15개 삭제**
5. **CLAUDE.md 업데이트**
6. **테스트 및 검증**

---

## ⚠️ 주의사항

1. **오케스트레이터 원칙**: 모든 오케스트레이터는 직접 작업 금지, Task tool로만 위임
2. **기존 동작 보장**: feature-documenter, task-decomposer, incremental-implementer는 이미 동작 중이므로 신중히 다룰 것
3. **점진적 적용**: 한 번에 모두 변경하지 말고 단계별로 진행
4. **백업**: 변경 전 기존 에이전트 백업 권장

---

## 🔄 롤백 계획

문제 발생 시:
1. Git으로 이전 상태 복원
2. 또는 이 문서 기반으로 역순 진행
3. 삭제한 에이전트들은 git history에서 복구 가능

---

## ✅ 완료 체크리스트

- [ ] AGENT_RESTRUCTURE_PLAN.md 저장
- [ ] code-refactorer.md 생성
- [ ] project-manager.md 생성
- [ ] test-manager.md 생성
- [ ] code-implementer.md 생성
- [ ] documentation-writer.md 생성
- [ ] code-validator.md 생성
- [ ] code-auditor.md → project-validator.md 변경
- [ ] 15개 구 에이전트 삭제
- [ ] CLAUDE.md 업데이트
- [ ] 전체 시스템 테스트

---

## 📌 이 문서의 목적

컨텍스트가 유실되어도 이 문서만 있으면:
1. 전체 재구조화 계획을 이해할 수 있음
2. 각 에이전트의 역할과 통합 내용을 파악 가능
3. 실행 순서를 따라 구현 가능
4. 문제 발생 시 롤백 가능

**이 문서를 먼저 저장한 후 작업을 시작하세요!**