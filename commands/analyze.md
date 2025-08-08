---
description: Analyze complete project state and health
tools:
  - Task
---

Use the project-analyzer orchestrator to analyze project status for: $ARGUMENTS

This orchestrator coordinates multiple agents to:

- Analyze implemented features and modules
- Examine test coverage and quality
- Assess code standards compliance
- Review documentation completeness
- Analyze dependency tree and health
- Examine architecture patterns and consistency

Generates analysis reports in `docs/analysis/` folder:

- SUMMARY.md - Executive summary with metrics and trends
- TESTS.md - Test coverage analysis with historical trends
- QUALITY.md - Code quality metrics and improvements
- DEPENDENCIES.md - Dependency health and security status
- ARCHITECTURE.md - Architecture consistency checks
- ACTIONS.md - Prioritized action items and recommendations

Each file is read first if exists, then updated with new results while preserving historical data.
