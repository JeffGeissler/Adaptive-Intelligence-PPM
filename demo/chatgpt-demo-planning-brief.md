# AIPM demo planning brief for ChatGPT

Prepared for Jeff Mitchell Geissler · 2026-10-19

**Purpose:** Upload this document to a new ChatGPT conversation to plan, rehearse, and tailor demonstrations of Adaptive Intelligence for Portfolio, Program, and Project Management (AIPM). This is a self-contained planning brief; detailed skill instructions and evidence files can be supplied when rehearsing actual outputs.

**Fictional scenario:** Lumen Ridge Outfitters, its people, vendors, records, and numbers are synthetic. The demo illustrates reasoning and management practices. It provides no field evidence of AIPM effectiveness.

## Start the planning conversation

Copy this request after uploading this document:

> Help me plan compelling demos of the AIPM framework and its companion skills using this brief. Begin with three possible storylines, each with an audience, a management problem, a visible turning point, a sequence of two to four skills, and an audience takeaway. Recommend one and explain the choice. Ask at most three questions about audience, duration, and delivery setting; if I have not decided, assume a 20-minute live session for program and portfolio leaders. Then develop the selected storyline into a timed run of show, exact prompts, required files, expected findings, audience interaction, presenter transitions, rehearsal checks, and a fallback using uploaded files. Keep the main demonstration focused on one connected story. Treat the answer key as presenter guidance, not evidence supplied to the model under demonstration. All recommendations remain proposals for human review.

## Framework foundation

**Human judgment establishes purpose and accepts responsibility; AI helps people examine evidence, challenge assumptions, and adapt.**

AIPM treats a plan as the current hypothesis about how to achieve an outcome. Leaders establish intent and boundaries, teams deliver and learn, and people own commitments and consequences. It complements Agile, Scrum, and Lean. Use existing reviews and records, with rigor proportionate to the consequences.

Six ongoing disciplines support that approach:

| Discipline | Question to make visible in a demo |
| --- | --- |
| Strategic intent and value | What should improve, for whom, and how will we know? |
| Evidence and shared understanding | What do we know, how current is it, and what conflicts? |
| Risk and dependency readiness | What threatens the outcome, and when must we respond? |
| Adaptive delivery and learning | What bounded increment or test should come next? |
| Decisions and economic judgment | Who must choose, by when, with which tradeoffs? |
| Leadership and learning continuity | Where will learning change the next decision or practice? |

The three named leadership principles are **True North** (keep the end in mind), **Stay on Target** (continually test alignment), and **Break the Mold** (challenge a consequential assumption, with the leader examining their own contribution first).

The starting sequence is **True North → Evidence Brief → Decision Brief**. A longer adaptive cycle is **Purpose → Challenge → Experiment → Learn → Adapt → Reassess alignment**. These are useful patterns, not required gates. A short demo can use a single skill.

## Skills available

There are eleven skills: one umbrella and ten focused skills. These descriptions summarize their intended behavior; upload the relevant `SKILL.md` files for a faithful rehearsal.

| Skill identifier | Useful output | Demo opportunity |
| --- | --- | --- |
| `aipm` | Routing or connected cycle | Turn “where do I start?” into a focused review sequence. |
| `aipm-true-north` | Draft outcome agreement | Distinguish 180 articles delivered from better customer resolution. |
| `aipm-evidence-brief` | Evidence brief | Preserve the disagreement between Green status, vendor claims, and unfinished tests. |
| `aipm-decision-brief` | Decision brief | Turn a blocker into options, a proposed decision owner, and a deadline. |
| `aipm-stay-on-target` | Alignment review | Ask whether completed work is measurably moving the outcome. |
| `aipm-dependency-readiness` | Exposure brief | Trace security approval → credentials → testing/deployment before the freeze. |
| `aipm-benefits-adoption` | Benefits assessment | Examine the claim that triage saved $30,000. |
| `aipm-applied-learning` | Applied lesson | Evaluate a failed experiment against its original thresholds. |
| `aipm-break-the-mold` | Proposed experiment card | Design a smaller next test with a pause owner and unchanged guardrails. |
| `aipm-portfolio-choices` | Feasible scenario comparison | Compare retention and expansion choices under budget and skill capacity. |
| `aipm-leadership-dialogue` | Facilitation guide | Help the sponsor invite dissent and change a reporting incentive. |

All skills stay advisory. Preserve source references, dates, scope, uncertainty, and dissent. Distinguish facts, interpretations, assumptions, recommendations, and approvals. Unconfirmed owners are **proposed**. Do not send messages, edit trackers, authorize experiments, or commit funds during a demonstration.

## Scenario and dramatic tension

Fix the scenario date at **Monday, 2026-10-19**, even when presenting later. Steering is Friday **2026-10-23**. The holiday change freeze starts **2026-11-20** and runs through **2027-01-08**.

Lumen Ridge Outfitters is a fictional online outdoor retailer with approximately 120 support agents using the fictional HelixDesk platform. Sponsor Dana Whitfield wants the **Resolve Faster** program to reduce median resolution time from **38 hours in Q2 2026 to 24 hours by 2027-03-31**. September is at **36 hours**. Guardrails are CSAT ≥ 4.3/5 (baseline 4.4) and reopen rate ≤ 8%. Reopen tracking began on 2026-08-01: the August–September 7.1% figure is not a Q2 baseline.

The executive board looks reassuring. The underlying records expose unfinished tests, unverified benefits, scarce capacity, and lessons that did not change practice. A strong demo follows one of those tensions through to a human choice.

Key fictional roles: Dana Whitfield, sponsor; Sam Okafor, program lead; Tess Moreno, test evidence; Priya Raman, Data Platform dependency; Ravi Shah, vendor contact; Marco Lindqvist, triage and macros; Jordan Avery, knowledge base; Elena Park, Finance validation; Lena Brooks, CFO and portfolio funding; Omar Haddad, Ridgebot. A role in the story does not establish acceptance of a new proposed action.

## Three suggested demo storylines

These are proposed formats, not completed rehearsals or measured timings.

| Storyline | Audience and length | Sequence | Visible turning point |
| --- | --- | --- | --- |
| From Green status to a steering decision | Program leaders and executives; 15–20 minutes | True North → Evidence Brief → Dependency Readiness or Decision Brief | A newer vendor email does not resolve the test conflict; the missing security review needs a decision now. |
| Did the AI pilot create value? | Transformation, operations, Finance; 8–12 minutes | Benefits & Adoption → Applied Learning → Break the Mold | $30,000 becomes a mistaken gross claim; checking and rework change the economics; the next test needs explicit limits. |
| What should we fund next quarter? | Portfolio leaders and PMOs; 15–20 minutes | True North → Portfolio Choices → Decision Brief | A mix fits the budget but exceeds Data Platform capacity; strategy changes which feasible mix is preferred. |

**Recommended starting point:** the Green-status story. It connects the outcome, conflicting sources, readiness, and a pending decision in a single program. Use a separate short segment for triage economics if time allows. Save the full skill catalog for discussion.

## Source packet and access

The following paths are relative to the repository's `demo/` folder. Paths and URLs in this document do not automatically give a new chat file contents or connector permissions. Upload the chosen files; confirm access independently before a live session.

| Source | Use |
| --- | --- |
| `scenario.md` | Narrative, cast, outcomes, dates, and constraints |
| `documents/2026-10-05-status-deck-notes.md` | Reassuring executive narrative and leadership context |
| `documents/2026-10-14-helixdesk-vendor-update.md` | Vendor testing claim and its limited scope |
| `jira/rf-backlog.csv` | All 44 delivery, test, dependency, risk, and experiment records |
| `monday/program-status-board.csv` | Six executive status rows, including RF-3's stale Green |
| `monday/portfolio-board.csv` | Eight portfolio candidates and their constraints |
| `documents/rf2-triage-pilot-business-case.md` | Triage effort, cost, and benefit claim |
| `documents/e07-suggested-macros-results.md` | Original experiment thresholds and observed results |
| `documents/ridgebot-2-steering-memo.md` | Completion, SaaS, and stop alternatives |
| `documents/finance-q1-2027-planning-guidance.md` | Budget, capacity, and benefit treatment |
| `documents/rf3-july-retro-notes.md` | Prior warning and unimplemented leadership actions |
| `walkthrough.md` | Presenter prompts and detailed expected findings; keep out of a blind rehearsal |

Framework and canonical skills are in `docs/framework.md` and `skills/<skill-identifier>/SKILL.md` at the repository root. For the recommended story, upload the framework, the three selected skill files, and the scenario, status deck, vendor update, Jira CSV, and program-status CSV. Supply an earlier stage's reviewed output explicitly when chaining stages.

**Verified setup as of 2026-10-19:** connected reads found all 44 Jira records and all 14 Monday items already populated; their source content matched the local CSVs. This verification created no external records. Jira uses **KAN**, with epics KAN-4 (RF-1), KAN-5 (RF-2), KAN-6 (RF-3), and KAN-7 (Ridgebot). Scenario names RF-1/RF-2/RF-3 are workstream names, not live issue keys.

- [Jira demo records](https://jageissler.atlassian.net/issues/?jql=labels%20%3D%20aipm-demo): filter `project = KAN AND labels = aipm-demo`.
- [Monday portfolio board](https://jageisslers-team.monday.com/boards/18436169866): eight candidates.
- [Monday program-status board](https://jageisslers-team.monday.com/boards/18436169867): six items.

Treat this as a dated access snapshot. GitHub issues/Project availability was not verified during that check. SharePoint is deferred; its scenario documents are local Markdown. Neither tool is required to run the demo from uploaded files.

## Starter prompts for rehearsal

**Outcome:** “Using True North, draft an outcome agreement for Resolve Faster for steering on 2026-10-23. Today in the scenario is 2026-10-19. Identify baseline gaps and keep ownership proposed until accepted.”

**Evidence:** “Using Evidence Brief, is RF-3 ready for the planned 2026-11-17 deployment? Compare these sources, preserve conflicts, and distinguish source dates from what each source actually covers.”

**Decision:** “Using Decision Brief and this reviewed evidence brief, identify the most urgent steering decision. Give options including waiting, consequences, the proposed decision owner, required date, and missing evidence. Keep your recommendation separate from approval.”

**Economics:** “Using Benefits & Adoption, should we scale triage because the pilot claims $30,000 saved? Check the arithmetic, include QA and rework, and distinguish released capacity from cash.”

**Learning:** “Using Applied Learning, evaluate E-07 against its original criteria. Marco proposes eight more weeks and a 10% reopen guardrail. What is supported, what remains uncertain, and what would need a new decision?”

**Portfolio:** “Using Portfolio Choices, compare retention-first and expansion-first Q1 scenarios. Fund mandatory work first, check both budget and Data Platform capacity, and avoid counting overlapping benefits twice.”

## Presenter answer key — keep separate from demonstration evidence

Use these checks to assess a rehearsal. Do not paste them into the same conversation and then present the result as independent discovery.

| Check | Expected finding |
| --- | --- |
| Progress | 38 → 36 h closes 2 of the 14 hours needed; attribution to a workstream is unproven. |
| RF-3 evidence | 40 cases = 26 passed + 11 open + 3 failed. Fourteen are not done; avoid calling all 14 “open.” |
| Vendor scope | Certification suite in staging with synthetic data and standard refund states; it does not establish full customer acceptance readiness. |
| Staleness | RF-3 Green dated 2026-10-05 is 14 days old on the scenario date. Preserve the inconsistency. |
| Security | Review unscheduled, needed 2026-11-06. The kit proposes a 2026-10-26 start for a 10-business-day lead time; state counting conventions and holiday assumptions when rehearsing. |
| Fallback | 6 min × 2,400 tickets/week ÷ 60 = 240 agent hours/week; approximately 1,680 over seven weeks, a capacity estimate. |
| Triage | 120 × $25 = $3,000 gross. Net hours = 120 − 70 − 13.5 = 36.5; capacity value $912.50 less $4,200 tool cost = −$3,287.50. Realized cash savings are $0 with staffing unchanged. This is not a measured cash loss of $3,287.50. |
| E-07 | Median 33 h misses ≤ 30 h. Reopens 9.2% breach the 8% guardrail; the two-week stop trigger was reached. An extension requires a new decision. |
| Ridgebot | Exclude $410K sunk cost from forward comparison. Three years: complete $220K + 3 × $70K = $430K; SaaS $60K + 3 × $95K = $345K, subject to scope and assumptions. |
| Portfolio | $2.75M and 76 person-weeks demand vs $1.5M and 36 available. Mandatory P6 consumes $300K and 10 weeks. |
| Feasibility | P6 + P1 + P5 + P2 costs $1.27M but needs 38 weeks: infeasible. Retention example P6 + P1 + P4 + P7 costs $1.08M/34 weeks; expansion example P6 + P3 + P2 costs $1.30M/34 weeks. These are proposed mixes, not funding approvals. |
| Overlap | P1 and P4 claim the same 25,000 avoided contacts; their combined benefit cannot simply be doubled. |

## What ChatGPT should produce after we choose a story

1. A one-sentence audience takeaway and a clear opening management question.
2. A timed agenda that includes reading time, model response time, human review, and audience discussion.
3. For each segment: screen or file, exact prompt, expected visible finding, source check, presenter narration, transition, and a cut if running late.
4. Two audience questions at meaningful decision points, before revealing the expected findings.
5. A minimum upload packet and a fallback using files if connectors or network access fail.
6. A rehearsal scorecard: evidence fidelity, arithmetic, uncertainty, ownership, advisory boundaries, readability, and total elapsed time including corrections.
7. A closing question about how the audience would change an existing review or decision, plus one bounded next step.

Keep planning and performance claims separate. A successful rehearsal shows the intended behavior on synthetic material; it does not establish production reliability or organizational benefit. Label prepared outputs as prepared, identify model errors candidly, and distinguish a fresh single-skill run from a connected run carrying previous outputs forward.

## Further tailoring requests

- “Compress the chosen story to five minutes with one visible finding and one human decision.”
- “Expand it into a 45-minute workshop with small-group choices and a debrief.”
- “Write speaker notes in my voice, with plain language and minimal methodology terminology.”
- “Act as a skeptical CFO and challenge the benefit assumptions and feasible portfolio mixes.”
- “Rehearse a failure: the model trusts the vendor email, misses a calculation, or claims approval. Show how I should inspect and correct it live.”
- “Create a checklist of the exact files I need to upload next; distinguish essential evidence from optional context.”

## Provenance

Prepared from the repository README, AIPM framework, umbrella skill, demo walkthrough, and verified setup record. The framework and skill specifications are working proposals without claimed field validation. This brief summarizes them for demo planning; canonical skill files retain the detailed instructions.
