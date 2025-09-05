# Code Analyze Command

```yaml
---
name: code analyze
description: Systematically analyze project code and generate technical documentation using @system/code-analyst agent
argument-hint: "/code analyze [file/folder path]"
---
```

# Code Analyze Command

Analyzes project code using @system/code-analyst agent and generates structured technical documentation across 5 analysis categories.

## Usage

```bash
/code analyze [file/folder path]
```

**Examples:**
```bash
/code analyze src/
/code analyze .
/code analyze components/auth
/code analyze src/main.js
```

## What It Does

1. **Path Validation**: Verify that the input file/folder path exists and is accessible
2. **Existing Analysis Check**: Read and check existing analysis files in the `{project}/documents/analysis/` folder
3. **Code Analysis Request**: Provide current project code and existing analysis results to @code-analyst agent for updated analysis
4. **Analysis File Updates**: Update/create files with new analysis results for each analysis category
5. **Result Storage**: Save 5 analysis files in the `{project}/documents/analysis/` folder

## Workflow Details

### Step 1: Path Validation
```
Input Path → Exists Check → Access Check → Continue/Error
```

### Step 2: Existing Analysis Check
Existing files to analyze:
- `tech-stack.md`: Technology stack identification results
- `architecture.md`: Architecture structure analysis
- `guideline-compliance.md`: Guideline compliance status
- `improvements.md`: Improvement suggestions  
- `legacy-assessment.md`: Legacy code assessment

### Step 3: Code Analysis Request
Information provided to @code-analyst agent:
- Current project code (specified path)
- Existing analysis results (if available)
- Request for updated analysis across 5 categories

### Step 4: Analysis File Updates
Analysis performed for each category:
1. **Tech Stack Analysis** → `tech-stack.md`
2. **Architecture Analysis** → `architecture.md`  
3. **Guideline Compliance** → `guideline-compliance.md`
4. **Improvement Suggestions** → `improvements.md`
5. **Legacy Assessment** → `legacy-assessment.md`

### Step 5: Result Storage
Result storage location: `{project}/documents/analysis/`

## Output

```
Analysis completed: /project/documents/analysis/
├── tech-stack.md          (updated)
├── architecture.md        (updated)
├── guideline-compliance.md (newly created)
├── improvements.md        (updated)
└── legacy-assessment.md   (updated)

📊 Analysis Summary:
- Tech Stack: React 18, TypeScript, Node.js 16
- Architecture: MVC pattern, layered structure
- Compliance: 80% (4/5 guidelines followed)
- Key Improvements: 3 identified
- Legacy Code: 15% (refactoring recommended)
```

## Success Criteria

**GOOD** = All 5 analysis files successfully updated with specific and accurate analysis results in each file

**PARTIAL** = Only some analysis files were updated but basic analysis is completed (with warning messages)

**BAD** = Path error, code analysis failure, file save failure, or @code-analyst agent call failure

## Key Features

### Incremental Updates
- Update only changes and improvements considering existing analysis results
- Improve efficiency by preventing unnecessary re-analysis

### Systematic Analysis
- Utilize professional and accurate analysis from @code-analyst agent
- Document only certain analysis results without speculation

### Structured Documentation
- Store separately by category in project-specific `analysis` folder
- Ensure easy management with consistent file naming and structure

### Integrated Workflow
- Complete entire code analysis process with single command
- Support integration with other development commands

## Error Handling

**Path Not Found**: When the specified path does not exist
```
❌ Error: Path '{path}' could not be found.
```

**Access Denied**: When there are no file/folder access permissions
```
❌ Error: Cannot access path '{path}'. Please check permissions.
```

**Agent Call Failed**: When @code-analyst agent call fails
```
❌ Error: Code analysis agent call failed. Please try again.
```

**Partial Update**: When only some files are updated
```
⚠️ Warning: Only 3 out of 5 files were updated. Please check the rest manually.
```