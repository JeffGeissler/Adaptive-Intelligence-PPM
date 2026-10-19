> **Fictional demo data.** Lumen Ridge Outfitters, its people, and every number below are synthetic.

# E-07 "Suggested macros": results write-up

**Owner:** Marco Lindqvist · **Approver:** Dana Whitfield (approved 2026-09-04) · **Written:** 2026-10-09
**Window:** 4 weeks, Tue 2026-09-08 to Sat 2026-10-03 · **Location (would be):** SharePoint > CX Programs > Resolve Faster > Experiments

## Original experiment card (as approved 2026-09-04, unchanged)

- **Outcome served:** Resolve Faster (median resolution 38 h → 24 h by 2027-03-31).
- **Hypothesis:** If HelixDesk suggests a ranked macro for each ticket in the pilot queue, then median resolution time will fall to ≤ 30 h because agents spend less time composing replies. Disconfirming evidence: median > 30 h, or quality guardrails breached.
- **Participants:** Pilot queue "General Orders B", 20 agents. Comparison: "General Orders A", 20 agents, same ticket categories and shift pattern.
- **Measures:** median resolution time (created → final resolved); reopen rate (resolved tickets reopened within 7 days ÷ tickets resolved); CSAT.
- **Guardrails:** reopen rate ≤ 8%; CSAT ≥ 4.3.
- **Continue if:** pilot median ≤ 30 h with both guardrails held.
- **Pivot if:** pilot median improves by ≥ 2 h more than the comparison queue but misses 30 h, with guardrails held.
- **Stop if:** reopen rate > 8% for two consecutive weeks, or CSAT < 4.3 for two consecutive weeks.
- **Inconclusive if:** fewer than 3,000 tickets resolved in either queue, or the category mix shifts by more than 10 percentage points.
- **Pause authority:** not named on the card.

## Results

| Measure | Pilot queue: 4 weeks before | Pilot queue: during | Comparison: 4 weeks before | Comparison: during |
|---|---|---|---|---|
| Tickets resolved | 3,900 | 4,000 | 4,000 | 4,000 |
| Median resolution | 37 h | **33 h** | 37 h | 36 h |
| Reopens (7-day) | 273 (7.0%) | **368 (9.2%)** | 284 (7.1%) | 292 (7.3%) |
| CSAT | 4.4 | 4.3 | 4.4 | 4.4 |

Weekly reopen rate in the pilot queue (1,000 tickets resolved each week):

| Week | Dates | Reopens | Rate |
|---|---|---|---|
| 1 | 09-08 – 09-12 | 81 | 8.1% |
| 2 | 09-14 – 09-19 | 90 | 9.0% |
| 3 | 09-21 – 09-26 | 98 | 9.8% |
| 4 | 09-28 – 10-03 | 99 | 9.9% |
| Total | | 368 | 9.2% |

Category mix shift between periods: 4 percentage points (within the 10-point limit). Volume was above 3,000 in both queues.

## Observations from the team

- Agents reported closing faster when the suggested macro "looked right," especially for refund questions.
- 41% of pilot-queue reopens were refund-status questions (151 of 368). Several customers reopened because the macro stated a refund was complete when it was partially refunded or pending.
- Nobody stopped the test at week 2. The weekly guardrail check (Jira task) was logged as done each week, but the card named no one with authority to pause it.

## Author's summary (Marco)

> "Median improved 4 hours in the pilot queue. We didn't hit 30 h, but this is clearly working. Suggest we extend to 8 weeks and raise the reopen guardrail to 10%, since some reopens are just customers saying thanks."

*Note:* the "thanks" reopens were not measured. No sample of reopen reasons was taken.
