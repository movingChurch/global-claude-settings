# Lint Assistant

Analyze and fix linting issues in $ARGUMENTS following project conventions.

## Task

I'll help you with comprehensive code quality and linting by:

1. **Setup & Configuration** - Install and configure linting tools
2. **Project Analysis** - Identify appropriate linters for your stack
3. **Rule Configuration** - Set up custom rules and style guides
4. **Integration Setup** - Configure IDE, CI/CD, and pre-commit hooks
5. **Issue Detection** - Run comprehensive linting analysis
6. **Automated Fixes** - Apply automatic fixes when possible
7. **Manual Resolution** - Guide complex issue resolution
8. **Quality Assurance** - Ensure consistent code style and standards

## Comprehensive Linting Setup Process

### Phase 1: Analysis & Setup (Steps 1-4)

1. **Project Analysis** - Examine codebase, tech stack, and existing configuration
2. **Tool Selection** - Choose appropriate linters based on project requirements
3. **Installation Setup** - Install linting packages and dependencies
4. **Base Configuration** - Create initial configuration files

### Phase 2: Configuration & Rules (Steps 5-8)

5. **Rule Configuration** - Set up comprehensive rule sets and style guides
6. **Custom Rules** - Add project-specific rules and overrides
7. **Integration Setup** - Configure IDE extensions and editor settings
8. **Automation Setup** - Set up pre-commit hooks and CI/CD integration

### Phase 3: Execution & Fixes (Steps 9-12)

9. **Initial Scan** - Run comprehensive linting analysis
10. **Issue Categorization** - Group and prioritize linting issues
11. **Automated Fixes** - Apply safe automatic fixes
12. **Manual Resolution** - Guide complex issue resolution

### Phase 4: Validation & Maintenance (Steps 13-14)

13. **Verification** - Ensure fixes don't introduce new issues
14. **Documentation** - Create linting guides and contribution standards

## Detailed Process

I'll follow these detailed steps:

1. **Project Analysis** - Examine existing linting setup and identify gaps
2. **Tool Selection** - Choose appropriate linters for your technology stack
3. **Configuration Setup** - Create and customize linting configuration files
4. **Integration Setup** - Configure IDE, CI/CD, and development workflow
5. **Issue Detection** - Run comprehensive linting analysis
6. **Automated Fixes** - Apply automatic fixes for common issues
7. **Manual Resolution** - Guide complex issue resolution with explanations
8. **Quality Validation** - Verify fixes maintain code functionality and style

## Linting Setup & Configuration

### ESLint Setup
```bash
# Install ESLint
npm install --save-dev eslint

# Initialize configuration
npx eslint --init

# Install popular configs
npm install --save-dev @eslint/config-standard
npm install --save-dev eslint-config-prettier
```

### TypeScript ESLint Setup
```bash
# Install TypeScript ESLint
npm install --save-dev @typescript-eslint/eslint-plugin @typescript-eslint/parser

# Install additional rules
npm install --save-dev eslint-plugin-import
npm install --save-dev eslint-plugin-unused-imports
```

### Prettier Setup
```bash
# Install Prettier
npm install --save-dev prettier

# Install ESLint integration
npm install --save-dev eslint-config-prettier eslint-plugin-prettier
```

### Framework-Specific Linting
```bash
# React
npm install --save-dev eslint-plugin-react eslint-plugin-react-hooks
npm install --save-dev eslint-plugin-jsx-a11y

# Vue
npm install --save-dev eslint-plugin-vue

# Node.js
npm install --save-dev eslint-plugin-node eslint-plugin-security
```

### Pre-commit Hooks Setup
```bash
# Install Husky and lint-staged
npm install --save-dev husky lint-staged

# Setup pre-commit hooks
npx husky add .husky/pre-commit "npx lint-staged"
```

## Common Linting Issues I Can Fix

### Code Style & Formatting
- **Inconsistent spacing** - Indentation, line spacing, operator spacing
- **Quote style** - Single vs double quotes, template literal usage
- **Semicolon usage** - Missing or unnecessary semicolons
- **Line length** - Overly long lines that hurt readability
- **Trailing whitespace** - Unnecessary spaces at line ends

### Code Quality Issues
- **Unused variables and imports** - Dead code removal
- **Missing type annotations** - TypeScript type safety improvements
- **Potential bugs** - Comparison operators, variable shadowing
- **Performance issues** - Inefficient React renders, memory leaks
- **Security vulnerabilities** - XSS, SQL injection, unsafe practices

### Framework-Specific Issues
- **React issues** - Hook dependencies, key props, accessibility
- **Vue issues** - Template syntax, component patterns
- **Node.js issues** - Async patterns, error handling, security

### Import & Dependency Issues
- **Import ordering** - Consistent import organization
- **Circular dependencies** - Problematic import cycles
- **Deprecated API usage** - Outdated method calls
- **Missing dependencies** - Unlisted package dependencies

### Documentation & Comments
- **Missing JSDoc** - Function and class documentation
- **Outdated comments** - Comments that don't match code
- **TODO management** - Tracking and organizing TODOs

## Linting Tools I Can Work With

### Core Linting Tools
- **ESLint** - JavaScript/TypeScript linting with extensive plugin ecosystem
- **Prettier** - Opinionated code formatting for consistent style
- **TSLint** - Legacy TypeScript linter (migrating to ESLint recommended)
- **JSHint** - Lightweight JavaScript static analysis
- **StandardJS** - Zero-configuration JavaScript linter

### Language-Specific Linters
- **stylelint** - CSS/SCSS/Less linting and formatting
- **HTMLHint** - HTML validation and best practices
- **JSONLint** - JSON syntax validation
- **YAMLlint** - YAML file validation
- **Markdownlint** - Markdown style and formatting

### Specialized Linting
- **commitlint** - Git commit message validation
- **lint-staged** - Run linters on staged files only
- **alex** - Inclusive language linting
- **write-good** - English prose linting
- **textlint** - Natural language linting framework

### Framework & Library Specific
- **eslint-plugin-react** - React component and hooks linting
- **eslint-plugin-vue** - Vue.js template and component linting
- **eslint-plugin-angular** - Angular application linting
- **eslint-plugin-lodash** - Lodash usage optimization
- **eslint-plugin-jest** - Jest testing best practices

### Security & Performance
- **eslint-plugin-security** - Security vulnerability detection
- **eslint-plugin-sonarjs** - Code quality and bug detection
- **eslint-plugin-unicorn** - Hundreds of powerful ESLint rules
- **eslint-plugin-import** - Import/export syntax validation
- **eslint-plugin-unused-imports** - Unused import detection

### Accessibility & Best Practices
- **eslint-plugin-jsx-a11y** - React accessibility linting
- **eslint-plugin-compat** - Browser compatibility checking
- **eslint-plugin-node** - Node.js best practices
- **eslint-plugin-promise** - Promise usage patterns

## Configuration Examples

### ESLint Configuration (.eslintrc.js)
```javascript
module.exports = {
  extends: [
    'eslint:recommended',
    '@typescript-eslint/recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'prettier'
  ],
  plugins: ['@typescript-eslint', 'react', 'import', 'jsx-a11y'],
  rules: {
    // Custom rules here
  }
};
```

### Prettier Configuration (.prettierrc)
```json
{
  "semi": true,
  "trailingComma": "es5",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2
}
```

### Package.json Scripts
```json
{
  "scripts": {
    "lint": "eslint . --ext .js,.jsx,.ts,.tsx",
    "lint:fix": "eslint . --ext .js,.jsx,.ts,.tsx --fix",
    "format": "prettier --write \"**/*.{js,jsx,ts,tsx,json,md}\"",
    "format:check": "prettier --check \"**/*.{js,jsx,ts,tsx,json,md}\""
  }
}
```

I'll adapt my approach based on your project's specific linting configuration, technology stack, and style guide requirements to ensure consistent code quality across your entire codebase.