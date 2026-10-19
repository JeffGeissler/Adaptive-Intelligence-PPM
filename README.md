# AIPM: Adaptive Intelligence for Portfolio, Program, and Project Management

An outcome-centered framework for **portfolio, program, and project management**, with companion **AI skills** that help leaders examine evidence, challenge assumptions, and adapt.

> **Human judgment establishes purpose and accepts responsibility; AI helps people examine evidence, challenge assumptions, and adapt.**

By **Jeff Mitchell Geissler** · *Scale with Jeff* · [Substack](https://scalewithjeff.substack.com) · [Medium](https://medium.com/@ccrhyyww) · [Website](https://jeffgeissler.github.io/Adaptive-Intelligence-PPM/)

## What's here

| Folder | Contents |
|---|---|
| [`skills/`](skills/) | Eleven self-contained AI skills (Markdown `SKILL.md` files) |
| [`docs/`](docs/) | GitHub Pages site: framework overview, skills catalog, papers |
| [`demo/`](demo/) | Fictional "Resolve Faster" program with Jira, monday.com, and GitHub data, plus a speaker walkthrough |
| [`evals/`](evals/) | Representative test prompts for evaluating the skills |
| `.claude/skills/` | Symlinks so Claude Code discovers the skills when this repo is opened as a project |

## Skills

| Skill | Central question | Produces |
|---|---|---|
| [`aipm`](skills/aipm/SKILL.md) | Which AIPM help does this need? *(umbrella: routes and runs cycles)* | Routing and end-to-end cycles |
| [`aipm-true-north`](skills/aipm-true-north/SKILL.md) | What are we trying to accomplish, for whom, and why now? | Outcome agreement |
| [`aipm-portfolio-choices`](skills/aipm-portfolio-choices/SKILL.md) | What should we start, sequence, defer, or stop? | Scenario comparison |
| [`aipm-evidence-brief`](skills/aipm-evidence-brief/SKILL.md) | What do we know, what changed, what is disputed? | Evidence brief |
| [`aipm-stay-on-target`](skills/aipm-stay-on-target/SKILL.md) | Are we actually getting closer? | Alignment review |
| [`aipm-dependency-readiness`](skills/aipm-dependency-readiness/SKILL.md) | What could prevent the outcome, and when do options narrow? | Exposure brief |
| [`aipm-decision-brief`](skills/aipm-decision-brief/SKILL.md) | Who must choose what, by when, with which tradeoffs? | Decision brief |
| [`aipm-break-the-mold`](skills/aipm-break-the-mold/SKILL.md) | What one uncomfortable change is worth testing? | Experiment card |
| [`aipm-benefits-adoption`](skills/aipm-benefits-adoption/SKILL.md) | Did delivery create the intended value? | Benefits assessment |
| [`aipm-applied-learning`](skills/aipm-applied-learning/SKILL.md) | Where will what we learned change the next decision? | Applied lesson |
| [`aipm-leadership-dialogue`](skills/aipm-leadership-dialogue/SKILL.md) | What might we be overlooking? | Facilitation guide |

Each skill stands alone, so some overlap between them is intentional. Many people will use only one.

**Start with** True North → Evidence Brief → Decision Brief on one existing review, then add Stay on Target → Break the Mold → Applied Learning for a full adaptive cycle.

## Install

```bash
git clone https://github.com/JeffGeissler/Adaptive-Intelligence-PPM.git
mkdir -p ~/.claude/skills
cp -R Adaptive-Intelligence-PPM/skills/* ~/.claude/skills/   # all skills, every Claude Code project
```

Alternatively, open the cloned repo in Claude Code to use the skills only there. For Claude.ai, zip a single skill folder and upload it as a custom skill. For other assistants, paste a `SKILL.md` as instructions.

## Status

AIPM is a working framework (v1.0, October 2026). The skills are proposed specifications: advisory only, with no code, connectors, or execution capabilities. No field validation or effectiveness claims are made yet. Feedback through issues is welcome.

## License

[CC BY-NC 4.0](LICENSE) © 2026 Jeff Mitchell Geissler. You may share and adapt the material with attribution for non-commercial purposes. For commercial licensing, workshops, or speaking, contact the author via [Substack](https://scalewithjeff.substack.com).
