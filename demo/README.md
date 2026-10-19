> **Fictional demo data.** Lumen Ridge Outfitters, its people, its vendors (including HelixDesk), and every number in this folder are synthetic. Any resemblance to real organizations or people is coincidental.

# AIPM demo kit: Resolve Faster

A ready-made, deliberately messy data set for showing the AIPM skills on realistic project, program, and portfolio records. The records are spread across Jira, monday.com, GitHub, and a set of documents, with contradictions, gaps, and pressure built in. Each embedded tension exercises one skill.

## The scenario in one page

**Today is Monday 2026-10-19.** Lumen Ridge Outfitters is a fictional online outdoor-gear retailer with about 120 support agents on the fictional helpdesk platform HelixDesk.

Dana Whitfield (VP Customer Experience) sponsors **Resolve Faster**: cut median support resolution time from **38 hours** (Q2 2026 HelixDesk export) to **24 hours by 2027-03-31**, keeping CSAT ≥ 4.3/5 (baseline 4.4) and reopen rate ≤ 8%. Reopen tracking only began on 2026-08-01 (Aug–Sep 7.1%), so that guardrail has **no Q2 baseline**. September's median was 36 h. Steering meets on **2026-10-23**; the holiday change freeze starts **2026-11-20**.

| Workstream | What the records show | Skill it exercises |
|---|---|---|
| RF-1 Knowledge Base Refresh | 180 articles done, views +45%, effect on resolution unmeasured | Stay on Target |
| RF-2 AI-Assisted Triage | "120 hours = $30,000 saved", before 70 h of QA, 13.5 h of rework, $4,200 tool cost; budget unchanged | Benefits & Adoption |
| RF-3 Order-Data Integration | Vendor says "testing complete"; Jira shows 14 of 40 tests open; monday.com Green from 2026-10-05; security review unscheduled, needed 2026-11-06 | Evidence Brief, Dependency Readiness |
| E-07 Suggested macros | Missed its 30 h target (33 h) and breached the reopen guardrail (9.2%) | Applied Learning, Break the Mold |
| Ridgebot 2.0 | $410K spent, 5 months late, $220K to finish; "we've invested too much to walk away" | Decision Brief |
| Q1 2027 portfolio | 8 candidates, $1.5M, Data Platform demand 76 vs 36 person-weeks | Portfolio Choices |
| RF-3 history | Green → Red in July; "nobody wanted to be the one to call it red" | Leadership Dialogue |

Full narrative, cast, and timeline: [scenario.md](scenario.md). Speaker script with prompts and expected answers: [walkthrough.md](walkthrough.md).

## Tool map

| Tool | Holds | Files |
|---|---|---|
| **monday.com** | Portfolio candidates and the executive status board | [monday/](monday/) |
| **Jira** | Delivery backlog, RF-3 test tracker, risks, dependencies, E-07 tasks | [jira/](jira/) |
| **GitHub** | AIPM records as issues created from issue forms, on a Project board | [github/](github/) |
| **documents/** | What would live in SharePoint: status deck notes, vendor email, business case, experiment results, steering memo, retro notes, finance guidance | [documents/](documents/) |

**SharePoint is deferred.** The documents are Markdown files in `documents/` for now. Attach them to the conversation directly.

## Folder contents

```
demo/
├── README.md                   This file
├── scenario.md                 Narrative, people, timeline, embedded tensions
├── walkthrough.md              20-minute run of show; prompt and answer key per skill
├── jira/                       rf-backlog.csv (44 rows) + import notes
├── monday/                     portfolio-board.csv, program-status-board.csv + import notes
├── github/                     create_demo_repo.sh, issues.json, repo-template/ (README + issue forms)
└── documents/                  7 SharePoint-style Markdown sources
```

## Setup

You can run the demo with only the files attached to a conversation. The tool setups make it feel real on screen.

### Jira Cloud Free

1. Create a **Scrum, company-managed** project named *Resolve Faster* with key **`RF`**.
2. **Settings → System → External system import → CSV**, upload `jira/rf-backlog.csv`.
3. Map columns as listed in [jira/README.md](jira/README.md) (Issue Id, Parent Id → Parent, Labels, Due Date as `yyyy-MM-dd`, and so on).
4. Statuses are the defaults **To Do / In Progress / Done**. Blocked items carry the label **`blocked`** rather than a custom status.

### monday.com (free or trial)

1. **Import → Excel/CSV**, one board per CSV: `monday/portfolio-board.csv` and `monday/program-status-board.csv`.
2. After import, **set column types** (Status, Numbers, Date, Dropdown) as listed in [monday/README.md](monday/README.md). Keep RF-3's *Last updated* at 2026-10-05.

### GitHub

1. Read [github/create_demo_repo.sh](github/create_demo_repo.sh) first. It creates a **public** repository under your account.
2. Run `demo/github/create_demo_repo.sh [repo-name] [owner]` (defaults: `aipm-demo-resolve-faster`, your gh user). It asks for y/N confirmation, refuses to touch an existing repo, pushes `repo-template/`, and creates labels, milestones, and 13 issues from `issues.json`.
3. If your gh token has the `project` scope, it also creates the Project "Resolve Faster – AIPM Records". Otherwise it prints `gh auth refresh -s project` and the manual steps.

Requires the GitHub CLI (`gh`), `git`, and `python3`. The script has been syntax-checked with `bash -n` but not run.

## Ground rules

- Everything is synthetic. Do not mix in real company data when presenting.
- The skills are advisory: outputs are proposals until a named person approves them.
- The numbers are internally consistent across all files; [walkthrough.md](walkthrough.md) ends with an answer key.
