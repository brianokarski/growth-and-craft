# New Project Setup

You are helping the user set up a new project. This creates everything a new Claude session needs to pick up context on the project.

## Step 1: Role & Scope Intake (do this FIRST)

Before gathering project details, run the Role & Scope Intake. This is a forcing function — many ICs have a pattern of absorbing ambiguity instead of naming it, which compounds into capacity overload. Don't skip these questions, even if they feel redundant. Make the user answer each one explicitly.

Ask these in order, one at a time. Hold their answers for later steps.

**1. Role**
"What are you on this project — owning, co-leading, consulting, or contributing?"

If the answer is vague ("helping out," "supporting," "pitching in") — push back. Ask directly: "Is this a consult (reviewing/advising, time-capped) or are you producing deliverables? If producing, you're owning or co-leading — which?"

**2. If owning or co-leading:**
- "Is there a timeline/workback? If not, you're making one. When will you share it with the team?"
- "Who's the decision-maker? Who approves the final work? Who reviews along the way?"
- "What's the check-in cadence? Weekly? Per gate?"
- "What % bandwidth are you at on this? What's your descope list if this grows?"

**3. If consulting:**
- "How many hours per week, firm cap?"
- "What's the end date?"
- "What are you explicitly NOT responsible for? (Write this down — it's your boundary.)"

**4. Capacity tripwires**
- "What would 'quality is suffering' look like on this specifically? (e.g., skipping deep work blocks, missing review prep, not getting to real exploration.)"
- "What's your early warning sign?"
- "When you hit it, how will you frame the flag to your manager? Remember: impact language, not state. 'I'm losing X on Y because of this' — not 'I'm slammed.'"

**5. Expectation check**
- "Does your honest answer to 'is this a consult or am I doing it' match what the asker thinks? If not — resolve it before you start, not three weeks in."

After they've answered, summarize back what they committed to and confirm. This becomes the foundation of the CLAUDE.md and Obsidian file.

## Step 2: Gather project details

Ask the user for the following (one at a time, skip what they've already told you or covered in Step 1):

1. **Project name**
2. **What is it?** (one sentence)
3. **Team** — who's on it? (names and roles)
4. **Director / PM / Stakeholders**
5. **Any brief or reference files to drop in?**
6. **Key dates or deadlines you know about**

If the user has already shared some of this in conversation, don't re-ask. Use what you have.

## Step 3: Create the Obsidian project file

Write a new file to `~/Documents/Obsidian/Projects/[Project Name].md` using the standard format:

```markdown
# [Project Name]
**Status:** Active
**Role:** [Owning / Co-leading / Consulting / Contributing — from Step 1]
**Bandwidth:** [% or hours/week — from Step 1]
**Lead:** [Name]
**Team:** [Names and roles]
**Director:** [Name]
**PM:** [Name]
**Stakeholders:** [Names]

---

#### Context:
- [Brief description]

#### Scope (from intake):
- **Decision-maker:** [Name]
- **Reviewers:** [Names]
- **Check-in cadence:** [Weekly / per gate / etc.]
- **What I'm NOT responsible for:** [Explicit boundary]
- **Descope list if this grows:** [What gets cut first]

#### Capacity tripwires:
- **Early warning sign:** [What "quality suffering" looks like here]
- **Flag framing:** [Impact-language template the user committed to in Step 1]

#### Key links:

#### Notes:

#### Decisions:

#### Timeline:
- YYYY-MM-DD | type | description
```

## Step 4: Create the project working folder

Create the directory at `~/Documents/Agentic Projects/Projects/[Project Name]/` (or wherever the user keeps working folders).

If the user has a brief PDF or reference files, tell them to drop them in this folder.

## Step 5: Create the CLAUDE.md

Write a `CLAUDE.md` inside the project folder that gives any new Claude session full context:

```markdown
# [Project Name]

## Overview
[One paragraph: what is this project, what's the goal, what phase is it in]

## Role & Scope (from intake)
- **Role:** [Owning / Co-leading / Consulting / Contributing]
- **Bandwidth:** [% or hours/week]
- **Decision-maker:** [Name]
- **Reviewers:** [Names]
- **Check-in cadence:** [Frequency]
- **Not responsible for:** [Explicit boundary]
- **Descope list if this grows:** [What gets cut first]

## Capacity tripwires
- **Early warning:** [What "quality suffering" looks like here]
- **Flag framing:** [Impact-language template — "I'm losing X on Y because of this"]

## Team
- [Name] — [Role]
- [Name] — [Role]

## Key files
- **Obsidian project notes:** ~/Documents/Obsidian/Projects/[Project Name].md (timeline, notes, decisions, action items)
- **Action items:** ~/Documents/Obsidian/Action Items/This Week.md
- **Brief:** [filename if in this folder]
- **Figma / working file:** [link if known]

## Current phase
[What's happening right now, what's the next milestone]

## Context for this session
When working on this project:
- Update the Obsidian project file with any new notes, decisions, or timeline entries
- Use the format `- YYYY-MM-DD | type | description` for timeline entries (types: milestone, review, deadline, handoff, sync, checkin)
- If the user is leading, check on lead responsibilities: file hygiene, weekly updates, review prep, stakeholder comms
- If scope shifts or new asks come in, run the /scope check before the user commits
- Read the Obsidian project file at the start of each session for the latest state
```

## Step 6: Confirm

Tell the user what was created:
- Obsidian project file at `~/Documents/Obsidian/Projects/[name].md`
- Working folder at `~/Documents/Agentic Projects/Projects/[name]/`
- `CLAUDE.md` in the working folder

Remind them: "Start Claude from that folder when working on this project and it'll have full context."

## If the user is leading

If the user says they're owning or co-leading, also:
- Reference the user's Project Lead role doc (e.g., `~/Documents/Obsidian/Project Lead - Role & Responsibilities.md`) if it exists
- Add a kickoff checklist to the CLAUDE.md:
  - [ ] Workback / light timeline created and shared (don't skip — this is ambiguity-prevention practice)
  - [ ] Project working file set up with template
  - [ ] Brief reviewed and questions clarified
  - [ ] Working cadence established with team (check-ins on the calendar)
  - [ ] Design / project ops engaged
  - [ ] Manager and director reviews booked
  - [ ] Weekly update cadence started
- Add lead accountability to the "Context for this session" section

## Important
- Don't create files the user hasn't approved
- Ask before creating if anything is unclear
- Use what the user already told you in the conversation — don't re-ask
