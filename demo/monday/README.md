> **Fictional demo data.** Every item, name, and number in this folder is synthetic.

# monday.com import notes

Two boards, one CSV each. monday.com free or trial plan.

> **Fictional notice placement:** the CSVs have no comment line, because the importer reads line 1 as column names. The notice opens the first row's **Notes** cell instead.

## Import steps (both boards)

1. **+ Add → Import data → Excel / CSV**, upload the file. Create a new board named as below.
2. Let monday.com use the first column (`Name`) as the item name.
3. Use the **Group** column to group items (or import, then group by that column and delete it).
4. After import, **set column types** (imports default to text):

### `portfolio-board.csv` → board "Q1 2027 Portfolio Candidates"

| Column | Type |
|---|---|
| Group | Groups: *Committed* (P6), *Candidates* (P1–P5, P7, P8) |
| Strategic theme | Status (labels: Mandatory / regulatory, Retention, Expansion, Discretionary, Operational efficiency) |
| Owner | Text (fictional names; do not invite people) |
| Est. cost (USD) | Numbers, unit $ , footer **Sum** (expect $2,750,000) |
| Data Platform person-weeks | Numbers, footer **Sum** (expect 76; capacity 36) |
| Benefit type | Dropdown (Cash, Avoided cost, Capacity, Revenue) |
| Benefit estimate | Long text |
| Benefit confidence | Status (High / Medium / Low) |
| Dependencies | Long text |
| Status | Status (Mandatory, Proposed, In flight - seeking completion funding) |
| Notes | Long text |

### `program-status-board.csv` → board "Resolve Faster: Executive Status"

| Column | Type |
|---|---|
| Group | Groups: Program, Workstreams, Experiments, Related initiatives |
| Status | Status with colours: Green, Amber, Red |
| Last updated | Date |
| Owner | Text |
| Next milestone | Text |
| Next milestone date | Date |
| Notes | Long text |

**Keep the dates exactly as imported.** The demo depends on RF-3 showing **Green, last updated 2026-10-05**, i.e. 14 days stale on 2026-10-19 and older than both the 2026-10-12 test-tracker export and the 2026-10-14 vendor email.

## Totals to sanity-check after import

- Cost: 300 + 350 + 400 + 600 + 250 + 220 + 180 + 450 = **$2,750K** against a **$1,500K** budget.
- Data Platform: 10 + 12 + 10 + 14 + 8 + 6 + 4 + 12 = **76 person-weeks** against **36** (2.1×). All eight need Data Platform.
