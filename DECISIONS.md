# AIPM decisions

## D1: Separate skills, prefixed `aipm-` (2026-10-19)

All ten skills from the complementary-skills specification are separate, self-contained folders. The `aipm-` prefix groups them and avoids name collisions. Branded names (True North, Stay on Target, Break the Mold) appear in titles and descriptions so that either branded or plain-language requests trigger the skills.

## D2: Shared rules embedded, overlap accepted (2026-10-19)

Each `SKILL.md` repeats the "AIPM operating rules" block and summarizes the neighboring skills it hands off to. Many users will install only one skill, so some overlap is intentional. Trade-off: rule changes must be applied to every skill.

## D3: Umbrella skill `aipm` (2026-10-19)

The `aipm` skill routes requests to the focused skills, runs the starting sequence and the adaptive cycle, and explains the framework. It includes one-line fallbacks for each focused skill, so it is useful even when the others are not installed.

## D4: Advisory only (2026-10-19)

No skill sends external communications, writes to systems of record, commits funds, or executes actions. Connectors are read-only and used only when authorized. Moving from advice to action requires a separate decision about permissions, monitoring, and recovery.

## D5: Public repository, CC BY-NC 4.0 (2026-10-19)

The framework, skills, site, and demo are public to support speaking and publishing. They are licensed CC BY-NC 4.0: attribution required, no commercial use without permission.

## D6: Site on GitHub Pages from `docs/` (2026-10-19)

The site uses the Just the Docs remote theme, with no build pipeline to maintain. Substack papers are republished in full with `canonical_url` pointing to the original. Medium articles are listed and linked rather than copied.

## D7: Demo tools (2026-10-19)

The demo covers Jira Cloud, monday.com, and GitHub, using fictional data. SharePoint is deferred because it requires a Microsoft 365 Business plan. Documents that would live in SharePoint are provided as Markdown in `demo/documents/`.

## D8: Cross-source advisory portfolio review (2026-11-02)

Use monday.com investment/status records and Jira delivery evidence as the baseline demonstration of cross-source portfolio reasoning. Slack or Teams is optional, bounded coordination evidence. Extend the umbrella, Evidence Brief, and Portfolio Choices skills with record matching, coverage disclosure, conflicting-claim handling, and conditional scenarios. Shared rules remain consistent across all eleven skills. This does not add write-back, messaging, funding authority, or connector implementation; D4 remains in force.

Recognize AIPPM as an alias while preserving existing `aipm-*` names. The October 31 author-supplied essay informs the review but is not republished with private practitioner material. Reported observations are not adopted as independently measured effectiveness. See [review and acceptance map](docs/framework-review-2026-11-02.md).

## D9: Synthetic interactions and comparative evaluation (2026-11-02)

Provide optional Slack/Teams message fixtures and a portfolio interaction script without posting them externally. Retain the original demo's October 19 cutoff. Historical setup verification is not evidence of current connector access. Compare manual preparation, general AI, and skill-guided AI on equivalent evidence and quality criteria; include verification and correction in human effort. Behavioral runs, live integration verification for this revision, and timed efficiency comparisons remain pending. See [evaluation protocol](evals/cross-source-portfolio.md).

## D10: Goal-led cooperation between agents (2026-11-02)

When requested and supported by the host, two or more actual agents may gather permitted source slices and exchange cited evidence, challenges, corrections, and unresolved findings within the same authorized review context. The coordinator consolidates one goal-led risk/issue/blocker assessment and proposed actions needed from PM, team, and decision owners. Default to two complementary roles; add specialists only for distinct needs, with bounded rounds and disclosed failures.

This explicitly permits internal agent evidence exchange; D4 continues to prohibit external communications, source-system mutations, and funding commitments. Agents cannot approve each other's proposed human actions. Skills specify the protocol, not a runtime or new connector permissions. See [coordination protocol](skills/aipm/references/multi-agent-review.md), [demo](demo/multi-agent-review.md), and [acceptance map](evals/multi-agent-review.md). Multi-agent efficiency and live reliability are unproven.

## Open

- Run the `evals/` cases with and without skills, and set pilot acceptance criteria before any field trial.
- Relationship to the earlier `agile-lean-learning-with-ai` skill (not in this repository): keep both, or publish it here as well.
