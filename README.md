# Growth and Craft

- Two Claude Code skills. Two prompts per week.
- **Monday `/mastery`**: check in on personal growth, get 3 focus areas for the week
- **Friday `/projects`**: reflect on what you worked on, generate a short human post
- Both skills feed each other. Friday's reflections inform Monday's suggestions.
- Pulls from Slack, Fellow, and Obsidian. Works without them too.
- Saves to Obsidian. Copy to Vault or wherever you post.

---

Inspired by Eric Hu's [claude-skills-weekly](https://github.com/er1chu/claude-skills-weekly) and my own habit tracking and bullet journaling practice, I wanted to build something tailored to how I personally work. These skills walk you through a conversation and help you articulate what you're working on, learning, and feeling.

## `/mastery` — Personal Growth Report

**When:** Monday morning

**What it does:**

A 5-10 minute check-in about your personal development. It pulls context from:
- Your recent 1:1 notes (Fellow)
- Slack conversations with your manager (callm-for-slack)
- Your growth goals (Obsidian)
- Your previous mastery entries and project reflections

Then it walks you through:
- How are your growth areas going?
- What action items are open from your 1:1s?
- What did your manager ask you to work on?
- How's your energy and morale?
- Any wins?

**What you get:**

A dated markdown report saved to your Obsidian vault with two key things at the top:

**"Top of Mind" scoreboard** — tracks your biggest growth levers over time:
- Themes that keep coming up stay at the top (e.g., "running projects end to end")
- Things that get resolved drop off
- Ranked by how often they appear and how much impact they'd have

**3 weekly focus suggestions** — generated from both your mastery entries and your Friday project reflections:
- `/projects` captures what you're actually doing and learning
- `/mastery` reads that back to suggest where to put your energy this week

It helps you see:
- Which growth areas are getting the most heat
- Where you're stretching into new skills or responsibilities
- Where there's an opportunity to make a move

**Why it matters:**
- Keeps growth goals front of brain when you're heads down on projects
- Carries forward action items you haven't finished
- Gives you a clear "focus on these 3 things" to start each week
- Great for prepping 1:1s, performance reviews, or just checking in with yourself

## `/projects` — Weekly Work Report

**When:** Friday afternoon

**What it does:**

A casual debrief about your week. It asks:
- What projects you worked on
- What happened with each one (not just what you shipped, but what you noticed or learned)
- What inspired you this week (links, references, things you saw)
- What you're reflecting on
- What you're looking forward to next week

It also pulls context from Slack and Fellow meetings to jog your memory.

**What you get:**
- A short, reflective post written in your voice
- Prose, not bullet points
- Tuned to avoid AI writing cliches (no em dashes, no "I found myself...", no corporate speak)
- The kind of thing you'd actually want to read on someone's internal page

**Why it matters:**
- Forces you to reflect on what you're learning, not just what you're shipping
- Human and specific enough that people across the org might actually follow along
- Feeds back into Monday's `/mastery` to surface growth patterns

## Setup

### 1. Install

```bash
git clone https://github.com/brianokarski/growth-and-craft.git
cd growth-and-craft
./install.sh
```

That's it. Both skills are now available as `/mastery` and `/projects` in Claude Code.

### 2. Connect your tools (optional but recommended)

These skills pull context from your work tools so you don't have to remember everything yourself. Set these up before your first run so the skills have something to work with.

| Server | What it gives you | How to add it |
|--------|-------------------|---------------|
| **callm-for-slack** | Slack conversations with your manager, discussion summaries, decision tracking | `claude mcp add --scope user callm-for-slack` |
| **obsidian** | Reads/writes growth reports to your local vault | `claude mcp add --scope user obsidian` (see your org's setup) |
| **fellow-mcp** | 1:1 meeting notes, action items, summaries | Not yet supported in Claude Code (Fellow uses `streamable-http` transport) |

None are required. If a server isn't connected, the skill skips it and just asks you directly. Works fine with zero MCP servers, you'll just be working from memory.

**Why Obsidian?** Mastery saves your growth reports as dated markdown files in an Obsidian vault. Obsidian is free, local-first, and your notes never leave your machine. Over time you build a personal archive of your growth that's searchable, linkable, and entirely yours. If you don't have it yet, grab it at [obsidian.md](https://obsidian.md). You can also skip Obsidian and just use the copy-paste output.

### 3. Run `/mastery` for the first time

The first time you run it, it will ask you:
- Your manager's name
- Their Slack handle
- Where your Obsidian vault lives

No config files to edit. Just answer the questions in the chat.

### 4. Set up reminders (optional)

Slack reminders so you don't forget:

```
/remind me "Run /mastery in Claude Code" every Monday at 9am
/remind me "Fill out 1:1 notes in Fellow" every Thursday at 4pm
/remind me "Run /projects in Claude Code" every Friday at 4pm
```

## Usage

Open Claude Code (CLI or VS Code) and type:

```
/mastery     # Monday morning growth check-in
/projects    # Friday afternoon work report
```

## How it works

Both skills follow the same pattern:

1. **Pull context** from your tools (Slack, Fellow, Obsidian) if connected
2. **Ask you questions** one at a time, like a conversation
3. **Generate a report** based on your answers + whatever context it found
4. **Review loop** where you can tweak the output until it feels right

The key thing: these help you articulate what you think about what happened. That's the part most people skip, and it's the part that matters most.

## Customization

These skills are just markdown files. Edit them however you want:

- Change the questions it asks
- Adjust the report template
- Add or remove MCP integrations
- Tune the voice and tone rules
- Change where reports get saved

## Requirements

- Claude Code CLI or VS Code extension
- Optional: callm-for-slack, obsidian, fellow-mcp servers configured
