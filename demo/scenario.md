> **Fictional demo data.** Lumen Ridge Outfitters, its people, its vendors, and every number below are synthetic. Any resemblance to real organizations or people is coincidental.

# Scenario: Resolve Faster at Lumen Ridge Outfitters

**Today is Monday 2026-10-19.** The steering committee meets on Friday 2026-10-23. The holiday-peak change freeze starts on Friday 2026-11-20.

## The company

Lumen Ridge Outfitters is a fictional online outdoor-gear retailer with about 120 customer-support agents. Support runs on **HelixDesk**, a fictional helpdesk platform. Order data lives in a separate order system. A chatbot, **Ridgebot**, handles some first-contact chats.

## The program

**Resolve Faster** was chartered on 2026-07-01 by Dana Whitfield, VP Customer Experience.

| Element | Value | Source / note |
|---|---|---|
| Outcome measure | Median customer-support resolution time (hours, created → final resolved, all channels) | HelixDesk |
| Baseline | **38 hours** | Q2 2026 HelixDesk export (2026-04-01 to 2026-06-30) |
| Target | **24 hours** by **2027-03-31** | Charter |
| Latest observation | 37 h (Aug 2026), **36 h (Sep 2026)** | HelixDesk monthly export |
| Guardrail: CSAT | **≥ 4.3 / 5** (baseline 4.4, Q2 2026); Sep 2026 observed 4.4 | HelixDesk survey |
| Guardrail: reopen rate | **≤ 8%** | **BASELINE GAP:** tracking began 2026-08-01; Aug–Sep 2026 observed **7.1%**; no Q2 baseline exists |

Progress to date: 38 → 36 h is 2 h of the 14 h reduction needed (14%). 12 h remain in about 5.5 months, roughly 7 weeks of which fall inside the change freeze (2026-11-20 to 2027-01-08).

## Workstreams

### RF-1 Knowledge Base Refresh (owner: Jordan Avery)
- **Output complete:** 180 help-center articles rewritten and published by 2026-09-30; 62 outdated articles retired.
- **Adoption signal:** article views up 45% (Q2 2026 average 41,000/month → Aug–Sep 2026 average 59,450/month; 41,000 × 1.45 = 59,450).
- **Outcome link unmeasured:** no instrumentation connects article views to fewer tickets (deflection) or faster resolution. The status deck reports "180/180 articles, views +45%" as progress.

### RF-2 AI-Assisted Triage Pilot (owner: Marco Lindqvist)
- Pilot ran 2026-07-06 to 2026-09-25 (Q3 2026) on one 30-agent queue; 4,800 tickets auto-routed.
- **Business-case claim:** "120 agent hours saved = $30,000 savings" at a $25/hour loaded agent cost. (The claim is quoted as written; see the arithmetic in the walkthrough: 120 × $25 = $3,000.)
- **Costs the claim omits:** QA review added 70 hours; 9 misroutes required rework at about 1.5 hours each (13.5 hours); tool cost $4,200 for the quarter.
- **No budget change:** the released hours were not removed from the Q4 staffing budget, so no cash was saved.

### RF-3 Order-Data Integration (HelixDesk ↔ order-system API; vendor contact: Ravi Shah)
- **Vendor email 2026-10-14:** "integration testing complete."
- **QA test tracker (Jira export as of 2026-10-12, Tess Moreno):** 40 test cases: 26 passed, 11 open, 3 failed (refund-status mapping). 14 of 40 not done.
- **monday.com status:** Green, last set 2026-10-05.
- **Dependency:** Priya Raman's Data Platform team needs **security-review approval for production order-data access** by **2026-11-06** to deploy before the freeze (planned deploy 2026-11-17). Review requested 2026-09-29; **not yet scheduled**. Security's standard lead time is 10 business days once scheduled, so the review must start by Monday 2026-10-26 to finish by Friday 2026-11-06.
- **Fallback:** a manual order-lookup macro that adds about 6 minutes per order-related ticket. Peak order-related volume is estimated at 2,400 tickets/week, so the fallback costs about 240 agent hours/week (2,400 × 6 min ÷ 60), or about 1,680 hours over the 7-week freeze.
- **History:** RF-3 went from green to red abruptly at the 2026-07-21 steering meeting. The 2026-07-29 retro notes include "nobody wanted to be the one to call it red."

### Experiment E-07 "Suggested macros" (owner: Marco Lindqvist; completed)
- 4 weeks, 2026-09-08 to 2026-10-03; pilot queue of 20 agents vs a comparable 20-agent queue.
- Pre-agreed target: pilot median ≤ 30 h. **Observed 33 h** (comparison queue 36 h; both queues were 37 h in the 4 weeks before).
- Reopen rate in the pilot queue rose from **7.0% to 9.2%** (guardrail 8%); comparison queue 7.1% → 7.3%.
- The stop criterion (reopen > 8% for two consecutive weeks) was **met at the end of week 2** (8.1%, 9.0%), but the test ran all four weeks. Macros were rolled back on 2026-10-03.

### Ridgebot 2.0 chatbot rebuild (owner: Omar Haddad, CIO; related initiative, not in Resolve Faster scope)
- Original budget $300K, original go-live 2026-05-15. **Spent $410K; 5 months late.** Estimated **$220K more** to finish (revised go-live 2027-02-26 if funded).
- In-house run cost after launch estimated at $70K/year.
- **SaaS alternative (fictional "Vendor S"):** $95K/year subscription + $60K one-time migration; quote valid to 2026-11-30.
- Leadership quote in the 2026-10-02 steering memo: "we've invested too much to walk away."

## Q1 2027 portfolio planning

$1.5M discretionary budget. Data Platform capacity: 3 FTE × 12 weeks = **36 person-weeks per quarter**. Eight candidates are on the monday.com portfolio board ([portfolio-board.csv](monday/portfolio-board.csv)); demand is 76 person-weeks (2.1× capacity) and $2.75M. P6 (PCI DSS) is mandatory. P1 and P4 both claim the same 25,000 return/refund-status contacts per year. The decision is due at the Q1 planning review on 2026-11-13 (Lena Brooks, CFO).

## People (all fictional role-holders)

| Name | Role | In this demo |
|---|---|---|
| Dana Whitfield | VP Customer Experience | Sponsor and outcome owner of Resolve Faster |
| Sam Okafor | Program lead | Runs Resolve Faster and the status deck |
| Priya Raman | Data Platform lead (team of 3 FTE) | Provider for RF-3 data access; shared bottleneck in portfolio |
| Marco Lindqvist | AI triage pilot owner | Owns RF-2 and E-07 |
| Jordan Avery | Knowledge base lead | Owns RF-1 |
| Elena Park | Finance partner | Benefits validation; budget treatment of released hours |
| Tess Moreno | QA lead | Owns the RF-3 test tracker and RF-2 QA review |
| Ravi Shah | HelixDesk vendor account manager | Sent the 2026-10-14 "testing complete" email |
| Lena Brooks | CFO | Funding authority for Q1 2027 portfolio |
| Omar Haddad | CIO | Owns Ridgebot 2.0 and security review prioritization |

## Timeline

| Date | Event |
|---|---|
| 2026-04-01 – 06-30 | Q2 baseline period (median 38 h, CSAT 4.4; reopen rate not tracked) |
| 2026-05-15 | Ridgebot 2.0 original go-live (missed) |
| 2026-06-20 | RF-2 triage business case written |
| 2026-07-01 | Resolve Faster chartered |
| 2026-07-06 | RF-2 triage pilot starts |
| 2026-07-21 | RF-3 turns from green to red at steering |
| 2026-07-29 | RF-3 retrospective |
| 2026-08-01 | Reopen-rate tracking begins |
| 2026-09-08 | E-07 suggested macros starts |
| 2026-09-19 | E-07 stop criterion met (end of week 2); test continues |
| 2026-09-25 | RF-2 pilot ends |
| 2026-09-29 | Security review for production order-data access requested |
| 2026-09-30 | RF-1: 180 articles complete |
| 2026-10-02 | Ridgebot 2.0 steering memo |
| 2026-10-03 | E-07 ends; macros rolled back |
| 2026-10-05 | Status deck: all workstreams Green; monday.com RF-3 set Green |
| 2026-10-09 | E-07 results write-up; RF-2 pilot results review |
| 2026-10-12 | QA test tracker export: 14 of 40 cases not done |
| 2026-10-14 | Vendor email: "integration testing complete" |
| **2026-10-19** | **Today** |
| 2026-10-23 | Steering committee |
| 2026-10-26 | Latest start for a 10-business-day security review |
| 2026-11-06 | Security approval needed |
| 2026-11-13 | Q1 2027 portfolio decision (CFO) |
| 2026-11-17 | RF-3 planned production deploy |
| 2026-11-20 – 2027-01-08 | Holiday change freeze |
| 2026-11-30 | SaaS chatbot quote expires |
| 2027-03-31 | Resolve Faster target date; PCI DSS regulatory deadline |

## Embedded tensions

| # | Tension | Where it lives | AIPM skill it demonstrates |
|---|---|---|---|
| 1 | Charter states the target but no owner-signed outcome agreement; reopen rate has no Q2 baseline | scenario, GitHub outcome issue | True North |
| 2 | RF-3: vendor "testing complete" vs 14/40 tests open vs a 14-day-old Green | vendor email, Jira, monday.com | Evidence Brief |
| 3 | Ridgebot 2.0: "we've invested too much to walk away" | steering memo, portfolio board | Decision Brief |
| 4 | RF-1: 180 articles and +45% views reported as progress; effect on resolution unmeasured | status deck, Jira | Stay on Target |
| 5 | Security review not scheduled; 2026-11-06 needed date; freeze; costly fallback | Jira, vendor email | Dependency Readiness |
| 6 | After E-07, what is the next test, and who can pause it? | E-07 results | Break the Mold |
| 7 | RF-2: "$30,000 savings" from hours that were never removed from budget, before checking and correction | business case, Jira | Benefits & Adoption |
| 8 | E-07 missed target and breached the reopen guardrail; ran two weeks past its stop point | E-07 results | Applied Learning |
| 9 | Data Platform demand 76 vs 36 person-weeks; overlapping P1/P4 benefits; mandatory P6 | portfolio board, finance guidance | Portfolio Choices |
| 10 | "Nobody wanted to be the one to call it red" and a new stale Green | July retro, status deck | Leadership Dialogue |
