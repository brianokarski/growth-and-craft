# Weekly Project Update

You are helping the user write a weekly project update for projects they're leading. This fires near the end of the week. The update gets posted to the project's Slack channel.

## Step 1: Identify which projects the user is leading

Read all `.md` files in `~/Documents/Obsidian/Projects/` (skip Archive). Find projects where the user is the Lead.

If there's more than one, ask: **"You're leading [list]. Which project(s) are we updating today?"**

If there's only one, go straight to it.

## Step 2: Read project context

For each project being updated, read:
- The Obsidian project file (notes, timeline, decisions from this week)
- `~/Documents/Obsidian/Action Items/This Week.md` — what was on the list for this project
- Search Slack for recent messages in the project channel (last 5 days) via `slack_search_public_and_private`
- Search Google Drive for any Gemini transcripts from this week's reviews related to this project (`gws_drive_search`)

Present a quick summary: **"Here's what I'm seeing from this week: [summary]. Let me walk you through the update."**

## Step 3: Walk through the template

Ask these one at a time. If the user's answer is short, that's fine — don't over-prompt. If the project file already has the answer, pre-fill and confirm.

**1. What got done this week?**
"What shipped, was completed, or hit a milestone this week?"

**2. What's next?**
"What's in progress or planned for next week?"

**3. Any flags or blockers?**
"Anything blocking you, or anything the team needs to know? OOO, dependencies, etc."

**4. When does your director see this next?**
"When's the next director or major stakeholder review for this project?" (Check the project file timeline and calendar for scheduled reviews)

## Step 4: Generate the update

Format it exactly like this (Slack markdown):

```
:boom: *Weekly Update (week of [Month Day], [Year])*

:white_check_mark: *This week:*
• [Item]
• [Day Date] — [Review/sync name]: [key feedback or outcome]
• [Item]

:arrow_right: *Next week:*
• [Item]
• [Date + time] — [Booked sync, if any] :white_check_mark:

:warning: *Flags:*
• [Item, e.g., OOO, blockers, dependencies] (omit this whole section if there are no flags)

:eyes: *Next director review:*
• [Date or TBD + framing of what will be shown]
```

**Formatting rules:**
- Use Slack emoji codes exactly as shown: `:boom:`, `:white_check_mark:`, `:arrow_right:`, `:warning:`, `:eyes:`
- Bold section headers with `*asterisks*` — the emoji + title is bolded together (e.g. `:white_check_mark: *This week:*`)
- Bullet points with `•` (not `-`)
- Keep items to one line each — scannable, not paragraphs
- Write in the user's voice — direct, specific, no corporate filler
- Name specific deliverables, not vague progress ("Refined directions with booth mockups" not "Continued working on design")
- For reviews, lead with day + date ("Thurs Apr 23 — manager review: ...") then the substance of the feedback
- **NEVER include personal/internal info in the post**: no peer performance feedback, no capacity/bandwidth concerns, no internal politics, no the user's own personal reflections. Project channels are public to the team — keep it factual and project-focused.
- For OOO flags, be specific (date + time window + reason at high level: "dentist", "travel", "PTO")
- Playful Slack emoji riffs are fine if they fit the user's voice (e.g. `m:eyes:dboards` for moodboards) — match how they actually write

## Step 5: Review and post

Present the formatted update in a code block and ask: **"How's this look? Ready to paste into [#channel-name]?"**

Also remind the user which channel to post in (pull from the project file's Slack field).

If the user wants edits, iterate until they're happy.

## Step 6: Update project file

After the user posts, append a timeline entry to the project file:
```
- YYYY-MM-DD | update | Weekly update posted to [#channel]
```

## Important guidelines

- Pre-fill as much as possible from the project file and `This Week.md`. The user shouldn't have to repeat things they've already captured.
- Keep it fast. This should take 3-5 minutes, not 15.
- If the user hasn't done a weekly update in 2+ weeks (check timeline entries), gently flag it.
- Suggested Slack reminder: `/remind me every Thursday at 4pm "📣 Run /projectupdate in Claude to post your weekly project update"`
