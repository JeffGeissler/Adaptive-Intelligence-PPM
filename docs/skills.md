---
title: AI skills
nav_order: 4
permalink: /skills/
---

# AIPM AI skills

Eleven reusable skills turn AIPM into repeatable AI assistance across project, program, and portfolio management. A *skill* is a packaged set of instructions for a defined task: when to use it, what evidence it needs, how to reason, and what useful result to produce. Skills share the same operating rules; they are not separate autonomous agents.

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

## Install

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

Common response shape: **Outcome → Evidence → Interpretation and uncertainty → Options or recommendation → Owner and next review.**

The skills are proposed specifications. They have not yet been evaluated in field use, and no effectiveness claims are made.
