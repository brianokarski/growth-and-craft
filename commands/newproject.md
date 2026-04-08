# New Project Setup

You are helping Brian set up a new project. This creates everything a new Claude session needs to pick up context on the project.

## Step 1: Gather project details

Ask Brian for the following (one at a time, skip what he's already told you):

1. **Project name**
2. **What is it?** (one sentence)
3. **Your role** — leading, co-leading, contributing, consulting?
4. **Team** — who's on it? (names and roles)
5. **Director / PM / Stakeholders**
6. **Any brief or reference files to drop in?**
7. **Key dates or deadlines you know about**

If Brian has already shared some of this in conversation, don't re-ask. Use what you have.

## Step 2: Create the Obsidian project file

Write a new file to `/Users/brianokarski/Documents/Obsidian/Projects/[Project Name].md` using the standard format:

```markdown
# [Project Name]
**Status:** Active
**Lead:** [Name]
**Team:** [Names and roles]
**Director:** [Name]
**PM:** [Name]
**Stakeholders:** [Names]

---

#### Context:
- [Brief description]

#### Key links:

#### Notes:

#### Decisions:

#### Timeline:
- YYYY-MM-DD | type | description
```

## Step 3: Create the project working folder

Create the directory at `/Users/brianokarski/Documents/Agentic Projects/Projects/[Project Name]/`

If Brian has a brief PDF or reference files, tell him to drop them in this folder.

## Step 4: Create the CLAUDE.md

Write a `CLAUDE.md` inside the project folder that gives any new Claude session full context:

```markdown
# [Project Name]

## Overview
[One paragraph: what is this project, what's the goal, what phase is it in]

## Role
[Brian's role: leading, co-leading, etc. If leading, reference the lead responsibilities.]

## Team
- [Name] — [Role]
- [Name] — [Role]

## Key files
- **Obsidian project notes:** ~/Documents/Obsidian/Projects/[Project Name].md (timeline, notes, decisions, action items)
- **Action items:** ~/Documents/Obsidian/Action Items/This Week.md
- **Brief:** [filename if in this folder]
- **Figma:** [link if known]

## Current phase
[What's happening right now, what's the next milestone]

## Context for this session
When working on this project:
- Update the Obsidian project file with any new notes, decisions, or timeline entries
- Use the format `- YYYY-MM-DD | type | description` for timeline entries (types: milestone, review, deadline, handoff, sync, checkin)
- If Brian is leading, check on his lead responsibilities: Figma hygiene, Friday updates, review prep, stakeholder comms
- Read the Obsidian project file at the start of each session for the latest state
```

## Step 5: Confirm

Tell Brian what was created:
- Obsidian project file at `~/Documents/Obsidian/Projects/[name].md`
- Working folder at `~/Documents/Agentic Projects/Projects/[name]/`
- `CLAUDE.md` in the working folder

Remind him: "Start Claude from that folder when working on this project and it'll have full context."

## If Brian is leading

If Brian says he's leading or co-leading, also:
- Reference the Project Lead role doc at `/Users/brianokarski/Documents/Obsidian/Project Lead - Role & Responsibilities.md`
- Add a kickoff checklist to the CLAUDE.md:
  - [ ] Project Figma set up with template
  - [ ] Brief reviewed and questions clarified
  - [ ] Working cadence established with team
  - [ ] Design ops engaged
  - [ ] Steph/Alex reviews booked
  - [ ] Friday update cadence started
- Add lead accountability to the "Context for this session" section

## Important
- Don't create files Brian hasn't approved
- Ask before creating if anything is unclear
- Use what Brian already told you in the conversation — don't re-ask
