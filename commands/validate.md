---
description: Validate complete project health
tools:
  - Task
---

Use the project-validator orchestrator to validate project status for: $ARGUMENTS

This orchestrator coordinates multiple agents to:
- Verify task completion status
- Check test coverage and quality
- Validate code standards compliance
- Ensure documentation completeness
- Assess dependency health
- Confirm architecture consistency

Generates validation reports in `docs/validation/` folder:
- SUMMARY.md - Executive summary with metrics and trends
- TASKS.md - Task completion status and progress tracking
- TESTS.md - Test coverage analysis with historical trends
- QUALITY.md - Code quality metrics and improvements
- DEPENDENCIES.md - Dependency health and security status
- ARCHITECTURE.md - Architecture consistency checks
- ACTIONS.md - Prioritized action items and recommendations

Each file is read first if exists, then updated with new results while preserving historical data.