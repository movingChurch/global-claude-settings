# 🚀 CLAUDE CODE DEVELOPMENT SYSTEM

## ⚡ ALWAYS USE AGENTS FOR TASKS

**USE SPECIALIZED AGENTS FOR ALL WORK - DON'T DO TASKS MANUALLY**

When working on any development task, ALWAYS use the Task tool to delegate to appropriate specialized agents. This ensures expert-level quality and follows best practices.

## 🎯 Task Execution Rule

**FOR EVERY TASK:**

1. **Identify the task type** - Implementation, testing, docs, analysis, etc.
2. **Use Task tool** - Delegate to the appropriate agent
3. **Let agents handle the work** - They are domain experts
4. **Review and integrate results** - Ensure quality output

## 💡 Examples of Agent Usage

```bash
# Code Implementation
User: "Create user authentication"
Assistant: Uses Task tool → code-implementer agent

# Quality Checks  
User: "Review this code"
Assistant: Uses Task tool → code-validator agent

# Testing
User: "Add tests for login"
Assistant: Uses Task tool → test-manager agent

# Documentation
User: "Document the API"
Assistant: Uses Task tool → documentation-writer agent
```

## 🔧 Available Agents (84 Specialists)

### Core Development

- **code-implementer** - Clean, efficient code implementation
- **code-validator** - Quality checks and standards compliance
- **code-reviewer** - Expert code review and feedback
- **test-manager** - Test creation and TDD enforcement
- **test-automator** - Automated testing suites
- **documentation-writer** - Technical documentation
- **debugger** - Debugging specialist for errors and issues

### Architecture & Design

- **architect-review** - Reviews code changes for architectural consistency and patterns
- **architecture-guardian** - System design validation
- **backend-architect** - API and microservice design
- **frontend-developer** - React components and UI
- **ui-ux-designer** - Interface design and wireframes
- **database-optimizer** - Query optimization, indexing, and performance tuning
- **database-admin** - Database operations and management

### Security & Performance

- **security-auditor** - Security vulnerabilities and compliance
- **api-security-audit** - API-specific security review
- **performance-engineer** - Application optimization
- **react-performance-optimization** - React-specific optimization
- **error-detective** - Error investigation and debugging

### AI & ML

- **ai-engineer** - LLM applications and RAG systems
- **ml-engineer** - ML pipeline implementation
- **mlops-engineer** - ML model deployment
- **prompt-engineer** - AI prompt optimization
- **data-analyst** - Quantitative analysis, statistical insights, and SQL operations
- **data-engineer** - ETL pipelines and data infrastructure

### DevOps & Infrastructure

- **devops-troubleshooter** - Production debugging
- **incident-responder** - Emergency response
- **dependency-resolver** - Package management
- **deployment-engineer** - CI/CD and deployments
- **cloud-architect** - AWS/Azure/GCP infrastructure
- **terraform-specialist** - Infrastructure as Code
- **network-engineer** - Network connectivity and protocols
- **dx-optimizer** - Developer experience improvement

### Language Specialists

- **python-pro** - Advanced Python development
- **javascript-pro** - Modern JavaScript/Node.js
- **cpp-pro** - C++ optimization and patterns
- **c-pro** - Systems programming in C
- **sql-pro** - Complex SQL operations
- **ios-developer** - Native iOS applications
- **mobile-developer** - React Native/Flutter apps

### Research & Content

- **research-orchestrator** - Comprehensive research coordination and strategic planning
- **research-synthesizer** - Research consolidation
- **academic-researcher** - Scholarly sources and papers
- **technical-researcher** - Code analysis and evaluation
- **search-specialist** - Advanced web research
- **report-generator** - Research report creation
- **content-marketer** - Marketing content creation
- **social-media-copywriter** - Social media content
- **social-media-clip-creator** - Video clip optimization

### Specialized Tools

- **agent-expert** - Agent system optimization
- **agent-overview** - Multi-agent research system coordination and workflow management
- **command-expert** - CLI tool development
- **cultural-translator** - Natural language translation
- **mcp-deployment-orchestrator** - MCP production deployment
- **mcp-expert** - MCP integration
- **mcp-registry-navigator** - MCP server discovery
- **project-supervisor-orchestrator** - Multi-agent workflow management
- **query-clarifier** - Research query analysis
- **requirement-analyzer** - Requirements clarification
- **research-brief-generator** - Research planning
- **task-decomposition-expert** - Complex task breakdown

### Business & Integration

- **payment-integration** - Payment system implementation
- **customer-support** - Support system development
- **business-analyst** - Metrics and KPI analysis
- **legal-advisor** - Compliance and legal issues
- **sales-automator** - Sales automation and outreach
- **risk-manager** - Portfolio risk assessment
- **quant-analyst** - Financial modeling and analysis

### Content & Media

- **podcast-transcriber** - Audio/video transcription
- **podcast-content-analyzer** - Content segment analysis
- **podcast-metadata-specialist** - Episode metadata generation
- **seo-podcast-optimizer** - Podcast SEO optimization
- **markdown-syntax-formatter** - Markdown formatting
- **url-link-extractor** - URL discovery and cataloging
- **url-context-validator** - Link validation and context

### System Management

- **context-manager** - Multi-agent context coordination
- **metadata-agent** - Frontmatter standardization
- **connection-agent** - Content relationship analysis
- **review-agent** - Cross-checking and consistency
- **tag-agent** - Tag taxonomy organization
- **llms-maintainer** - llms.txt file generation
- **hackathon-ai-strategist** - Hackathon strategy and ideation

### API & Integration

- **api-documenter** - OpenAPI/Swagger documentation
- **graphql-architect** - GraphQL schema design

## 📋 Available Commands (30 Operations)

### Project Setup & Management

- **init-project** - Initialize new project structure
- **add-package** - Add dependencies to project
- **ci-setup** - Configure CI/CD pipelines
- **setup-formatting** - Configure code formatters
- **create-worktrees** - Git worktree management

### Code Quality & Review

- **code-review** - Comprehensive code review
- **lint** - Setup and run linting checks with fixes
- **test** - Comprehensive test creation and execution
- **debug** - Debug applications and issues
- **code-to-task** - Convert code to actionable tasks

### Git & Version Control

- **commit** - Create semantic commits
- **create-pull-request** - Generate pull requests
- **pr-review** - Review pull requests
- **git-status** - Check repository status
- **clean-branches** - Clean up git branches
- **update-branch-name** - Rename git branches

### Refactoring & Optimization

- **refactor** - Comprehensive code refactoring with modern patterns
- **typescript-migrate** - TypeScript migration
- **optimize-database-performance** - Database optimization
- **ultra-think** - Deep analysis and planning

### Documentation & Architecture

- **create-architecture-documentation** - Architecture docs
- **create-onboarding-guide** - Team onboarding
- **create-prd** - Product requirement documents
- **update-docs** - Update documentation
- **design-database-schema** - Database design
- **all-tools** - Tool inventory and usage

### Analysis & Reporting

- **directory-deep-dive** - Codebase analysis
- **generate-linear-worklog** - Work tracking
- **add-changelog** - Changelog generation
- **npm-scripts** - Package script management

## 🔄 COMMAND-FIRST APPROACH: Use Pre-Built Workflows

**USE COMMANDS WHEN AVAILABLE - DON'T IMPLEMENT MANUALLY**

Commands are pre-built, tested workflows that handle common development tasks. They provide structured approaches with best practices built-in. Always check for available commands before implementing tasks manually.

### 📋 When to Use Commands vs Agents

**Use Commands For:**
- Common development workflows (testing, deployment, refactoring)
- Multi-step processes with established patterns
- Tasks requiring specific tool configurations
- Project setup and initialization
- Code quality and review processes

**Use Agents For:**
- Custom implementation work
- Domain-specific expertise
- Content creation and analysis
- Specialized technical tasks
- Complex problem-solving

### ⚡ Commands Provide Structured Workflows

Commands encapsulate entire workflows with:
- **Standardized processes** - Consistent execution every time
- **Best practices** - Proven approaches built-in
- **Error handling** - Robust failure recovery
- **Tool integration** - Proper configuration of tools
- **Quality gates** - Validation at each step

### 💡 Command Usage Examples

```bash
# Instead of manually setting up tests
User: "Add tests to this component"
Assistant: Uses /test command → Comprehensive test setup with TDD

# Instead of manual code review
User: "Review my changes"
Assistant: Uses /code-review command → Full review workflow

# Instead of manual refactoring
User: "Modernize this codebase"
Assistant: Uses /refactor command → Systematic refactoring process

# Instead of manual project setup
User: "Create a new React project"
Assistant: Uses /init-project command → Complete project initialization

# Instead of manual CI setup
User: "Setup continuous integration"
Assistant: Uses /ci-setup command → Full CI/CD pipeline configuration
```

### 📁 Command Location and Discovery

All commands are located in `/Users/undo/.claude/commands/` and include:

- **Setup Commands** - Project initialization and configuration
- **Quality Commands** - Linting, testing, and code review
- **Git Commands** - Version control workflows
- **Architecture Commands** - Design and documentation
- **Analysis Commands** - Codebase insights and reporting

### 🎯 Command-First Decision Matrix

**Always ask:** "Is there a command for this?"

1. **Check commands first** - Browse available commands
2. **Use command if available** - Execute structured workflow
3. **Use agent if no command** - Delegate to domain expert
4. **Never implement manually** - Always use tools/agents

### ✅ Command Benefits

- **Consistency** - Same process every time
- **Completeness** - All steps included
- **Quality** - Best practices enforced
- **Speed** - Faster than manual implementation
- **Reliability** - Tested workflows

## 🛑 CRITICAL RULES

1. **COMMAND-FIRST** - Check for available commands before implementing
2. **NEVER work manually** - Always use commands or agents
3. **Choose the right tool** - Commands for workflows, agents for expertise
4. **Trust the systems** - Commands and agents are domain specialists
5. **Use multiple tools** - Combine commands and agents as needed
6. **Structured approach** - Commands → Agents → Never manual

## ✅ Remember

- **Commands first, then agents** - Use structured workflows when available
- **Every task uses tools** - Commands for workflows, agents for expertise  
- **Commands are tested workflows** - Proven processes with best practices
- **Agents are domain experts** - Deep knowledge and specialized skills
- **Quality is guaranteed** - Both systems follow professional standards
- **Never implement manually** - Always use the provided tools

---

## COMMANDS → AGENTS → NEVER MANUAL

## Important Instruction Reminders

Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.
