> **Fictional demo data.** Every issue, name, and number in this folder is synthetic.

# Jira import notes: `rf-backlog.csv`

`rf-backlog.csv` is the Resolve Faster delivery backlog, test tracker, risks, and dependencies, **as exported on 2026-10-12** (the date Tess Moreno's test tracker was last updated). 44 rows: 4 epics, 40 stories/tasks/bugs.

> **Fictional notice placement:** the CSV has no comment line, because the Jira importer treats line 1 as the header. The notice is the first sentence of the first row's Description instead.

## Create the project

1. Jira Cloud Free → **Projects → Create project → Scrum**, choose **company-managed**.
2. Name: `Resolve Faster`, key: **`RF`**.
3. Default workflow statuses are **To Do / In Progress / Done**. The CSV uses only these. Blocked items carry the label **`blocked`** instead of a custom status.

## Import

**Settings (cog) → System → External system import → CSV**, upload `rf-backlog.csv`, choose project **RF**, date format `yyyy-MM-dd`.

| CSV column | Map to Jira field | Notes |
|---|---|---|
| Issue Id | Issue Id | Used only to link children to parents during import |
| Parent Id | Parent | Links stories/tasks/bugs to their epic |
| Issue Type | Issue Type | Epic / Story / Task / Bug |
| Summary | Summary | |
| Description | Description | |
| Status | Status | To Do / In Progress / Done |
| Priority | Priority | Highest / High / Medium / Low |
| Labels | Labels | Space-separated; the importer splits on spaces |
| Component | Component/s | Let the importer create: Knowledge Base, Triage, Integration, Chatbot, Experiments, Program |
| Due Date | Due Date | `yyyy-MM-dd` |
| Story Points | Story point estimate | Blank for epics and dependency/risk records |
| Reporter Name | Reporter | On Free with one user, map to yourself, or leave unmapped and keep the name in the Description. Names are fictional. |

The four epics are rows 1–4, so they usually import as **RF-1** Knowledge Base Refresh, **RF-2** AI-Assisted Triage Pilot, **RF-3** Order-Data Integration, and **RF-4** Ridgebot 2.0. Keys depend on import order; check after import.

## Labels used

| Label | Meaning |
|---|---|
| `blocked` | Cannot progress now (stand-in for a Blocked status) |
| `risk` | May happen |
| `issue` | Is happening |
| `dependency` | Needs another team or vendor |
| `test-case` | RF-3 test tracker rows |
| `experiment`, `e-07` | Experiment E-07 records |
| `resolve-faster`, `ridgebot` | Program grouping |

## Test-tracker reconciliation (RF-3)

Test cases are grouped into rows. The totals must reconcile to the 40-case tracker:

| Group | Cases | Passed | Open | Failed |
|---|---|---|---|---|
| TC-01 – TC-12 order lookup | 12 | 12 | | |
| TC-13 – TC-22 shipment tracking | 10 | 10 | | |
| TC-23 – TC-26 identity match | 4 | 4 | | |
| TC-27 – TC-28 identity edge cases | 2 | | 2 | |
| TC-29 – TC-31 refund status (3 bugs) | 3 | | | 3 |
| TC-32 – TC-34 refund status | 3 | | 3 | |
| TC-35 – TC-40 error handling and performance | 6 | | 6 | |
| **Total** | **40** | **26** | **11** | **3** |

14 of 40 not done (35%).

## Useful filters for the demo

- `project = RF AND labels = blocked`
- `project = RF AND labels in (risk, issue, dependency) ORDER BY duedate`
- `project = RF AND labels = test-case AND statusCategory != Done`

## Team-managed projects

New Jira Cloud sites often create *team-managed* projects, which offer only the Epic, Feature, Task, and Subtask issue types and have no Components field. When loading into one:

- Story → **Feature**; Bug → **Task** with the label `bug`.
- Put Component, Story Points, and Reporter (fictional) in a description footer.
- Add the labels `aipm-demo` and `resolve-faster-demo` so the demo can be found and reset with `labels = aipm-demo`.
