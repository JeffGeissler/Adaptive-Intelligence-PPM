> **Fictional demo data.** Lumen Ridge Outfitters, its people, its vendors, and every number below are synthetic.

# Speaker walkthrough: AIPM skills on Resolve Faster

Use this script to show each AIPM skill working on the messy records in this folder. The demo date is **Monday 2026-10-19**; tell the model so if it asks. Paths are relative to `demo/`.

**Before you start**
- Install the skills (see the repository README) so Claude can find `aipm` and the ten `aipm-*` skills.
- Open three tabs: the monday.com status board (RF-3 **Green, 2026-10-05**), the Jira RF backlog filtered to `labels = test-case`, and the GitHub Project "Resolve Faster – AIPM Records".
- Start a fresh conversation for each skill, or the model will reuse earlier conclusions.
- Have [scenario.md](scenario.md) open for numbers if questions come up.

## 20-minute run of show

Starting sequence: **True North → Evidence Brief → Decision Brief.**

| Time | Segment | What you show | Files to attach |
|---|---|---|---|
| 0:00–2:00 | The setup | Lumen Ridge, the 38 h → 24 h goal, steering on Friday. Click the three tabs: monday says Green, Jira shows 14 open tests, GitHub holds the records. | — |
| 2:00–4:00 | Where do I start? (`aipm`) | The umbrella skill routes the request and proposes the starting sequence. | status deck, vendor email |
| 4:00–7:00 | 1. True North | Charter becomes a draft outcome agreement; the reopen BASELINE GAP surfaces. | scenario, status deck |
| 7:00–11:00 | 2. Evidence Brief | Three sources disagree about RF-3. The brief keeps the conflict visible. **Pause here for the room.** | vendor email, Jira CSV, monday status CSV |
| 11:00–15:00 | 3. Decision Brief | The security review becomes a decision with an owner and a date; Ridgebot sunk cost is set aside. | evidence brief output, Ridgebot memo |
| 15:00–18:00 | Lightning round | Pick one: Benefits & Adoption ("$30,000" becomes −$3,287.50) or Applied Learning (E-07 ran two weeks past its stop point). | business case or E-07 results |
| 18:00–20:00 | Close | Show the GitHub issue forms: every output is a *proposal* until a named human approves it. Q&A. | — |

Backup if time is short: skip the umbrella segment and open with True North.

---

## 0. AIPM umbrella (`aipm`)

**Supply:** `documents/2026-10-05-status-deck-notes.md`, `documents/2026-10-14-helixdesk-vendor-update.md`, `monday/program-status-board.csv`

**Prompt:**
> I'm Sam Okafor, program lead for Resolve Faster. Steering committee is Friday 2026-10-23 and today is 2026-10-19. Here's last month's status deck, the latest vendor email, and our monday.com status board. Where do I start?

**What a good answer should notice**
- Routes rather than doing everything: names the starting sequence (True North → Evidence Brief → Decision Brief) and says in one line why.
- Notices the steering pack has "Asks: None" although at least one decision appears pending (the unscheduled security review).
- Flags that the status colours are interpretations, and that RF-3's Green (2026-10-05) predates the vendor email (2026-10-14).
- Does not ask a long list of questions before producing something useful.

## 1. True North (`aipm-true-north`)

**Supply:** `scenario.md` (Program section only, or paste it), `documents/2026-10-05-status-deck-notes.md`

**Prompt:**
> Turn the Resolve Faster charter into an outcome agreement we can take to steering on Friday. Dana Whitfield is the sponsor.

**What a good answer should notice**
- Marks the agreement **DRAFT** and Dana as **PROPOSED** outcome owner until she accepts it.
- Measure: median resolution time, baseline 38 h (Q2 2026 HelixDesk), target 24 h by 2027-03-31. Reduction needed: 38 − 24 = 14 h (36.8%). Achieved so far: 38 − 36 = 2 h, i.e. 2 ÷ 14 = 14% of the gap with about 5.5 months left, 7 weeks of them in the freeze.
- **Reopen-rate BASELINE GAP:** tracking began 2026-08-01; Aug–Sep 7.1% is not a Q2 baseline. Proposes a collection step (reconstruct Q2 from the event log, or agree a reference period) rather than inventing a number.
- Warns the measure can be gamed by closing tickets early, which is why the reopen and CSAT guardrails matter; a priority rule such as "guardrails beat speed."
- Separates outputs (180 articles, AI triage, order data in tickets) from the outcome; keeps open questions to about five.

## 2. Evidence Brief (`aipm-evidence-brief`)

**Supply:** `documents/2026-10-14-helixdesk-vendor-update.md`, `jira/rf-backlog.csv`, `monday/program-status-board.csv`, `documents/2026-10-05-status-deck-notes.md`

**Prompt:**
> For Friday's steering: is RF-3 Order-Data Integration ready to deploy on 2026-11-17, before the freeze? Build an evidence brief from these sources.

**What a good answer should notice**
- **Three claims conflict and stay visible:** vendor "integration testing complete" (2026-10-14); Jira test tracker 26 of 40 passed, 11 open, 3 failed (export 2026-10-12); monday.com Green (last set 2026-10-05). It does not pick one silently.
- 14 of 40 not done = 35% (26 + 11 + 3 = 40). The 3 failures are all refund-status mapping (TC-29 to TC-31), and 3 more refund cases are blocked behind them.
- The vendor email is the newest source but not the most complete: it covers the vendor's certification suite, in staging, with synthetic data, and only the standard refund states. Recency is not accuracy.
- The monday.com Green is **stale** (14 days old on 2026-10-19) and is an interpretation; it predates both other sources.
- 6 cases (TC-35 to TC-40) cannot run without production-like data, which needs the unscheduled security review. Questions go to named owners: Tess (fresh test status), Ravi (suite scope), Priya (review date).

## 3. Decision Brief (`aipm-decision-brief`)

**Supply:** the Evidence Brief output from step 2 (or `jira/rf-backlog.csv`), `documents/ridgebot-2-steering-memo.md`, `documents/finance-q1-2027-planning-guidance.md`

**Prompt:**
> Using this evidence, what decisions do we actually need from steering on Friday? Write decision briefs for the top one or two.

**What a good answer should notice**
- **Decision 1, RF-3 security review:** needed by 2026-11-06. At a 10-business-day lead time, the review must start by Monday 2026-10-26, so Friday's steering (2026-10-23) is the last meeting at which to act. Owner proposed (for example the CIO, who prioritizes security reviews), not assumed.
- Options include **waiting**, with its consequence: the fallback macro at ~6 min × 2,400 order tickets/week ÷ 60 = 240 agent hours/week; × 7 weeks of freeze ≈ 1,680 hours (≈ $42,000 at $25/h, **capacity, not cash**, unless overtime is paid).
- **Decision 2, Ridgebot 2.0:** treats the $410K spent and "we've invested too much to walk away" as **sunk cost, context only**. Compares cost to complete against alternatives, e.g. over three years: complete = $220K + 3 × $70K = $430K; SaaS = $60K + 3 × $95K = $345K; difference $85K. Downside case: if the $220K estimate is 35% low again, completion ≈ $297K + $210K = $507K.
- Notes reversibility (SaaS subscription is easier to exit than another $220K of build), the SaaS quote expiry (2026-11-30), the unverified vendor containment claim, and that a 10-week SaaS rollout would collide with the freeze.
- Keeps the recommendation separate from evidence; routes funding to Lena Brooks (CFO) on 2026-11-13; says a recommendation is not an approval.

## 4. Stay on Target (`aipm-stay-on-target`)

**Supply:** `documents/2026-10-05-status-deck-notes.md`, `jira/rf-backlog.csv`, the outcome agreement from step 1 (or `scenario.md`)

**Prompt:**
> Everything in the deck is green and RF-1 is 100% done. Are we actually getting closer to 24 hours?

**What a good answer should notice**
- RF-1 is **activity and adoption, not outcome**: 180/180 articles is an output; views +45% (41,000 → 59,450/month) is an adoption signal. Deflection and resolution effect are **unmeasured** (Jira story "Measure deflection" not started).
- Program median moved 38 → 36 h (2 of 14 h). No evidence attributes that to any workstream: RF-1 finished 2026-09-30, E-07 covered only 20 of ~120 agents and was rolled back, and RF-2 never reported resolution time.
- Flags **drift**: the French-Canadian translation task has no link to the outcome and was added without a change request.
- Diagnosis is **insufficient evidence**, not "the approach failed"; the goal itself still looks valid.
- Proposes owner-assigned actions (e.g. Jordan: define the KB-assisted resolution measure by 2026-11-06), without stopping work automatically.

## 5. Dependency Readiness (`aipm-dependency-readiness`)

**Supply:** `jira/rf-backlog.csv`, `documents/2026-10-14-helixdesk-vendor-update.md`, `documents/finance-q1-2027-planning-guidance.md`

**Prompt:**
> What could stop RF-3 from going live before the freeze, and when do our options run out?

**What a good answer should notice**
- The security review is a **blocker** now (6 test cases and production credentials wait on it), not just a risk. Readiness evidence: **none**; "requested 2026-09-29" is not readiness.
- Chain: Security → Data Platform (Priya) → vendor (credentials, < 2 days to deploy) → RF-3. Needed 2026-11-06; today is 2026-10-19 (18 calendar days, 14 business days). Response deadline: review start by 2026-10-26.
- **Interacting dependencies:** the refund-mapping bugs block TC-32 to TC-34 independently of the review, and the same 3-person Data Platform team is the bottleneck for most Q1 2027 candidates.
- Freeze margin: deploy 2026-11-17 leaves 3 days before 2026-11-20; missing it means waiting until after 2027-01-08 (7 weeks). Fallback cost ≈ 240 agent h/week; the macro itself is drafted but untested.
- Proposes triggers (e.g. "not scheduled by 2026-10-23 → escalate to CIO") and **proposed** owners; no invented probability or risk score.

## 6. Break the Mold (`aipm-break-the-mold`)

**Supply:** `documents/e07-suggested-macros-results.md`, the outcome agreement from step 1 (or `scenario.md`)

**Prompt:**
> E-07 didn't work. Design the next experiment that could genuinely move median resolution time, without repeating E-07's mistakes.

**What a good answer should notice**
- Starts from the outcome and picks **one** consequential assumption (for example, "agents can close refund tickets accurately without verified refund data") rather than re-running E-07 with looser limits.
- Rejects raising the reopen guardrail to 10%: that is changing a threshold after seeing results.
- Names a **pause owner with authority** and an automatic weekly guardrail check, because E-07 had neither and ran two weeks past its stop point.
- Uses a comparison queue and a stated reopen reference (Aug–Sep 7.1%, labelled as not a Q2 baseline); caps include QA and correction effort, not just tool cost.
- Checks the calendar: a 4-week test starting after 2026-10-23 runs into the 2026-11-20 freeze; asks whether macro or configuration changes count as changes under the freeze. Card stays **PROPOSED** until Dana approves.

## 7. Benefits & Adoption (`aipm-benefits-adoption`)

**Supply:** `documents/rf2-triage-pilot-business-case.md`, `documents/finance-q1-2027-planning-guidance.md`

**Prompt:**
> Marco wants to scale AI triage to all queues in Q1 because the pilot saved $30,000. Did it actually pay off?

**What a good answer should notice**
- **Arithmetic error in the claim:** 120 h × $25/h = **$3,000**, not $30,000. The scale-up figure "$120,000 per quarter" inherits the error (4 × $3,000 = $12,000 gross).
- **Net hours:** 120 − 70 (QA review) − 13.5 (9 misroutes × 1.5 h) = **36.5 hours**. At $25/h that is $912.50 of capacity value, against a $4,200 tool cost: 912.50 − 4,200 = **−$3,287.50**. Even the gross 120 h ($3,000) does not cover the tool.
- **Released hours are capacity, not cash:** the Q4 staffing budget did not change, so realized cash savings are $0 (Finance rule and Elena Park's note).
- Value chain stops early: deployed yes; used yes (4,800 tickets); behaviour change only estimated (1.5 min time study); outcome (resolution time) **not reported**; financial value none. The 0.19% misroute rate (9 ÷ 4,800) meets the < 1% criterion, which is not the same as creating value.
- Persistence: will 70 h of QA recur every quarter or fall as confidence grows? States this as an assumption and recommends a decision for the benefit owner and Finance, not a verdict.

## 8. Applied Learning (`aipm-applied-learning`)

**Supply:** `documents/e07-suggested-macros-results.md`, `jira/rf-backlog.csv` (optional, for the refund bugs)

**Prompt:**
> Run the E-07 results review. Marco suggests extending to 8 weeks and raising the reopen guardrail to 10%. What did we learn and what should change?

**What a good answer should notice**
- Verdict against the **original** criteria: **STOP**. Median 33 h missed the ≤ 30 h target, and the reopen rate exceeded 8% for two consecutive weeks (8.1%, 9.0%) by 2026-09-19. The pivot rule (≥ 2 h better than comparison: pilot −4 h vs comparison −1 h = 3 h) does not apply because the guardrails were not held.
- Refuses to rewrite thresholds or silently extend; an extension would be a **new** decision.
- Quantifies the harm: at the prior 7.0% rate, 4,000 tickets would give 280 reopens; observed 368, so **88 extra reopens**. Weeks 3–4, run after the stop point, had 98 + 99 = 197 reopens vs ~140 expected (2 × 1,000 × 7.0%), about 57 extra.
- Links the cause to the system: 151 of 368 reopens (41%) were refund-status questions, the same area as the RF-3 refund-mapping failures; and the card named no pause authority. Alternative explanations are noted (the "thanks" reopens were never sampled).
- Bounds the lesson (macro-assisted closure on order/refund queues, not "macros don't work") and proposes a concrete change with owner and review date, e.g. every experiment card names a pause owner, plus a next test excluding refund categories until refund mapping is fixed.

## 9. Portfolio Choices (`aipm-portfolio-choices`)

**Supply:** `monday/portfolio-board.csv`, `documents/finance-q1-2027-planning-guidance.md`, `documents/ridgebot-2-steering-memo.md`

**Prompt:**
> Build Q1 2027 portfolio scenarios for Lena Brooks. Show how the mix changes if we prioritize retention over expansion versus expansion first.

**What a good answer should notice**
- **Mandatory first:** P6 PCI DSS takes $300K and 10 Data Platform person-weeks, leaving $1,200K and 26 person-weeks. It is not re-scored.
- **Binding constraint is people, not money:** demand is 76 person-weeks against 36 (2.1×) while total cost is $2,750K against $1,500K. A momentum mix of P6 + P1 + P5 + P2 costs $1,270K (fits the budget) but needs 10 + 12 + 6 + 10 = 38 person-weeks: **infeasible by 2**.
- **Retention over expansion:** P6 + P1 + P4 + P7 = $300K + $350K + $250K + $180K = $1,080K; 10 + 12 + 8 + 4 = 34 person-weeks. **Expansion first:** P6 + P3 + P2 = $1,300K; 10 + 14 + 10 = 34 person-weeks (or P6 + P8 + P2 + P7 = $1,330K, exactly 36). The framing, a human choice, changes the preferred mix.
- **Overlap not double-counted:** P1 and P4 each claim the same 25,000 return/refund-status contacts (5,000 agent hours ≈ $125K capacity value); together that is 5,000 hours, not 10,000. Capacity is not cash; only P7's $150K overtime reduction is cash. Expansion revenue estimates are all Low confidence.
- Treats Ridgebot's $410K as sunk; notes the SaaS option needs 3 person-weeks, which would push the retention mix to 37 (infeasible by 1); notes P3 adds PCI scope, so it should follow P6. Names Lena Brooks and 2026-11-13 as the decision.

## 10. Leadership Dialogue (`aipm-leadership-dialogue`)

**Supply:** `documents/rf3-july-retro-notes.md`, `documents/2026-10-05-status-deck-notes.md`

**Prompt:**
> I'm Dana Whitfield. RF-3 went from green to red overnight in July, and I've just learned the October deck was all green while 14 tests were open. Help me prepare Friday's steering so this doesn't happen a third time.

**What a good answer should notice**
- **Dana goes first:** asks what she may be reinforcing, e.g. the deck note "Dana wants good news for the CFO pre-read" and the retro line "Amber means a meeting with the VP." She names her own contribution before asking anything of the team.
- System-first interpretations: a template that asks for a colour, not evidence; no named vendor-escalation owner; the July retro actions (evidence line, escalation owner, "welcome amber") were not implemented, and one has no owner.
- Does **not** blame Sam or infer anyone's motives or psychological safety from the notes; uses only the voluntarily supplied retro material.
- Offers 5–8 neutral questions and an explicit invitation to challenge Dana's own approach.
- Proposes **one leader-owned change** that is observable and reviewable (e.g. Dana opens the next three steering meetings by asking for the item with the weakest evidence for its colour), with a review date, as a proposal for the group to agree.

---

## Answer key: numbers at a glance

| Item | Value |
|---|---|
| Median resolution | 38 h baseline (Q2 2026) → 36 h (Sep 2026); target 24 h by 2027-03-31 |
| Guardrails | CSAT ≥ 4.3 (baseline 4.4); reopen ≤ 8% (Aug–Sep 7.1%; no Q2 baseline) |
| RF-3 tests (2026-10-12) | 40 = 26 passed + 11 open + 3 failed; 14 not done |
| Security review | Requested 2026-09-29; needed 2026-11-06; start by 2026-10-26 |
| Fallback | 6 min × 2,400 tickets/week = 240 h/week; × 7 weeks ≈ 1,680 h |
| RF-2 | 120 × $25 = $3,000 (claimed $30,000); net 36.5 h = $912.50; minus $4,200 = −$3,287.50 |
| E-07 | Median 33 h (target ≤ 30; comparison 36); reopen 7.0% → 9.2%; 88 extra reopens |
| Ridgebot (3 years) | Complete $430K vs SaaS $345K; sunk $410K excluded |
| Portfolio | $2,750K / 76 pw demand vs $1,500K / 36 pw capacity |
