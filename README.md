# codex

[![License: PolyForm Shield 1.0.0](https://img.shields.io/badge/License-PolyForm%20Shield%201.0.0-blue.svg)](https://polyformproject.org/licenses/shield/1.0.0/)

This repository contains my sensible defaults for [Codex CLI](https://developers.openai.com/codex).

## Upstream Project

- https://github.com/openai/codex

## Install Codex CLI

```bash
npm install -g @openai/codex
```

Or with Homebrew:

```bash
brew install openai/tap/codex
```

## Contents

- `AGENTS.md` — Global instructions (read every session)
- `config.toml` — Global settings (model, approval mode, MCP servers)
- `agents/` — Custom agent definitions (TOML, assembled from shared + frontmatter)
- `skills/` — Skill definitions (SKILL.md format, assembled from shared + frontmatter)
- `rules/` — Custom rule files
- `shared/` — Shared AI config submodule ([dotbrains/shared-ai-config](https://github.com/dotbrains/shared-ai-config))
- `frontmatter/` — Codex-specific TOML frontmatter for agents
- `PLUGINS.md` — External MCP servers and plugins ([details](PLUGINS.md))
- `RULES.md` — Rule definitions and usage ([details](RULES.md))

### Agents

| Agent | Purpose |
|---|---|
| `tech-lead` | Orchestrates complex workflows across specialist agents |
| `architect-designer` | High-level design, pattern selection, structural planning |
| `implementation-specialist` | Precise, scoped coding tasks with zero architectural drift |
| `requirements-clarifier` | Transforms vague requirements into actionable specifications |
| `test-automation-engineer` | Comprehensive test coverage, execution, and failure diagnosis |
| `task-decomposer` | Breaks overwhelming complexity into sequential action items |

### Skills

| Skill | Purpose |
|---|---|
| `ship` | Commit, push, and open a PR |

## Install This Config

The contents of this repository should be placed in your `$HOME`.

```bash
git clone --recursive https://github.com/dotbrains/codex.git $HOME/.codex
```

### Install Plugins

After cloning, run the plugin installation script:

```bash
./install-plugins.sh
```

This installs:
- `superpowers` - Complete software development workflow (via submodule)
- `get-shit-done` - GSD workflow system (via npx)
- `@dotbrains/linear-cli` - Fallback CLI for Linear
- `@dotbrains/notion-cli` - Fallback CLI for Notion

## Shared Agent Definitions

Agent and skill body content is shared with [Claude Code](https://github.com/dotbrains/claude) and [OpenCode](https://github.com/dotbrains/opencode) via the [shared-ai-config](https://github.com/dotbrains/shared-ai-config) submodule. To update after shared content changes:

```bash
git submodule update --remote shared
./shared/assemble.sh codex
```

## License

This project is licensed under the [PolyForm Shield License 1.0.0](https://polyformproject.org/licenses/shield/1.0.0/) -- see [LICENSE](LICENSE) for details.

## Fallback Rules (Notion + Linear)

If your workspace blocks MCP OAuth flows, this config includes sandbox rules that allow the local CLI tools to run without prompting:

- `rules/default.rules` — allows `linear` and `notion` CLI commands (powered by `@dotbrains/linear-cli` and `@dotbrains/notion-cli`)

Setup and usage instructions are documented in `PLUGINS.md` under:

- **Linear - Fallback: linear-cli (when MCP auth is blocked)**
- **Notion - Fallback: notion-cli (when MCP auth is blocked)**
