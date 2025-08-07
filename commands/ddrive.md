---
description: Start full DDRIVE workflow for a feature
tools:
  - Task
---

Use the tdd-orchestrator agent to start the complete DDRIVE workflow for: $ARGUMENTS

## DDRIVE Process (Design-Document-Review-Implement-Verify-Evaluate)

Execute all 6 phases sequentially:

### Phase 1: DESIGN

- Use requirement-analyzer to parse requirements
- Use task-manager to create structured task
- Use architecture-guardian for design validation

### Phase 2: DOCUMENT

- Use doc-maintainer for documentation templates
- Use spec-writer for BDD scenarios
- Use readable-validator for clarity

### Phase 3: REVIEW

- Use code-reviewer for comprehensive review
- Use architecture-guardian for architecture check
- Use sprint-planner for capacity confirmation

### Phase 4: IMPLEMENT

- Use test-generator for TDD tests
- Use test-executor for Red-Green-Refactor
- Use mock-builder for test fixtures

### Phase 5: VERIFY

- Use coverage-analyzer for coverage check
- Use regression-detector for regression testing
- Use performance-optimizer for performance validation

### Phase 6: EVALUATE

- Use progress-monitor for metrics collection
- Use milestone-tracker for milestone updates
- Document lessons learned

Ensure strict compliance with all phase gates before proceeding.
