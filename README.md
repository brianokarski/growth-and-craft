# Growth and Craft

Five Claude Code skills for staying on top of your work, your growth, and your people.

```
/mastery      Monday morning growth check-in
/projects     Friday afternoon work report
/peers        Peer feedback check-in
/leading      Project leadership check-in
/newproject   Set up a new project
```

All five are connected through [Obsidian](https://obsidian.md). Notes build on each other over time. Optionally pulls context from Slack, meeting notes, and your calendar so you don't have to remember everything yourself.

---

Inspired by Eric Hu's [claude-skills-weekly](https://github.com/er1chu/claude-skills-weekly) and my own habit tracking and bullet journaling practice. I wanted something tailored to how I actually work — skills that walk me through a conversation and help me articulate what I'm working on, leading, learning, and feeling.

## The skills

### `/mastery` — Personal Growth Check-in

**When:** Monday morning (5-10 minutes)

A conversational check-in about your personal development. It pulls context from your previous entries, project reflections, 1:1 notes, and growth goals, then walks you through:

- How your growth areas are going
- Open action items from your 1:1s
- What your manager asked you to work on
- Energy and morale
- Wins

**What you get:**

A dated markdown report saved to your Obsidian vault with:

- **"Top of Mind" scoreboard** — tracks your biggest growth themes over time. Things that keep coming up stay at the top. Things that get resolved drop off.
- **3 weekly focus suggestions** — generated from patterns across your mastery entries and project reflections.
- **Action items** — carried forward from previous weeks, updated with new ones.

At review time, `/mastery` can pull from your accumulated entries to help you draft self-review answers. The weekly check-ins are the raw material — the review is the synthesis.

### `/projects` — Weekly Work Report

**When:** Friday afternoon

A casual debrief about your week. Not a status update — a reflective post that people actually want to read. It asks about your projects, what inspired you, what you're chewing on, and what you're looking forward to.

It pulls context from your meetings and Slack to jog your memory, then generates a short post in your voice — tuned to avoid AI writing cliches.

**What you get:**

A weekly reflection saved to your Obsidian vault, plus a clean copy you can paste to your team page or blog. Friday's reflections feed into Monday's `/mastery` to surface growth patterns.

### `/peers` — Peer Feedback Check-in

**When:** Anytime, especially before reviews or 1:1s with your manager

A quick pass on the people you work with. It reads your existing peer notes, then asks about each person (or just the ones you want to focus on):

- How's it going working with them?
- Any feedback to give or that you've received?
- Want to give them that feedback directly, or just note it for yourself?

**What you get:**

Updated peer files in your Obsidian vault with dated notes. A running log you can pull from when review season comes around. Feedback is easier to give when you've been writing it down all along.

### `/leading` — Project Leadership Check-in

**When:** Anytime you're leading a project

Reads your project lead role doc and your active projects, then walks through what you should be doing as a lead based on each project's current phase (kickoff, exploration, build, post-launch).

When you start leading a new project, it runs through a kickoff checklist: Figma setup, brief clarity, team cadence, reviews booked, comms started. Ongoing, it checks on Figma hygiene, Friday updates, scope creep, and stakeholder alignment.

**What you get:**

A project-specific checklist of what you need to do as lead this week. Leadership coaching, not micromanagement.

### `/newproject` — New Project Setup

**When:** Starting a new project

Asks you the details (name, role, team, brief, dates) and creates:

- An **Obsidian project file** with the standard template (context, notes, decisions, timeline)
- A **project working folder** with reference files
- A **CLAUDE.md** in the working folder so any new Claude session started there has full context

If you're leading the project, it includes the kickoff checklist and lead responsibilities.

## How they connect

All five skills read and write to your Obsidian vault. Over time, the notes compound:

- `/projects` captures what you're working on and learning each week
- `/mastery` reads your project reflections to suggest growth focus areas
- `/peers` tracks the people side of your work
- `/leading` keeps your project lead responsibilities in check
- `/newproject` sets up new projects so every skill can find them

| Skill | Reads from | Writes to |
|-------|-----------|-----------|
| `/mastery` | Previous entries, project reflections, growth goals, 1:1 notes | Dated report in vault |
| `/projects` | Project files, meetings, Slack | Weekly reflection in vault |
| `/peers` | Peer files (one per person) | Appends dated notes to each file |
| `/leading` | Project files, role doc | Action items |
| `/newproject` | — | Project file, working folder, CLAUDE.md |

## Setup

### 1. Install

```bash
git clone https://github.com/brianokarski/growth-and-craft.git
cd growth-and-craft
./install.sh
```

All five skills are now available in Claude Code.

### 2. Connect your tools (optional)

These skills pull context from your work tools so you don't have to remember everything yourself. None are required — if a tool isn't connected, the skill just asks you directly.

| Tool | What it gives you | How to add it |
|------|-------------------|---------------|
| **Obsidian** | Reads/writes reports and notes to your local vault | [obsidian-mcp](https://github.com/shop/obsidian-mcp) |
| **Slack** | Conversations with your manager, discussion summaries | [callm-for-slack](https://github.com/Shopify/callm) or any Slack MCP |
| **Fellow** | 1:1 meeting notes, action items, summaries | `claude mcp add --scope user -t http fellow-mcp https://fellow.app/mcp` |
| **Google Calendar** | Meeting schedule, availability | [gworkspace-mcp](https://github.com/nicholasgriffintn/gworkspace-mcp) or similar |

### 3. Set up Obsidian (recommended)

These skills save everything as dated markdown files in an Obsidian vault. [Obsidian](https://obsidian.md) is free, local-first, and your notes never leave your machine. Over time you build a personal archive that's searchable, linkable, and entirely yours.

Create these folders in your vault:

```
Your Vault/
├── Mastery/           # Growth reports from /mastery
├── Project Tracking/  # Weekly reflections from /projects
├── Projects/          # Living project files
├── Peers/             # One file per person from /peers
└── Action Items/      # This Week.md + archived weeks
```

You can also skip Obsidian entirely and just use the copy-paste output.

### 4. First run

The first time you run `/mastery`, it will ask you:
- Your manager's name
- Their Slack handle
- Where your Obsidian vault lives

No config files to edit. Just answer the questions in the chat.

### 5. Set up reminders (optional)

```
/remind me "Run /mastery" every Monday at 9am
/remind me "Run /projects" every Friday at 4pm
```

## How it works

All five skills follow the same pattern:

1. **Pull context** from your tools (Slack, meetings, Obsidian) if connected
2. **Ask you questions** one at a time, like a conversation
3. **Generate output** based on your answers + whatever context it found
4. **Review loop** where you can tweak the output until it feels right
5. **Save** to your Obsidian vault and update project files

The key thing: these help you articulate what you think about what happened. That's the part most people skip, and it's the part that matters most.

## Customization

These skills are just markdown files in `~/.claude/commands/`. Edit them however you want:

- Change the questions
- Adjust the report templates
- Swap in different MCP integrations
- Tune the voice and tone
- Change where reports get saved
- Add your own review questions for review season

## Timeline format

Project files use a structured timeline format that can be read by other tools (dashboards, Gantt charts, etc.):

```markdown
#### Timeline:
- YYYY-MM-DD | type | description
```

Types: `milestone`, `review`, `deadline`, `handoff`, `sync`, `checkin`

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) (CLI, VS Code, or desktop app)
- Optional: Obsidian, Slack MCP, meeting notes MCP, calendar MCP
