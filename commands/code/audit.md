# Command Template

```yaml
---
name: code audit
description: Verify project code against user-defined criteria to analyze violations and generate refactoring plan
argument-hint: "[project path] [criteria description/document]"
---
```

# Code Audit Command

Systematically verify all project code against user-defined criteria to identify violations and generate an actionable refactoring plan.

## Usage

```bash
/code audit [project path] [criteria description/document]
```

**Input Flexibility Examples:**

```bash
# Direct criteria description
/code audit ./src "Function names must use camelCase"

# Document file reference  
/code audit /path/to/project ./coding-standards.md

# Complex criteria setting
/code audit . "All functions must have JSDoc comments and variable names must be meaningful"
```

## What It Does

### Phase 1: Input Processing & Project Discovery

1. **Input Parsing** - Automatically distinguish project path and criteria description/document from user input by context
2. **Project Scan** - Explore entire project structure and all code files to identify analysis targets

### Phase 2: Multi-Agent Collaboration Workflow  

3. **Code Analysis** (@system/code-analyst) - Identify and analyze violations in all code files against user-defined criteria
4. **Quality Assessment** (@quality-guardian) - Classify discovered violations, evaluate severity, and set priorities
5. **Plan Development** (@workflow-coordinator) - Generate systematic refactoring workflow and step-by-step execution plan

### Phase 3: Documentation & Reporting

6. **Result Documentation** - Generate violations report and refactoring plan at fixed locations

## Agent Integration Points

### @system/code-analyst

- **Role**: Code analysis and violation identification against criteria
- **Input**: Project code files, user-defined criteria
- **Output**: Detailed violation list and location information

### @quality-guardian  

- **Role**: Quality criteria evaluation and violation classification
- **Input**: Violation analysis results from code-analyst
- **Output**: Classified violations, severity levels, priorities

### @workflow-coordinator

- **Role**: Refactoring workflow and execution plan development
- **Input**: Assessment results from quality-guardian
- **Output**: Step-by-step refactoring execution plan

## Output

### Fixed Output Locations

```
{project}/documents/audit/violations.md
└── Detailed violations report
    ├── Violation list (by file, by line)
    ├── Severity classification (Critical/High/Medium/Low)  
    └── Analysis results against criteria

{project}/documents/audit/refactoring-plan.md  
└── Step-by-step refactoring execution plan
    ├── Work order by priority
    ├── Specific actions for each step
    └── Estimated workload and risk assessment
```

### violations.md Structure

```markdown
# Code Audit Violations Report

## Executive Summary
- Total violations: X items
- Distribution by severity: Critical(X), High(X), Medium(X), Low(X)

## Critical Violations
[filename:line] Violation content and criteria

## High Priority Violations  
[filename:line] Violation content and criteria

## Medium Priority Violations
[filename:line] Violation content and criteria

## Low Priority Violations
[filename:line] Violation content and criteria
```

### refactoring-plan.md Structure  

```markdown
# Refactoring Execution Plan

## Phase 1: Critical Issues (Immediate fix required)
- [ ] Task 1: Specific action
- [ ] Task 2: Specific action

## Phase 2: High Priority (Within 1 week)  
- [ ] Task 3: Specific action
- [ ] Task 4: Specific action

## Phase 3: Medium Priority (Within 1 month)
- [ ] Task 5: Specific action

## Phase 4: Low Priority (Future consideration)
- [ ] Task 6: Specific action
```

## Success Criteria

**GOOD** = Both document files successfully generated (`violations.md` + `refactoring-plan.md`)

**PARTIAL** = Violation verification completed but refactoring plan generation failed (with warning message)

**BAD** = One or more of the following occurred:

- Project path error or access denied
- Unable to interpret criteria description/document  
- Project code file scan failure
- Critical error during agent collaboration process

## Key Features

### Flexible Input Processing

- Automatic distinction between project path and criteria through context analysis
- Support for both direct criteria description and document file reference
- Ability to set complex coding standards

### Expert Agent Collaboration

- Step-by-step work performance by agents in each specialized area
- Systematic workflow through result delivery between agents
- Comprehensive quality assessment through multi-angle analysis

### Systematic Verification & Actionable Plan

- Comprehensive verification of entire project code
- Efficient refactoring guide with priority setting by severity
- Provision of specific and actionable step-by-step action plans
