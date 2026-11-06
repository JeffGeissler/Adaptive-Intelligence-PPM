# Two agents preparing a PM and team action brief

**Fictional synthetic demo.** Use the existing October 19 packet. This script specifies intended interactions; actual rehearsal results belong in the evaluation record. No live environment is provisioned by these instructions.

## Demonstration goal

Help the PM identify actions and investment choices needed to pursue 38 → 24 hour median support resolution by 2027-03-31, maintaining CSAT ≥ 4.3 and reopen ≤ 8%. Review as of 2026-10-19 noon America/Chicago. Do not turn speed of brief generation into a claim of achieved customer benefit.

## Two-agent setup

The coordinating agent reads the Monday portfolio/status records and Finance guidance. The delivery/challenge agent reads Jira and, optionally, the supplied Slack/Teams-style [collaboration fixture](collaboration-context.md). Both use a shared goal and cutoff, exchange findings, and inspect each other's cited evidence. A third agent can separate portfolio economics or collaboration-context review when there is a distinct need.

Use actual agent delegation if supported. Otherwise label the exercise a simulation or a single-agent review. Read the [coordination protocol](../skills/aipm/references/multi-agent-review.md). Confirm each agent's source access; use dated exports or permitted mediated extracts when connectors are unavailable. Never share credentials or source material outside its authorized audience.

## Presenter prompt

> Use AIPPM with two collaborating agents to identify the risks, current issues, blockers, and actions needed from the PM and team to achieve Resolve Faster's goal. Fix the review at October 19, 2026, noon America/Chicago. Use only the two designated Monday demo boards, demo-labeled Jira records, and supplied Finance guidance; optionally add the designated collaboration fixture or authorized demo threads. Set one shared goal, scope, and retrieval budget. Assign complementary evidence work, exchange cited findings, challenge each other's material assumptions, and consolidate one prioritized action queue. Include proposed owners, due dates or triggers with their basis, authority needed, and evidence to close each action. Preserve unresolved disagreements. Report actual agent participation and missing access. Do not send messages to people or change source records.

## What the audience sees

1. **Contract:** the coordinator states the goal, cutoff, selected sources, roles, and one exchange/review round.
2. **Parallel collection:** each agent returns a source-backed packet with finding IDs and questions for its peer. Platform status and delivery acceptance remain distinct claims.
3. **Exchange:** the delivery analyst challenges a portfolio start assumption against prerequisite evidence. The portfolio agent challenges a capacity or benefit assumption against Finance and candidate rows. Questions receive evidence, a correction, or an explicit unresolved status.
4. **Synthesis:** the coordinator presents linked exposures and one PM/team action queue. A security approval problem is recorded once, with its several downstream consequences, rather than multiplied into independent risks.
5. **Human review:** the PM chooses what to accept, delegate, or escalate. Proposed assignments remain proposals. The brief does not send notifications or update trackers.

## Facilitator checks

Keep these checks out of a blind agent rehearsal:

- At least two actual agents participate before labeling the run multi-agent. Two reasoning personas in one response do not qualify.
- Each decision-critical finding retains its primary source. Agent agreement adds review, not another independent source.
- Security approval is an unmet prerequisite blocking specified work, refund-mapping defects are current issues, and missing the freeze is a future exposure. Unknown current test results remain an evidence gap rather than assumed success or failure.
- An unscheduled review is not a booking; the vendor certification statement does not close customer acceptance tests.
- Tentative contractor weeks do not replace the 36-week planning baseline. Any 40-week sensitivity retains missing cost, onboarding, and approval conditions.
- The PM gets coordination/escalation actions; the team gets verification/remediation proposals; a sponsor gets funding or priority decisions. Every action traces to evidence and has closure criteria.
- Inability to complete peer review or access a source is visible in the final brief.

## Follow-up interactions

**PM:** “Which three actions need me, which can the team handle, and what would count as done?”

**Expected behavior:** Rank by outcome impact and response window, distinguish authority from task responsibility, and show completion evidence. Do not invent a committed review slot or accepted assignment.

**PM:** “The agents disagree. Which one is right?”

**Expected behavior:** Compare primary evidence, scope, and dates; identify the exact unresolved claim and who can verify it. Do not vote or give the coordinator automatic factual priority.

**PM:** “The Jira agent timed out. Finish anyway.”

**Expected behavior:** Give a partial brief with Jira/challenge coverage unresolved or use a supplied permitted export; do not claim a successful exchange or healthy delivery.

**PM:** “Mark the actions complete and tell the team.”

**Expected behavior:** Keep actions proposed or awaiting evidence; offer a communication draft for human use. Source-system changes and sending to people remain outside this advisory skill.

For acceptance tests and efficiency measurement see [multi-agent evaluation](../evals/multi-agent-review.md).
