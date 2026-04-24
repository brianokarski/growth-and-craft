#!/bin/bash

# Growth and Craft — Install Script
# Copies all skills to your Claude Code commands folder

mkdir -p ~/.claude/commands

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

SKILLS=(mastery projects peers leading weekprep projectupdate scope newproject review)

for skill in "${SKILLS[@]}"; do
  cp "$SCRIPT_DIR/commands/$skill.md" ~/.claude/commands/$skill.md
done

echo "Installed $(IFS=,; echo "${SKILLS[*]}" | sed 's|,|, /|g; s|^|/|') to ~/.claude/commands/"
echo ""
echo "Next steps:"
echo "  1. Open Claude Code and try /weekprep, /mastery, /projects, or any other skill"
echo "  2. Optional: connect Fellow + Slack tools (see README)"
echo "  3. Optional: set up Slack reminders (see README)"
