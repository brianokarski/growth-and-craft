# Growth and Craft

Nine Claude Code skills for staying sharp at work. They turn the things you'd normally forget — feedback, scope creep, peer dynamics, weekly progress — into a habit. Notes compound in your Obsidian vault over time.

## At a glance

| When | Skill | What it does |
|---|---|---|
| Monday morning | `/weekprep` | Calendar, action items, top priorities, coach thought |
| Bi-weekly before 1:1 | `/mastery` | Personal growth report, pulls Fellow + Slack + Obsidian |
| End of week | `/projectupdate` | Weekly project update post for the project channel |
| End of week | `/projects` | Reflective weekly post in your voice |
| After any review | `/review` | Routes Gemini transcript feedback to the right project files |
| New project ask | `/newproject` | Forces role + scope intake before kickoff |
| New ask, mid-flight | `/scope` | 7-question scope check — role, bandwidth, tripwire, flag sentence |
| Anytime | `/leading` | Project lead checklist by phase |
| Anytime | `/peers` | Capture peer feedback and observations |

All nine connect through your Obsidian vault. Notes from each skill feed into the next.

---

Inspired by Eric Hu's [claude-skills-weekly](https://github.com/er1chu/claude-skills-weekly) and my own habit-tracking and bullet-journaling practice. These skills walk you through a conversation and help you articulate what you're working on, leading, learning, and feeling.

## The skills

### `/weekprep` — Monday morning briefing

**When:** Monday 8:30am (Slack reminder)

Reads your calendar, action items, project files, manager DMs, and recent Gemini transcripts, then gives you a single scannable briefing: what's on the calendar, top 3 priorities, open action items, anything that needs a response, and one coach thought.

### `/mastery` — Personal growth report

**When:** Before your 1:1 with your manager (bi-weekly works well)

A 5–10 minute check-in about your personal development. Pulls context from:
- Recent 1:1 notes (Fellow)
- Slack conversations with your manager
- Growth goals (Obsidian)
- Previous mastery entries and project reflections

Walks you through:
- Are your growth areas progressing?
- What action items are open from your 1:1s?
- What did your manager ask you to work on?
- How's your energy and morale?
- Any wins?

**Output:** A dated markdown report saved to your vault with a "Top of Mind" scoreboard (themes that keep coming up rise to the top, resolved ones drop off) and 3 weekly focus suggestions. Plus a Slack-ready briefing snippet you can copy into your own DM.

### `/projects` — Friday weekly reflection

**When:** End of week, when you actually want to reflect

Reads your project files and pulls Fellow + Slack context, then walks you through inspiration, project-by-project reflection, what's on your mind, and what's next. Output is a short post written in your voice — prose, not bullets, tuned to avoid AI writing tropes (no em dashes, no "I found myself...", no corporate filler).

### `/projectupdate` — Weekly project update post

**When:** Thursday/Friday afternoon, for projects you're leading

Pre-fills from your project file and action items, then asks: what shipped, what's next, any flags, when's the next director review. Outputs a Slack-ready code block in this format:

```
:boom: *Weekly Update (week of April 21, 2026)*

:white_check_mark: *This week:*
• [What got done]

:arrow_right: *Next week:*
• [What's next]

:warning: *Flags:*
• [OOO, blockers, dependencies]

:eyes: *Next director review:*
• [Date + framing]
```

Hard rule: never includes personal/internal info (peer performance, capacity concerns, internal politics). Project channels are public.

### `/review` — Process review feedback

**When:** Right after any review (director, manager 1:1, office hours, project sync)

Finds the Gemini transcript in Drive, extracts decisions, feedback, action items, and open questions, then shows you a routing plan: this goes to project A, this to project B, these action items to This Week.md, this peer feedback to your peer notes. Confirm and it writes everything.

The point: zero feedback lost between the meeting and the work.

### `/newproject` — New project setup

**When:** Kicking off any new project

Forces a role + scope intake first ("Are you owning, co-leading, consulting, or contributing?" + bandwidth, tripwires, flag-language drafting), then creates:
- Obsidian project file with status, role, scope, tripwires, timeline
- Working folder
- `CLAUDE.md` so future Claude sessions have full context

If you're leading, also adds a kickoff checklist (workback, working file, brief reviewed, cadence, ops engaged, reviews booked).

### `/scope` — Mid-flight scope check

**When:** New ask comes in, scope is growing, you catch yourself saying "I'll figure it out"

Lightweight sibling of `/newproject`. 7 questions: what's the ask, what role, does the asker agree, timeline, bandwidth, tripwire, flag sentence, who needs to know.

Auto-suggested when you say absorb-pattern phrases ("joining", "helping on", "I'll figure it out", "just a few hours") — meant to catch you before you commit to something you'll regret in three weeks.

### `/leading` — Project lead checklist

**When:** Anytime you want to make sure you're covering your bases as a lead

Reads your role doc and active projects, walks through phase-specific lead responsibilities (briefing → exploration → build → post-launch), and flags scope creep, stakeholder issues, comms gaps. Generates a project-specific checklist for the week.

Also runs in the background of any conversation — if you mention a project you're leading, it'll proactively check on file hygiene, weekly updates, scope creep.

### `/peers` — Peer feedback notes

**When:** Anytime, especially before reviews

Reads your peer files and asks about the people you work with, one at a time. Captures observations, feedback to give, feedback received, in dated notes that compound over time. When review season hits, pull from this instead of trying to remember six months of work.

## How they connect

All skills read and write to your Obsidian vault. Notes compound:

| Skill | Reads | Writes |
|-------|-------|--------|
| `/weekprep` | Calendar, action items, projects, Slack DMs, Drive transcripts, growth memory | — (briefing only) |
| `/mastery` | Previous mastery entries, project reflections, growth goals, Fellow, Slack | Dated mastery report, fresh `This Week.md` |
| `/projects` | Project files, action items, Fellow, Slack | Dated weekly reflection, appends to project files |
| `/projectupdate` | Project files, action items, Slack history, Drive transcripts | Timeline entry on the project file |
| `/review` | Gemini transcripts, project files | Project files, `This Week.md`, peer files |
| `/newproject` | — | New project file, working folder, `CLAUDE.md` |
| `/scope` | — | Optionally appends to project file |
| `/leading` | Role doc, project files | Action items in `This Week.md` |
| `/peers` | `Peers/*.md` | Appends dated notes per person |

## Setup

### 1. Install

```bash
git clone https://github.com/brianokarski/growth-and-craft.git
cd growth-and-craft
./install.sh
```

All nine skills are now available in `~/.claude/commands/`.

### 2. Connect your tools (optional but recommended)

These skills pull context from your work tools so you don't have to remember everything yourself.

| Tool | What it gives you | How to add it |
|--------|-------------------|---------------|
| **Fellow** | 1:1 notes, AI summaries, action items, channels | Claude Code: `claude mcp add --scope user --transport http fellow-mcp https://fellow.app/mcp`. Or use [pi](https://github.com/badlogic/pi-mono) with a Fellow MCP extension. |
| **Slack** | Manager DMs, channel activity, decision tracking | Read-only Slack tools via Claude Code MCP or pi extensions. Skills assume tool names like `slack_search_users`, `slack_search_public_and_private`, `slack_read_channel` — adjust to your provider. |
| **Google Workspace** | Calendar, Drive (Gemini transcripts), Docs | Claude Code MCP or pi `gworkspace` extension. Skills assume `gcal_events`, `gws_drive_search`, `gws_docs_read` / `gworkspace_read_file`. |

None are required. If a tool isn't connected, the skill skips it and just asks you directly. Works fine with zero MCP servers — you'll just be working from memory.

**Why Obsidian?** These skills save everything as dated markdown files in an Obsidian vault. Obsidian is free, local-first, and your notes never leave your machine. Over time you build a personal archive of your growth, projects, peers, and leadership that's searchable, linkable, and entirely yours. If you don't have it yet, grab it at [obsidian.md](https://obsidian.md). You can also skip Obsidian and just use the copy-paste output.

### 3. First run

The first time you run a skill, it'll ask you for the basics: your manager's name, where your Obsidian vault lives, etc. No config files to edit.

### 4. Set up Slack reminders (optional)

Paste these into any Slack channel:

```
/remind me every Monday at 8:30am "🌅 Run /weekprep in Claude to get your weekly briefing"
```

```
/remind me every Thursday at 4pm "📣 Run /projectupdate in Claude to post your weekly project update"
```

```
/remind me every other Friday at 8:30am "🧭 Manager 1:1 prep — /mastery, fill out Fellow agenda, name what work is suffering not how busy you feel"
```

Anchor the bi-weekly Friday on a real 1:1 week so the cadence aligns.

## How a skill conversation works

All skills follow the same pattern:

1. **Pull context** from your tools (Slack, Fellow, Obsidian, Drive) if connected
2. **Ask you questions** one at a time, like a conversation
3. **Generate output** based on your answers + whatever context it found
4. **Review loop** where you can tweak the output until it feels right
5. **Save to Obsidian** so it compounds

The key thing: these help you articulate what you think about what happened. That's the part most people skip, and it's the part that matters most.

## Customization

These skills are just markdown files. Edit them however you want:

- Change the questions
- Adjust the report templates
- Add or remove integrations
- Tune the voice and tone rules
- Change where reports get saved
- Hard-code your own paths instead of `~/Documents/Obsidian/...`

If your Obsidian vault lives somewhere else, find-and-replace the paths.

## Requirements

- Claude Code CLI or VS Code extension (or [pi](https://github.com/badlogic/pi-mono))
- Optional: Fellow, Slack, Google Workspace tools configured
- Optional: Obsidian (or any markdown editor)
