# Review Intake

You are helping the user process feedback from a design review, 1:1, or office hours. This skill reads a Gemini transcript from Google Docs, extracts the actionable content, and routes it to the correct Obsidian project files and action items.

Run this after any review — director reviews, manager office hours, 1:1s, project syncs. The goal is zero feedback lost between the meeting and the work.

## Step 1: Find the transcript

Search Google Drive for recent Gemini transcripts:
- Use `gws_drive_search` with queries like `name contains 'Notes by Gemini'` or the meeting name
- Show the user the 3-5 most recent transcripts and ask: **"Which review do you want to process?"**
- If the user names the meeting, search for it directly

Read the full transcript with `gws_docs_read` (or `gworkspace_read_file`).

## Step 2: Identify the projects discussed

Match the transcript content to active Obsidian project files:
- Read all `.md` files in `~/Documents/Obsidian/Projects/` (skip Archive)
- Map each section of the transcript to a project based on context (project names, deliverables, people mentioned)
- If a section doesn't match any existing project, flag it: **"This section mentions [topic] — is this a new project, or does it belong somewhere?"**

## Step 3: Extract and categorize

For each project discussed in the review, extract:

**Decisions** — anything that was aligned on, approved, or killed
- Format: `**[Date]:** [Decision]`

**Feedback** — specific direction, critique, or guidance from reviewers
- Format: `**[Date]:** [Who] — [Feedback]. [Interpretation of what this means for the work]`

**Action items** — concrete next steps assigned to the user or their team
- Format: `- [ ] [Action item] (from [meeting name])`

**Open questions** — things raised but not resolved
- Format: `- [ ] [Question]`

**Notes** — context, observations, or quotes worth capturing
- Format: `**[Date]:** [Note]`

## Step 4: Show the routing plan

Before writing anything, present the full routing plan:

```
📋 REVIEW INTAKE — [Meeting Name] ([Date])

→ [Project Name 1]:
  Decisions: [list]
  Feedback: [list]
  Action items: [list]
  Notes: [list]

→ [Project Name 2]:
  Decisions: [list]
  Action items: [list]

→ This Week.md:
  New action items: [list]

→ Peer files:
  [Name]: [feedback received or given]
```

Ask: **"Does this routing look right? Anything to add or move?"**

## Step 5: Write to files

After the user confirms:

1. **Append to each project file** in `~/Documents/Obsidian/Projects/`:
   - Add decisions to the `#### Decisions:` section
   - Add feedback and notes to the `#### Notes:` section
   - Add open questions to `#### Open questions:` if that section exists
   - Add timeline entries to `#### Timeline:` section
   - All entries dated with `**[Date]:**` prefix

2. **Update This Week.md** in `~/Documents/Obsidian/Action Items/`:
   - Add new action items under the relevant project section
   - If a project section doesn't exist yet, create it with `#### [Project Name]:`
   - Use checkbox format: `- [ ] [Item]`

3. **Update peer files** if feedback was given or received:
   - Append to the relevant person's file in `~/Documents/Obsidian/Peers/`
   - Date all entries

## Step 6: Flag patterns

After processing, check for:
- **Scope creep** — is something being added that wasn't in the original brief? If so, suggest running `/scope`
- **Capacity impact** — does the feedback require significantly more work than expected? Flag it
- **Vague feedback** — if feedback from the transcript is non-actionable, call it out: "This feedback from [person] is vague — do you want to push back for specifics?"
- **Repeated feedback** — if the same note has come up before (check previous project notes), flag the pattern

## Important guidelines

- Don't fabricate or interpret beyond what's in the transcript. Quote when possible.
- If the Gemini transcript is unclear or garbled, flag it and ask the user to clarify.
- Route everything — the point is that nothing falls through the cracks between the meeting and the work.
- Be fast. This should take 2-3 minutes, not 15.
- If Fellow tools are available, also pull action items from the meeting via `fellow_get_action_items` to cross-reference with the transcript.
