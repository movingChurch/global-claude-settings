# Test Assistant

Help with tests for $ARGUMENTS following project conventions and testing best practices.

## Task

I'll help you with comprehensive testing by:

1. Setting up testing infrastructure and configuration
2. Creating comprehensive test suites for your code
3. Implementing different types of tests (unit, integration, e2e)
4. Following TDD (Test-Driven Development) practices
5. Mocking dependencies and external services
6. Improving test coverage for existing code
7. Troubleshooting failing tests
8. Ensuring continuous testing quality

## Comprehensive Testing Workflow (18 Steps)

### Phase 1: Setup & Analysis (Steps 1-4)

1. **Project Analysis** - Examine codebase structure and existing testing patterns
2. **Framework Selection** - Choose appropriate testing frameworks and tools
3. **Infrastructure Setup** - Configure test runners, reporters, and CI integration
4. **Environment Configuration** - Set up test environments and database fixtures

### Phase 2: Test Planning (Steps 5-8)

5. **Requirements Analysis** - Identify what needs to be tested and edge cases
6. **Test Strategy Design** - Plan unit, integration, and e2e test coverage
7. **Mock Strategy** - Identify external dependencies to mock or stub
8. **Test Data Preparation** - Create fixtures, factories, and test datasets

### Phase 3: TDD Implementation (Steps 9-12)

9. **Red Phase** - Write failing tests that describe desired behavior
10. **Green Phase** - Write minimal code to make tests pass
11. **Refactor Phase** - Improve code quality while keeping tests green
12. **Validation** - Ensure tests cover all requirements and edge cases

### Phase 4: Advanced Testing (Steps 13-16)

13. **Integration Tests** - Test component interactions and API endpoints
14. **E2E Tests** - Test complete user workflows and critical paths
15. **Performance Tests** - Add load testing and performance benchmarks
16. **Security Tests** - Include vulnerability and authorization testing

### Phase 5: Quality Assurance (Steps 17-18)

17. **Coverage Analysis** - Measure and improve test coverage metrics
18. **CI/CD Integration** - Set up automated testing in deployment pipeline

## Detailed Process

I'll follow these detailed steps:

1. **Project Analysis** - Examine existing testing setup and conventions
2. **Code Understanding** - Analyze functionality, dependencies, and edge cases
3. **Strategy Planning** - Choose appropriate testing levels and techniques
4. **Infrastructure Setup** - Configure runners, reporters, and environments
5. **Test Implementation** - Write comprehensive tests following TDD practices
6. **Quality Assurance** - Ensure coverage, performance, and maintainability
7. **CI/CD Integration** - Automate testing in deployment pipeline
8. **Documentation** - Provide testing guides and best practices

## Testing Setup & Configuration

I can set up and configure:

### Test Runners & Frameworks

- **Jest** - Zero-config testing with built-in mocking
- **Vitest** - Fast Vite-native test runner
- **Mocha/Chai** - Flexible testing with assertion libraries
- **Jasmine** - Behavior-driven testing framework

### UI Testing Libraries

- **React Testing Library** - Simple and complete React DOM testing
- **Vue Test Utils** - Official Vue.js testing utilities
- **Angular Testing Utilities** - TestBed and component testing
- **Enzyme** - JavaScript testing utility for React

### E2E Testing Tools

- **Cypress** - Fast, easy and reliable browser testing
- **Playwright** - Cross-browser automation with modern capabilities
- **Puppeteer** - Chrome DevTools Protocol automation
- **WebdriverIO** - Cross-platform testing framework

### API Testing Tools

- **Supertest** - HTTP assertions for Node.js
- **Pactum** - REST API testing toolkit
- **MSW (Mock Service Worker)** - API mocking library
- **Postman/Newman** - API testing and automation

### Specialized Testing

- **Storybook** - Component testing and documentation
- **Testing-library family** - Simple and complete testing utilities
- **Jest DOM** - Custom Jest matchers for DOM testing
- **User Event** - Realistic user interaction simulation

## Testing Techniques & Methodologies

### Test-Driven Development (TDD)

- **Red-Green-Refactor cycle** - Write failing test, make it pass, improve code
- **Behavior-driven development (BDD)** - Given-When-Then specification
- **Outside-in TDD** - Start with acceptance tests, work inward
- **Unit-first TDD** - Begin with smallest units, build up

### Testing Strategies

- **Snapshot testing** - Capture component/function output for regression detection
- **Property-based testing** - Generate test cases with random inputs
- **Parameterized tests** - Test multiple scenarios with data tables
- **Contract testing** - API consumer-provider agreement testing
- **Visual regression testing** - UI change detection through screenshots
- **Mutation testing** - Evaluate test quality by introducing bugs
- **Fuzz testing** - Random input testing for edge case discovery

### Performance & Load Testing

- **Unit performance benchmarks** - Function execution time measurement
- **Integration load testing** - API endpoint stress testing
- **Browser performance testing** - Core Web Vitals and rendering metrics
- **Memory leak detection** - Heap usage monitoring in tests

## Advanced Mocking Strategies

### Function & Module Mocking

- **Jest mocks** - `jest.fn()`, `jest.spyOn()`, `jest.mock()`
- **Sinon.js** - Spies, stubs, and mocks for any framework
- **Module interception** - Mock entire modules or specific exports
- **Dependency injection** - Constructor and parameter mocking

### Network & External Service Mocking

- **HTTP request mocking** - `msw`, `nock`, `fetch-mock`
- **Database mocking** - In-memory databases, test containers
- **File system mocking** - `mock-fs` for file operations
- **Browser API mocking** - `jsdom`, `happy-dom` for DOM APIs
- **Timer mocking** - `jest.useFakeTimers()`, `sinon.useFakeTimers()`
- **Service worker mocking** - MSW for network layer interception

### Advanced Mocking Patterns

- **Factory pattern mocking** - Reusable mock object creation
- **Builder pattern mocks** - Fluent mock configuration
- **Partial mocking** - Mock specific methods while keeping others real
- **Mock implementations** - Custom logic in mocked functions
- **Mock reset strategies** - Clean slate between tests

## Test Quality & Maintenance

### Coverage & Metrics

- **Line coverage** - Percentage of code lines executed
- **Branch coverage** - All conditional paths tested
- **Function coverage** - All functions called during tests
- **Statement coverage** - Every statement executed
- **Path coverage** - All possible execution paths tested

### Test Maintenance

- **Test organization** - Logical grouping and naming conventions
- **Shared test utilities** - Reusable helpers and assertions
- **Test data management** - Fixtures, builders, and factories
- **Flaky test prevention** - Deterministic and isolated tests
- **Test performance optimization** - Parallel execution and test splitting

I'll adapt to your project's specific testing frameworks, patterns, and conventions to ensure consistency with your existing codebase while implementing these comprehensive testing practices.
