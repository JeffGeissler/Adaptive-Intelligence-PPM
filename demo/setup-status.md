# Demo setup verification

Verified 2026-10-19 (America/Chicago) through the connected Jira and monday.com tools. All demo content is fictional and synthetic.

## Jira

- Site access reports Jira read-write; searches successfully retrieved the existing demo issues. No write was needed or tested in this verification.
- The existing demo uses **KAN**, rather than the proposed RF project key. [Open demo issues](https://jageissler.atlassian.net/issues/?jql=labels%20%3D%20aipm-demo).
- All **44** CSV records already exist once each as **KAN-4 through KAN-47**: four epics and 40 children/standalone records. The complete label search returned no further page.
- Compared every summary, description prefix, status name, priority, due date, source label, issue type mapping and parent relationship with `jira/rf-backlog.csv`: no differences.
- Team-managed adaptation follows `jira/README.md`: Story → Feature; Bug → Task with a `bug` label. Component, story points and fictional reporter are preserved in description footers. Both demo labels are present on all 44 records.

| Scenario workstream | Live epic |
| --- | --- |
| RF-1 Knowledge Base Refresh | [KAN-4](https://jageissler.atlassian.net/browse/KAN-4) |
| RF-2 AI-Assisted Triage Pilot | [KAN-5](https://jageissler.atlassian.net/browse/KAN-5) |
| RF-3 Order-Data Integration | [KAN-6](https://jageissler.atlassian.net/browse/KAN-6) |
| Ridgebot 2.0 | [KAN-7](https://jageissler.atlassian.net/browse/KAN-7) |

Use `project = KAN AND labels = aipm-demo` in place of `project = RF` in the example filters. The RF-3 grouped test tracker retains 26 passed and 14 not done out of 40 cases (11 open and three failed).

## monday.com

Board metadata and full item reads succeeded. No write was needed or tested in this verification.

| Board | Existing records | Verification |
| --- | --- | --- |
| [Lumen Ridge – Portfolio Q1 2027 (demo)](https://jageisslers-team.monday.com/boards/18436169866) | 8 | Every CSV cell and group matches `monday/portfolio-board.csv`; cost $2,750,000 and Data Platform demand 76 person-weeks. |
| [Resolve Faster – Program Status (demo)](https://jageisslers-team.monday.com/boards/18436169867) | 6 | Every CSV cell and group matches `monday/program-status-board.csv`; RF-3 remains Green with Last updated 2026-10-05. |

Both item reads returned complete pages. Existing column types differ in a few places from the suggested import configuration: Strategic theme and portfolio Status are Dropdowns; Benefit type and Dependencies are Text. Their displayed values match the CSVs. No column conversion was necessary for this data verification.

## Result and scope

The requested Jira and Monday synthetic data was already fully populated. Created zero records and changed zero external records, avoiding a duplicate import. This verifies stored content, not every UI feature or write permission. GitHub setup and SharePoint were outside this verification.
