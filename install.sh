#!/bin/bash

# Growth and Craft — Install Script
# Copies all skills to your Claude Code commands folder

mkdir -p ~/.claude/commands

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$SCRIPT_DIR/commands/mastery.md" ~/.claude/commands/mastery.md
cp "$SCRIPT_DIR/commands/projects.md" ~/.claude/commands/projects.md
cp "$SCRIPT_DIR/commands/peers.md" ~/.claude/commands/peers.md
cp "$SCRIPT_DIR/commands/leading.md" ~/.claude/commands/leading.md
cp "$SCRIPT_DIR/commands/newproject.md" ~/.claude/commands/newproject.md

echo "Installed 5 skills to ~/.claude/commands/"
echo ""
echo "  /mastery      Monday morning growth check-in"
echo "  /projects     Friday afternoon work report"
echo "  /peers        Peer feedback check-in"
echo "  /leading      Project leadership check-in"
echo "  /newproject   Set up a new project"
echo ""
echo "Open Claude Code and type any of these to get started."
