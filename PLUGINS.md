# Plugins

## Linear

**Type:** Remote MCP (OAuth)

Linear's official MCP server for issue tracking, project management, and team workflows.

- **URL:** `https://mcp.linear.app/mcp`
- **Auth:** Run `codex mcp login linear` to complete the browser-based OAuth flow

### Verify

```bash
codex mcp list
```

### Fallback: linear-cli (when MCP auth is blocked)

If your workspace blocks Linear MCP authentication or installation, you can still use Linear in Codex through the `linear` CLI tool. A sandbox rule in `rules/default.rules` allows it to run without prompting.

#### 1) Install linear-cli

```bash
npm config set @dotbrains:registry https://npm.pkg.github.com
npm config set //npm.pkg.github.com/:_authToken $(gh auth token)
npm install -g @dotbrains/linear-cli
```

#### 2) Configure credentials

```bash
linear init
```

This creates `~/.config/linear/config.json` with your Linear API key.

#### 3) Use in conversation

Ask Codex to run `linear` commands directly:

```text
Search Linear for auth-related bugs
```

```text
Fetch Linear issue ENG-123 and summarize it
```

## Notion

**Type:** Remote MCP (OAuth)

Notion's official hosted MCP server for reading and writing workspace content.

- **URL:** `https://mcp.notion.com/mcp`
- **Auth:** Run `codex mcp login notion` to complete the browser-based OAuth flow

### Verify

```bash
codex mcp list
```

### Fallback: notion-cli (when MCP auth is blocked)

If your workspace blocks Notion MCP installation (for example, approved-connections restrictions), you can still use Notion in Codex through the `notion` CLI tool. A sandbox rule in `rules/default.rules` allows it to run without prompting.

#### 1) Install notion-cli

```bash
npm config set @dotbrains:registry https://npm.pkg.github.com
npm config set //npm.pkg.github.com/:_authToken $(gh auth token)
npm install -g @dotbrains/notion-cli
```

#### 2) Configure credentials

```bash
notion init
```

This creates `~/.config/notion/config.json` with your Notion credentials.

#### 3) Use in conversation

Ask Codex to run `notion` commands directly:

```text
Search Notion for onboarding checklist
```

```text
Fetch Notion page 01234567-89ab-cdef-0123-456789abcdef and summarize it
```

## context-mode

[context-mode](https://github.com/mksglu/context-mode) protects your context window by routing large outputs through an indexed sandbox.

### Prerequisites

- Node.js 18+
- Codex CLI

### Install

The `config.toml` in this repo already registers context-mode as an MCP server (via `npx`), so the tools are available out of the box.

## Superpowers

**Repository:** [obra/superpowers](https://github.com/obra/superpowers)

Superpowers is a complete software development workflow for AI coding agents. It provides a composable set of "skills" that trigger automatically based on context.

### Core Workflow

1. **brainstorming** - Activates before writing code. Refines ideas through questions, presents design in chunks.
2. **writing-plans** - Breaks work into bite-sized tasks with exact file paths and verification steps.
3. **subagent-driven-development** - Dispatches subagents per task with two-stage review.
4. **test-driven-development** - Enforces RED-GREEN-REFACTOR cycle.
5. **requesting-code-review** - Reviews against plan, reports issues by severity.

### Skills Library

- `brainstorming` - Socratic design refinement
- `writing-plans` - Detailed implementation plans
- `subagent-driven-development` - Fast iteration with review
- `test-driven-development` - RED-GREEN-REFACTOR cycle
- `systematic-debugging` - 4-phase root cause process
- And more...

### Installation

Superpowers skills are included via the `agents/skills/superpowers` symlink pointing to the `superpowers/` submodule.

Restart Codex to discover the skills.

### Usage

```
use skill superpowers/brainstorming
```

Verify by asking: "Tell me about your superpowers"

## Get Shit Done (GSD)

**Repository:** [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done)

A meta-prompting, context engineering, and spec-driven development system that solves context rot — the quality degradation that happens as AI fills its context window.

### Core Workflow

1. **`$gsd-new-project`** - Full initialization: questions → research → requirements → roadmap
2. **`$gsd-discuss-phase [N]`** - Capture implementation decisions before planning
3. **`$gsd-plan-phase [N]`** - Research + plan + verify for a phase
4. **`$gsd-execute-phase [N]`** - Execute all plans in parallel waves
5. **`$gsd-verify-work [N]`** - Manual user acceptance testing
6. **`$gsd-ship [N]`** - Create PR from verified phase work

### Key Commands

| Command | Description |
|---------|-------------|
| `$gsd-new-project` | Initialize new project with full workflow |
| `$gsd-quick` | Fast ad-hoc task execution |
| `$gsd-map-codebase` | Analyze existing codebase |
| `$gsd-discuss-phase` | Capture implementation decisions |
| `$gsd-plan-phase` | Research and plan phase |
| `$gsd-execute-phase` | Execute plans in waves |
| `$gsd-verify-work` | User acceptance testing |
| `$gsd-ship` | Create PR from verified work |
| `$gsd-progress` | Where am I? What's next? |
| `$gsd-help` | Show all commands |

### Installation

GSD skills are included in `skills/`. They were installed via:

```bash
npx get-shit-done-cc@latest --codex --global
```

### Usage

```
$gsd-help
```
