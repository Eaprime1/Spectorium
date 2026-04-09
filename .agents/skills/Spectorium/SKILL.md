```markdown
# Spectorium Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill provides a comprehensive guide to the development patterns, coding conventions, and automation workflows used in the Spectorium TypeScript codebase. It covers file organization, import/export styles, commit conventions, and how to set up and manage GitHub Actions workflows for repository automation.

## Coding Conventions

### File Naming
- Use **camelCase** for file names.
  - Example: `userProfile.ts`, `dataFetcher.ts`

### Import Style
- Use **relative imports** for modules within the repository.
  - Example:
    ```typescript
    import { fetchData } from './dataFetcher';
    ```

### Export Style
- Use **named exports** for all modules.
  - Example:
    ```typescript
    // In dataFetcher.ts
    export function fetchData() { ... }

    // In another file
    import { fetchData } from './dataFetcher';
    ```

### Commit Patterns
- Commit messages are **freeform** and do not follow a strict prefix convention.
- Average commit message length: ~31 characters.
  - Example: `fix user profile loading error`

## Workflows

### Add GitHub Actions Workflow
**Trigger:** When someone wants to introduce or update automation for repository management or CI/CD using GitHub Actions.  
**Command:** `/add-workflow`

1. Create a new YAML file in the `.github/workflows` directory.
2. Define the workflow's triggers, jobs, and steps within the YAML file.
3. Commit the new workflow file to the repository.

**Example:**
```yaml
# .github/workflows/lint.yml
name: Lint Codebase
on: [push, pull_request]
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Install dependencies
        run: npm install
      - name: Run linter
        run: npm run lint
```

## Testing Patterns

- Test files follow the pattern: `*.test.*`
  - Example: `userProfile.test.ts`
- The testing framework is **unknown** from analysis, but tests are co-located with source files or in dedicated test files.
- To add a test:
  1. Create a file named `moduleName.test.ts`.
  2. Write test cases for the corresponding module.

**Example:**
```typescript
// userProfile.test.ts
import { getUserProfile } from './userProfile';

test('should fetch user profile', () => {
  const profile = getUserProfile('user123');
  expect(profile.id).toBe('user123');
});
```

## Commands

| Command        | Purpose                                                |
|----------------|--------------------------------------------------------|
| /add-workflow  | Add or update a GitHub Actions workflow for automation |
```
