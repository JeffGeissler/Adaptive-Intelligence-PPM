# Goal-led multi-agent review

Use when the user requests two or more agents to assess portfolio, program, or project evidence and identify PM/team actions. This is a coordination protocol for a host that supports actual agent delegation and permitted information exchange; it does not implement an agent runtime or grant connector access.

## Agree the goal and the working contract

Create one shared review contract before splitting work:

```
Review ID / version:
Goal and beneficiary:
Measure, baseline or gap, target, guardrails:
Pending question or decision:
Scope: initiatives, period, historical cutoff and timezone:
Permitted sources and fields; excluded material:
Roles and source assignments; actual tool access per agent:
Retrieval budget and completion deadline:
Exchange channel and audience permitted to see combined findings:
Output: evidence-linked risks, issues, blockers, and PM/team actions:
```

Use the user's known goal and authorization. Ask only if a missing goal, source boundary, or permitted audience prevents useful work. Missing baseline evidence is a gap to investigate, not a reason to invent a target. The review itself may aim to prepare a decision; it cannot promise to deliver the underlying business outcome.

## Assign at least two actual agents

Use the smallest team that supplies complementary work:

| Role | Responsibility | Typical focused skills |
| --- | --- | --- |
| Coordinator and evidence lead | Maintains the contract, gathers a source slice, maps identities, integrates exchanges, and owns the final advisory brief. | True North, Evidence Brief, Decision Brief |
| Delivery and challenge analyst | Gathers another source slice, tests the coordinator's assumptions and joins, assesses readiness and exposures, and checks proposed actions against evidence. | Evidence Brief, Dependency Readiness |
| Optional portfolio or collaboration analyst | Covers a distinct question such as capacity/economics or bounded Slack/Teams threads; challenges cross-initiative implications. | Portfolio Choices, Benefits & Adoption |

For two agents, the coordinator may cover Monday/Finance while the analyst covers Jira; both inspect the other's material source extracts. With three or more, separate collection from challenge where useful. A role is an agent assignment, not proof that a skill file created an autonomous process. Add agents only for a distinct source or review need; do not spawn recursively or create a standing team.

Check access individually: a delegate may not inherit the coordinator's connectors or context. Share only evidence within the same authorized purpose and audience. If only the coordinator can read a source, it may provide a minimal cited extract where permitted; label the analyst's access as mediated. Do not copy a restricted source into an agent context or output that lacks permission to receive it. Never pass credentials.

If actual delegation or internal exchange is unavailable, state that limitation. Offer a single-agent review with separate reasoning passes, or a clearly labeled simulated exchange. Neither counts as a completed multi-agent run.

## Gather across sources

Use the [cross-source review](cross-source-portfolio-review.md) for bounded reads, record matching, chronology, and source conflicts. Baseline: two or more PM sources such as Monday and Jira; optional Slack/Teams context. Each agent declares live, export, mediated, denied, capped, or unqueried coverage for its slice. Two agents reading one underlying record are not two independent sources.

Allocate retrieval work to avoid duplicate account-wide searches. Independent reads can proceed concurrently. Dependent assessment waits for the required packet. Use stable source IDs and explicit links to match initiatives; keep ambiguous identities separate. Distinguish source observation time, retrieval time, and the fixed review cutoff. A later refresh creates a new packet version rather than silently changing the shared snapshot.

## Exchange findings and challenge them

Use the host's internal agent channel or a user-approved shared workspace for this review. Exchanging findings between agents is distinct from sending Slack, Teams, email, or tracker notifications to people. This protocol does not authorize those external communications.

Each packet contains:

```
Review ID / contract version / packet ID and version / producing agent:
Source slice, access mode, cutoff, complete/partial status:
Entity map: initiative → source IDs → match basis or ambiguity:
Findings: finding ID, claim, observed fact/interpretation/assumption,
          original source locator and date, relevant extract, limitations:
Candidate exposures: affected goal/work, condition, consequence,
                     evidence IDs, provisional classification:
Proposed actions and unresolved questions:
Requests to another agent: exact claim or gap to check:
Corrections: superseded packet/finding IDs and reason:
```

1. **Initial findings:** agents collect their assigned evidence and exchange packets. The coordinator keeps a shared evidence list and maps duplicate claims to their original source.
2. **Challenge and reply:** each agent checks material findings from another agent against available primary evidence, names unsupported inferences, and asks targeted questions. A reply must supply evidence, correct the finding, or leave it unresolved. The coordinator routes messages if agents cannot communicate directly.
3. **Reconciliation:** revise affected findings/actions, preserving correction history and dissent. Verify decision-critical claims from original sources or supplied extracts; another agent's agreement is not independent corroboration.
4. **Stop:** default to one challenge/reply round and one consolidation. Extend only for a named material gap within the contract's budget/deadline. On timeout, unavailable agent, or unresolved disagreement, publish a partial brief with the missing review disclosed. Do not fabricate an exchange or claim consensus.

The coordinator is accountable for the final synthesis. Check field meanings before accepting a peer's reported contradiction: confidence in a benefit and confidence in a cost estimate are different attributes. Record which agent challenged each material exposure and whether the response was accepted, corrected, or unresolved. Keep the final brief short; detailed packets support traceability rather than become extra PM reading.

## Assess risks, issues, and blockers against the goal

- **Risk:** a future uncertain event or condition could affect the goal. State the causal path and trigger; avoid unsupported probability scores.
- **Issue:** an observed current problem affects delivery or the outcome. Show what is already happening and its evidence.
- **Blocker:** an issue or unmet prerequisite prevents a named next activity now. Identify provider → consumer, what cannot proceed, and the evidence that would unblock it. An issue can also be a blocker; link the records instead of counting two independent exposures.
- **Evidence gap:** the state is unknown or disputed. It may justify verification, but is not proof of failure, readiness, or absence of risk.

Connect each exposure to the outcome, affected work, impact basis, needed date, time remaining to respond, dependencies, and fallback. Prioritize guardrail breaches, active blockers, expiring options, and cross-team consequences with a written rationale; do not manufacture a precise composite score. Expose the assumptions behind date arithmetic, calendars, and cost-of-delay estimates.

## Provide actions needed from the PM and team

Produce one deduplicated action queue. Distinguish PM coordination/escalation, team delivery/verification, sponsor or funding decisions, and monitoring. One issue can need several actions; one action can address several linked exposures.

| Action ID | Exposure/evidence IDs | Action needed and why now | PM/team/decision owner | Responsible person (confirmed/proposed) | Due or trigger and basis | Prerequisite/authority needed | Done when / evidence to close | State |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

Use concrete verbs and a checkable result. “Monitor integration” is incomplete; “PM obtains a confirmed review slot or escalates the unmet prerequisite before the response deadline” specifies useful follow-through. Distinguish the evidence owner, person responsible for the action, and person who may authorize a consequential choice. Do not assign availability, commitments, or deadlines as accepted facts without support.

Proposed due dates and assignments stay proposed. If a date cannot be derived, show “date to agree” with the decision trigger. Action states are proposed, awaiting decision/evidence, accepted (only with a supplied human decision), or verified closed (only with completion evidence). Agent agreement cannot accept an action or close it. Draft questions or escalation text in the brief; do not send them or update source records.

## Final PM and team brief

```
Goal / review contract version / as-of:
Actual agents and roles / source coverage / incomplete review:
Top risks, issues, blockers, and evidence gaps:
| Exposure ID | Classification | Goal/work affected | Evidence | Impact |
| Needed by / response deadline | Priority rationale | Reviewer and disposition |
Decisions or help needed from PM/sponsor:
Actions needed from the team: [shared action queue]
Unresolved disagreements / missing evidence / alternative interpretation:
What changed after agent challenge, and why:
Next review, triggers, and closure evidence:
```

Count retrieval, exchange, duplicated work, reconciliation, human verification, and correction in efficiency measurement. A multi-agent process may be slower or more expensive. Compare accuracy and total effort with a single-agent approach before claiming added value.
