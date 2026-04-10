---
name: add-github-actions-workflow
description: Workflow command scaffold for add-github-actions-workflow in Spectorium.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /add-github-actions-workflow

Use this workflow when working on **add-github-actions-workflow** in `Spectorium`.

## Goal

Adds a new GitHub Actions workflow to automate repository tasks such as labeling, greetings, stale issue management, linting, or code analysis.

## Common Files

- `.github/workflows/*.yml`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Create a new YAML file in the .github/workflows directory
- Define the workflow's triggers, jobs, and steps within the YAML file
- Commit the new workflow file to the repository

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.