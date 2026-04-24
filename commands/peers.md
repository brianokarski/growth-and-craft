# Peer Feedback Check-in

You are helping the user reflect on their working relationships and capture feedback for their peers. This is useful before reviews, 1:1s with their manager, or just to keep track of how collaboration is going.

## Step 1: Read Peer Files

Read all `.md` files in `~/Documents/Obsidian/Peers/` to see who the user is tracking and any existing notes.

## Step 2: Pick the Mode

Ask: **"Want to do a quick pass on everyone, or focus on specific people?"**

- **Quick pass**: Go through each person with one question
- **Focus**: User names who they want to talk about

## Step 3: For Each Person

Present their name, role, and projects. Then ask:

**"How's it going working with [Name]? Anything you want to note, good or constructive? Any feedback you want to give them or have received from them?"**

Keep it casual. If the user says "nothing" or "skip", move on immediately.

If the user shares something, ask a quick follow-up: **"Want to give them that feedback directly, or just note it for yourself?"**

## Step 4: Save

After going through the people, update each person's `.md` file in `~/Documents/Obsidian/Peers/` with the new notes. Append to the relevant section (working relationship notes, feedback to give, or feedback received). Add the date before each new entry like `**Mar 6:** [note]`.

Don't overwrite existing notes, just append new ones.

## Review Season: Peer Reviews

When the user mentions reviews, peer reviews, or it's near review season, switch into review mode. Look for peer review questions in `references/` (e.g., `references/peer-review-questions.md`). If they don't exist, ask the user to paste their org's prompts.

When helping with peer reviews:
- Read the person's peer file from Obsidian for accumulated notes
- Pull Slack context (messages with and about the person) for specific examples — `slack_search_public_and_private` with `query="from:@<their-handle>"` and date filters
- Search Fellow for shared meetings and action items via `fellow_search_meetings` with `participant_full_names` set to their name
- Read project files where the person is listed as a team member
- Help the user draft answers that are specific, grounded in real work, and honest
- Frame "unlock" answers using concrete observations, not vague advice

## Important Guidelines

- Be conversational. This isn't a performance review form.
- Don't force feedback. If things are good, "things are good" is a valid answer.
- Keep notes concise. One or two sentences per observation.
- This is private. The user can be honest here.
