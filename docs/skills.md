---
title: AI skills
nav_order: 4
permalink: /skills/
---

# AIPM AI skills

Eleven reusable skills turn AIPM into repeatable AI assistance across project, program, and portfolio management. A *skill* is a packaged set of instructions for a defined task: when to use it, what evidence it needs, how to reason, and what useful result to produce. Skills share the same operating rules. A host can assign them to collaborating agents; a skill file itself does not create an agent runtime.

Each skill is **self-contained**. Install only the one you need, or install all of them with the `aipm` umbrella skill, which routes a request to the right one.

| Skill | Central question | Produces |
|---|---|---|
| [`aipm`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm) (umbrella) | Which AIPM help does this need? | Routing, end-to-end cycles, framework explanation |
| [`aipm-true-north`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-true-north) | What are we trying to accomplish, for whom, and why now? | Outcome agreement |
| [`aipm-portfolio-choices`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-portfolio-choices) | What should we start, sequence, defer, or stop? | Feasible scenario comparison |
| [`aipm-evidence-brief`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-evidence-brief) | What do we know, what changed, what is disputed? | Traceable evidence brief |
| [`aipm-stay-on-target`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-stay-on-target) | Are we actually getting closer? | Alignment and drift review |
| [`aipm-dependency-readiness`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-dependency-readiness) | What could prevent the outcome, and when do options narrow? | Exposure and escalation brief |
| [`aipm-decision-brief`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-decision-brief) | Who must choose what, by when, with which tradeoffs? | Decision brief |
| [`aipm-break-the-mold`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-break-the-mold) | What one uncomfortable change is worth testing? | Experiment card |
| [`aipm-benefits-adoption`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-benefits-adoption) | Did delivery create the intended value, and will it last? | Benefits assessment |
| [`aipm-applied-learning`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-applied-learning) | What did we learn, and where will it change the next decision? | Applied lesson |
| [`aipm-leadership-dialogue`](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/tree/main/skills/aipm-leadership-dialogue) | What might we be overlooking? | Facilitation guide |

## Where to start

1. **True North → Evidence Brief → Decision Brief** on one existing review.
2. Add **Stay on Target → Break the Mold → Applied Learning** for a full adaptive cycle.
3. Add dependency, benefits, portfolio, and dialogue skills when the work requires them.

## Cross-source portfolio reviews

The umbrella skill recognizes **AIPPM** as an alias and supports a bounded review across Monday investment/status records and Jira delivery evidence, with optional Slack or Teams coordination context. It routes to a packaged reference for source coverage, record matching, conflicting claims, and conditional scenarios. Evidence Brief and Portfolio Choices also include standalone cross-source instructions.

Skills do not provide connector implementations or credentials. Use live read-only access when available and authorized, dated exports otherwise. Disclose partial coverage. An unconfirmed staffing suggestion in chat remains an assumption, not available capacity or approval. The reference travels with the umbrella skill folder; when pasting instructions, include that reference for cross-source reviews.

See the [revision review](../framework-review/) and the [synthetic portfolio script](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/blob/main/demo/portfolio-interactions.md). Efficiency and behavioral acceptance criteria are proposed; no timed improvement is claimed.

## Two or more collaborating agents

When requested, the umbrella skill coordinates at least two actual agents around one goal, cutoff, and permitted source scope. An evidence/coordinating agent and a delivery/challenge analyst exchange cited findings, ask targeted questions, preserve corrections and dissent, and consolidate risks, current issues, blockers, and an action queue for the PM/team. Add specialist agents only for a distinct question.

Each proposed action identifies the evidence and exposure, responsible person, due date or trigger and basis, needed authority, state, and closure evidence. Internal agent exchange is allowed within the authorized review context; sending to Slack/Teams users, tracker changes, and funding commitments remain outside the advisory workflow. If the host cannot delegate, disclose the limitation and label any single-agent simulation.

Read the [protocol](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/blob/main/skills/aipm/references/multi-agent-review.md), [demo](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/blob/main/demo/multi-agent-review.md), and [acceptance cases](https://github.com/JeffGeissler/Adaptive-Intelligence-PPM/blob/main/evals/multi-agent-review.md). Copy the umbrella folder including references. Live integration and efficiency gains require evaluation.

## Install and include supporting references

**Claude Code (all projects):**

```bash
git clone https://github.com/JeffGeissler/Adaptive-Intelligence-PPM.git
mkdir -p ~/.claude/skills
cp -R Adaptive-Intelligence-PPM/skills/* ~/.claude/skills/
```

To install one skill, copy only its folder, for example `skills/aipm-decision-brief`.

**Claude Code (this repository only):** open the cloned folder as your project. The skills are discovered through `.claude/skills/`.

**Claude.ai:** zip a skill folder (for example `aipm-true-north/`) and upload it as a custom skill in your Claude settings.

**Other assistants:** paste the contents of a skill's `SKILL.md` as instructions. The skills are plain Markdown with no code or vendor dependencies.

## Shared operating rules

Every skill:

1. Anchors analysis to an outcome and a pending decision or useful action.
2. Uses the minimum relevant, permitted evidence, and keeps references, dates, scope, and limitations.
3. Distinguishes fact, interpretation, assumption, recommendation, and human approval.
4. Surfaces uncertainty and dissent, and never fills missing management agreements with invented facts.
5. Identifies the responsible human and the next review point, labeling unconfirmed owners as *proposed*.
6. Reuses existing records and ceremonies, scaling detail to consequence.
7. Stays advisory: no external communications, system-of-record changes, funding commitments, or other execution.
8. Discloses live/export/partial coverage and the as-of date, confirms cross-source record identities, preserves conflicting claims, and uses collaboration messages as evidence rather than authority or individual profiling.

9. Coordinates requested agents through a shared goal and bounded evidence exchange, retaining source citations, corrections, dissent, and proposed PM/team actions. Internal exchange creates no authority for external messages or mutations.

Common response shape: **Outcome → Evidence → Interpretation and uncertainty → Options or recommendation → Owner and next review.**

The skills are proposed specifications. They have not yet been evaluated in field use, and no effectiveness claims are made.
