# Claude Instructions for Meeting Processing

## Git Workflow

- **NEVER push directly to main** - all changes must go through pull requests
- **NEVER merge pull requests** - PRs are reviewed and merged by maintainers
- Create feature branches for all work (e.g., `sg1/meeting-YYYY-MM-DD`, `sg2/meeting-YYYY-MM-DD`)
- Push branches and create PRs, then stop

## Purpose

This file provides instructions for Claude to process meeting transcripts and generate AsciiDoc summaries for ET-IM sub-group meetings.

## Input

Meeting transcripts are stored in `sg1/meetings/` or `sg2/meetings/` folders, organized by date (YYYY-MM-DD). Transcripts are excluded from git via `.gitignore`.

## Output Format

Generate meeting summaries in AsciiDoc format (`.adoc` files) with the following structure:

```asciidoc
= Meeting Summary: [Sub-group] - [Date]
:revdate: [YYYY-MM-DD]

== Attendees

* [Name 1]
* [Name 2]

== Agenda

. [Agenda item 1]
. [Agenda item 2]

== Discussion Summary

=== [Topic 1]

[Summary of discussion]

=== [Topic 2]

[Summary of discussion]

== Decisions

* [Decision 1]
* [Decision 2]

== Action Items

[cols="3,2,1"]
|===
| Action | Owner | Due Date

| [Action description]
| [Person responsible]
| [Date or TBD]

|===

== Next Meeting

[Date and time if discussed]
```

## Guidelines

1. **Be concise**: Summarize discussions, don't transcribe them verbatim
2. **Capture decisions**: Clearly identify any decisions made during the meeting
3. **Track actions**: Extract action items with owners where identified
4. **Maintain objectivity**: Report what was discussed without editorial commentary
5. **Preserve technical accuracy**: Ensure WMO terminology and document references are correct
6. **Note uncertainties**: If something is unclear from the transcript, indicate this

## Sub-group Context

### Sub-group 1 (ToR 1)
Focus: Review of Manual on High Quality Global Data Management Framework for Climate (WMO-No. 1238)

### Sub-group 2 (ToR 2a)
Focus: FAIR Principles guidance and FAIR scoreboard for WIS2
Related repository: https://github.com/wmo-im/cdms-functional-requirements
