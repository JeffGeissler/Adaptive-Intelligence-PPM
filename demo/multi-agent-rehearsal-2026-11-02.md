# Supplied-file multi-agent rehearsal

Actual rehearsal date: 2026-11-02. Fictional scenario cutoff: 2026-10-19 at noon America/Chicago. Review contract: MA-R1 v1. All source data and people in the scenario are synthetic.

## What ran

Two actual specialist agents worked with a coordinating agent. One specialist read the two Monday CSVs and Finance guidance; the other read the Jira CSV and local collaboration fixture. Each read the updated protocol and relevant skills. Their initial work excluded walkthroughs, evaluation answers, and facilitator checks. No live connector reads, external messages, source writes, or accepted human actions occurred.

The specialists produced packets PE-P1 v1 and D-P1 v1. The coordinator relayed material findings and targeted questions between them as explicitly mediated evidence. They returned challenge/reply packets PE-P2 v1 and D-P2 v1. Each disclosed that it had not directly read the other's source slice. The coordinator then checked decision-critical original CSV fields and Finance guidance and consolidated the findings below. This was one collection and one challenge/reply round; no standing agents or recursive delegation.

## What changed after exchange

| Finding | Initial limitation or error | Reconciled result |
| --- | --- | --- |
| Security timing | Delivery packet initially described a latest start “around October 23” without adequate counting rules. | PE-C01 and D-F04r1 clarify that, on weekdays with no holidays, October 26–November 6 contains ten working days inclusive; October 23 is the booking checkpoint if ten working days run after booking. The actual security calendar, commencement rules, and slot remain unknown. October 23 is a proposed steering/escalation checkpoint, not a proven hard deadline. |
| RF-3 exposure | Portfolio slice alone established conditional downstream risk, without proving an active blocker. | Peer delivery evidence names refund tests prevented by mapping defects (Jira CSV Issue Id 36) and six tests prevented by security approval (Id 37). Approval also conditions credentials (Ids 41–42). Link these current blockers to the future freeze exposure without double-counting impacts. |
| Triage value | Monday's 120 hours/$30,000 claim was challenged by the Finance $25/hour rule. | 120 × $25 = $3,000 gross comparison capacity value; subtracting QA/rework gives 36.5 hours only if 120 is gross for the same scope. Gross/net definition, full costs, and cash realization remain unresolved; no validated cash saving is claimed. |
| Capacity | Collaboration fixture proposes possible contractor weeks. | Finance's 36-week baseline remains; 40 is an unapproved sensitivity with missing cost and onboarding. |
| Confidence labels | A peer proposed a Ridgebot confidence conflict. | Coordinator checked original fields: Monday P5 **Benefit confidence = Low**; Jira Id 52 describes **cost-to-complete confidence = medium**. These are different attributes, so no contradiction is established. Evidence instructions now explicitly require checking field meanings. |
| P1/P4 identity | Portfolio mapping could overstate one shared implementation dependency. | P1 explicitly requires RF-3 live and a reopen baseline; P4 specifies order-data access using the RF-3 pattern. Do not claim both are currently blocked in the same way without further evidence. Shared contact benefits still count once. |

## Consolidated brief for the PM and team

Goal: reduce support median resolution to 24 hours by March 31 while protecting quality. The packet establishes recorded delivery obstacles and conditional investment choices, not a current outcome forecast. Current program-wide CSAT/reopen results and fresh acceptance results remain gaps.

Top exposures: active mapping and security-approval blockers; future freeze risk with an untested fallback; conditional portfolio readiness and scarce capacity; disputed benefit arithmetic. The E-07 stop-rule breach is historical and its macros were rolled back; do not report it as a currently enabled experiment.

All actions below are **proposed / awaiting human acceptance or evidence**. Dates are source-needed dates or proposed checkpoints, not accepted assignments.

| ID | Action needed | Responsible role/person (proposed) | Timing and basis | Authority/prerequisite | Done when | Primary evidence |
| --- | --- | --- | --- | --- | --- | --- |
| MA-A1 | Obtain a confirmed security slot and approval-to-credentials/testing path; escalate if the required date cannot be protected. | PM Sam, with Priya as dependency evidence owner | Proposed checkpoint Oct 23 steering; approval needed Nov 6 in source | Security scheduling/approval owner must confirm actual calendar and slot | Booking and credible dated approval path verified; approval itself remains a separate completion condition | Jira CSV Ids 37, 41–42; fixture C-02 |
| MA-A2 | Confirm mapping fixes and rerun blocked refund acceptance cases; obtain approved data access before the remaining data-dependent tests. | Team Tess/vendor | Mapping source due Oct 30; data-dependent tests source due Nov 10; go/no-go date/owner to agree against planned Nov 17 deployment | Mapping remediation; security/data approval; acceptance authority | Current dated test results and explicit acceptance against criteria, rather than vendor certification alone | Jira CSV Ids 31, 36–43; fixture C-01 |
| MA-A3 | Validate the manual fallback with its workload and quality limits. | Team Jordan; PM coordinates fallback decision | Source fallback task due Nov 13, ahead of freeze | Test conditions and authorized fallback owner | Recorded trial results and a human decision on use | Jira CSV Ids 44–45 |
| MA-A4 | Reconcile triage gross/net hours, QA, rework, tool costs, and budget treatment before scale decisions. | PM/Finance Elena, with Marco/Tess supplying effort evidence | Source benefits review Oct 30; allocation review Nov 13 | Finance validates assumptions; sponsor decides scale | Sourced comparable calculation and explicit cash/capacity classification | Jira CSV Ids 21–25; Monday RF-2 row; Finance Benefit rules |
| MA-A5 | Confirm prerequisites and skill-by-period staffing for retention/expansion options; bring the priority/funding choice to Lena. | PM Sam / Priya / Finance; Lena holds funding authority | Source portfolio decision Nov 13 | Confirmed readiness, staffing, recurring costs, priority choice | Baseline-compliant scenarios with conditional starts disclosed and a recorded human decision | Monday P1/P4/P6 and candidate rows; Finance Envelope/Strategic priority |

Aggregate examples remain advisory: P6+P1+P4+P7 uses $1.08M/34 person-weeks; P6+P2+P3 uses $1.30M/34 weeks. Both fit aggregate limits but need prerequisite and staffing confirmation. No scenario is an approved start plan.

## Evidence and validation limits

Primary files: `demo/monday/portfolio-board.csv`, `demo/monday/program-status-board.csv`, `demo/jira/rf-backlog.csv`, `demo/documents/finance-q1-2027-planning-guidance.md`, `demo/collaboration-context.md`. CSV Issue Ids are import locators, not asserted live Jira keys.

Observed: actual participation, source-slice separation, mediated exchange, targeted challenge, corrections, disclosed missing evidence, and advisory action proposals. One inference error reached coordinator review and was corrected; the run therefore does not establish error-free independent agent reasoning. The parent supplied focused peer-review questions, so this is a facilitated rehearsal, not a blind comparative study.

Not tested: denied-source/time-out/injection variants, live cross-agent connector access, restricted-audience enforcement by a runtime, automated action execution, forecast accuracy, or timed efficiency against a single agent. Protocol guidance is not enforcement code. See [acceptance map](../evals/multi-agent-review.md) for the remaining cases.
