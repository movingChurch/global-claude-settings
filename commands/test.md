---
description: Generate comprehensive tests for current code
tools:
  - Task
---

Use the test-generator agent to create comprehensive tests for: $ARGUMENTS

Follow TDD principles:

1. Write tests that initially fail (Red phase)
2. Include edge cases and boundary conditions
3. Use descriptive test names
4. Structure with Arrange-Act-Assert pattern
5. Generate mocks with mock-builder if needed

Ensure tests are:

- Language-appropriate (detect from context)
- Framework-compatible
- Coverage-focused (aim for >80%)
- Well-documented
