# Rules

This document lists the persistent instructions loaded by Codex CLI on every session.

## How It Works

Codex reads `~/.codex/AGENTS.md` at session start as global instructions. Per-repo rules go in `AGENTS.md` within the repository root. Nested `AGENTS.md` files in subdirectories provide directory-specific guidance.

The layering order is: personal `AGENTS.md` → repo `AGENTS.md` → nested `AGENTS.md`.

## Active Rules

### Commit Attribution

Added to `AGENTS.md`:

- Do NOT add `Co-Authored-By:` lines to commits
- Do NOT add `Generated with` or AI attribution footers to commits or PRs
- Write commit messages exactly as a human developer would

**Why:** Codex may append AI attribution to commits by default. This explicit rule overrides that behavior.

### Git Conventions

Enforced in `AGENTS.md`:
- Conventional commits (`feat:`, `fix:`, `docs:`, etc.)
- First line ≤ 72 characters, imperative mood
- Never force-push to `main`/`master`
- Never commit secrets or `.env` files

## Adding New Rules

1. For personal cross-project rules, add them to `AGENTS.md` under a descriptive heading
2. For repo-specific rules, create an `AGENTS.md` in the repository root

Personal rules define how you work. Repo rules define how the codebase works. Keep them separate to avoid duplication.
