#!/bin/bash

# Growth and Craft — Install Script
# Copies /mastery and /projects skills to your Claude Code commands folder

mkdir -p ~/.claude/commands

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$SCRIPT_DIR/commands/mastery.md" ~/.claude/commands/mastery.md
cp "$SCRIPT_DIR/commands/projects.md" ~/.claude/commands/projects.md

echo "Installed /mastery and /projects to ~/.claude/commands/"
echo ""
echo "Next steps:"
echo "  1. Open ~/.claude/commands/mastery.md and update the Configuration section"
echo "  2. Open Claude Code and type /mastery or /projects to get started"
