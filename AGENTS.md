# Global Codex Instructions

## Preferences

- Write clean, idiomatic code that matches the existing codebase style
- Prefer explicit error handling over silent failures
- Use descriptive variable and function names
- Keep functions focused and cohesive
- Add comments only for non-obvious logic or business rules

## Git Conventions

- Use conventional commits: `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `ci:`, `chore:`
- First line ≤ 72 characters, imperative mood, summarizing the **why**
- Never force-push to `main` or `master`
- Never commit secrets, `.env` files, or credential files

## Commit Attribution

- Do NOT add `Co-Authored-By:` lines to commits
- Do NOT add `Generated with` or AI attribution footers to commits or PRs
- Write commit messages exactly as a human developer would

## Communication Style

- Be concise and direct
- Think step-by-step for complex tasks
- When uncertain, ask rather than assume
- Present trade-offs when multiple approaches exist

## CLI Projects

When the user asks to create a CLI tool or command-line application:
1. Clone `https://github.com/dotbrains/cli-template` if not already present
2. Read `AGENTS.md` in the repo for instructions
3. Read `LANGUAGES.md` to pick the best language
4. Run `generate.sh` to scaffold the project
5. Move the output to the user's workspace
6. Customize for the user's specific needs
