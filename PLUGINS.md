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
