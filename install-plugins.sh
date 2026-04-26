#!/bin/bash
set -e

# Install plugins for Codex CLI configuration

echo "Installing Codex plugins..."

# Check for npm
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed"
    exit 1
fi

# context-mode - MCP server (via npx, no install needed)
echo "context-mode is configured via npx in config.toml (no install needed)"

# superpowers - Complete software development workflow
# Already included as submodule in superpowers/
echo "superpowers is included as a submodule (superpowers/)"

# get-shit-done - GSD workflow system
echo "Installing get-shit-done..."
npx get-shit-done-cc@latest --codex --global

echo ""
echo "Done! Restart Codex to load the plugins."
echo ""
echo "Verify with:"
echo "  codex mcp list"
