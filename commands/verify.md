---
name: verify
description: Run comprehensive project verification checks (lint, test, build) for any language
argument-hint: "verify all" or "verify python only"
---

# Verify Command

Run comprehensive project verification to ensure code quality and functionality across any programming language or framework.

## Usage

```bash
/verify [scope]
```

**Scope options:**

- `all` - Full verification (default)
- `quick` - Essential checks only
- `[language]` - Language-specific checks (e.g., `python`, `rust`, `go`, `java`)
- `[tool]` - Specific tool only (e.g., `lint`, `test`, `build`)

## Anti-Overengineering Rules

**ESSENTIAL CHECKS ONLY:**

- ✅ Run only configured project checks
- ✅ Skip checks not defined in project
- ✅ Focus on blocking issues, not perfection
- ✅ Prioritize functionality over style
- ✅ Fast feedback over comprehensive coverage

**NO EXCESSIVE VERIFICATION:**

- ❌ Don't add checks not requested
- ❌ Don't gold-plate quality standards
- ❌ Don't run unnecessary tools
- ❌ Don't over-analyze minor issues

## What Gets Verified

### Language-Agnostic Checks

- **Syntax Validation**: Language parser/compiler checks
- **Build/Compilation**: Make, CMake, Cargo, Maven, Gradle, npm, etc.
- **Dependencies**: Package resolution, version conflicts, security
- **Configuration**: Valid project config files

### Code Quality by Language

**Python**: pylint, flake8, black, mypy, pytest, tox
**JavaScript/TypeScript**: ESLint, Prettier, tsc, Jest, Vitest
**Rust**: rustfmt, clippy, cargo check, cargo test
**Go**: go fmt, go vet, golint, go test
**Java**: Checkstyle, SpotBugs, JUnit, Maven/Gradle
**C/C++**: clang-format, cppcheck, valgrind, CMake/Make
**Ruby**: RuboCop, RSpec, Bundler
**Swift**: SwiftLint, XCTest, Swift Package Manager

### Universal Checks

- **Tests**: Unit tests, integration tests (language-appropriate)
- **Linting**: Code style and quality tools
- **Type Safety**: Static type checking where applicable
- **Documentation**: Doc generation, comment validation

## Verification Process

1. **Auto-Discovery**: Detect language and tools from:
   - File extensions (.py, .rs, .go, .java, etc.)
   - Config files (package.json, Cargo.toml, go.mod, pom.xml, etc.)
   - Build files (Makefile, CMakeLists.txt, build.gradle, etc.)
   - Tool configs (.eslintrc, .pylintrc, rustfmt.toml, etc.)

2. **Essential First**: Run blocking checks
   - Syntax validation
   - Compilation/build
   - Dependency resolution

3. **Quality Second**: Run quality checks
   - Linting/formatting
   - Type checking
   - Test execution

4. **Report**: Clear, actionable feedback

## Specialists Used

- `quality-guardian` - Code quality assessment for any language
- `general-purpose` - Project discovery, tool detection, and execution
- Language-specific specialists when needed:
  - `system-software-impl-specialist` - C/C++/Rust verification
  - `backend-impl-specialist` - Server-side language checks
  - `frontend-impl-specialist` - Client-side language checks

## Output Format

```text
✅ PROJECT VERIFICATION COMPLETE

DETECTED: Python 3.11 project (pytest, mypy, black)

ESSENTIAL CHECKS:
✅ Syntax validation passed (Python AST)
✅ Build successful (setup.py/pyproject.toml)
✅ Dependencies resolved (pip/poetry)

QUALITY CHECKS:
⚠️  3 linting warnings (pylint - non-blocking)
✅ Tests passed (87% coverage - pytest)
❌ Type check failed (2 errors - mypy)

SUMMARY:
- Language: Python
- Status: FAIL (type errors must be fixed)
- Blocking Issues: 2
- Warnings: 3
- Time: 45s
```

## Success Criteria

**PASS Requirements:**

- All essential checks pass
- No blocking errors
- Build succeeds
- Core functionality works

**Warnings are OK:**

- Style/formatting issues
- Non-critical linting warnings
- Coverage below 100%
- Minor optimization suggestions

Project verification provides fast, actionable feedback on code readiness.
