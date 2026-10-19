# AIPM decisions

## D1: Separate skills, prefixed `aipm-` (2026-10-19)

All ten skills from the complementary-skills specification are separate, self-contained folders. The `aipm-` prefix groups them and avoids name collisions. Branded names (True North, Stay on Target, Break the Mold) appear in titles and descriptions so that either branded or plain-language requests trigger the skills.

## D2: Shared rules embedded, overlap accepted (2026-10-19)

Each `SKILL.md` repeats the "AIPM operating rules" block and summarizes the neighboring skills it hands off to. Many users will install only one skill, so some overlap is intentional. Trade-off: rule changes must be applied to every skill.

## D3: Umbrella skill `aipm` (2026-10-19)

The `aipm` skill routes requests to the focused skills, runs the starting sequence and the adaptive cycle, and explains the framework. It includes one-line fallbacks for each focused skill, so it is useful even when the others are not installed.

## D4: Advisory only (2026-10-19)

No skill sends communications, writes to systems of record, commits funds, or executes actions. Connectors are read-only and used only when authorized. Moving from advice to action requires a separate decision about permissions, monitoring, and recovery.

## D5: Public repository, CC BY-NC 4.0 (2026-10-19)

The framework, skills, site, and demo are public to support speaking and publishing. They are licensed CC BY-NC 4.0: attribution required, no commercial use without permission.

## D6: Site on GitHub Pages from `docs/` (2026-10-19)

The site uses the Just the Docs remote theme, with no build pipeline to maintain. Substack papers are republished in full with `canonical_url` pointing to the original. Medium articles are listed and linked rather than copied.

## D7: Demo tools (2026-10-19)

The demo covers Jira Cloud, monday.com, and GitHub, using fictional data. SharePoint is deferred because it requires a Microsoft 365 Business plan. Documents that would live in SharePoint are provided as Markdown in `demo/documents/`.

## Open

- Run the `evals/` cases with and without skills, and set pilot acceptance criteria before any field trial.
- Relationship to the earlier `agile-lean-learning-with-ai` skill (not in this repository): keep both, or publish it here as well.
