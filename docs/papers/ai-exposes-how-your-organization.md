---
title: "AI Exposes How Your Organization Really Works"
parent: Papers
nav_order: 2
date: 2026-10-12
canonical_url: https://scalewithjeff.substack.com/p/ai-exposes-how-your-organization
---

# AI Exposes How Your Organization Really Works

*Jeff Mitchell Geissler · Scale with Jeff · Originally published on [Substack](https://scalewithjeff.substack.com/p/ai-exposes-how-your-organization) on 2026-10-12.*

![AI Exposes How Your Organization Really Works]({{ "/assets/images/ai-exposes-how-your-organization.png" | relative_url }})

An organization can buy an impressive AI platform and still struggle to answer a fairly ordinary question: Who can decide what happens next?

That question has followed me through years of program leadership across engineering, operations, finance, and procurement. The tools change. The friction often feels familiar. One team has the information, another has the budget, and a third has made a commitment that assumes the first two have already agreed. Everyone is working. The program is waiting.

AI brings those gaps into sharper focus. It can assemble information faster, compare updates, and draft a reasonable account of what is happening. But a faster account of an unresolved problem does not resolve the problem. Sometimes it simply gives the disagreement better grammar.

I think this is where the enterprise AI conversation needs to become more practical. Before we ask how much work a model can automate, we should understand how the work actually moves.

## Follow one real piece of work

Consider an illustrative product launch. A customer-facing team wants a capability available next month. Engineering can deliver it if a supporting component passes testing. Procurement needs a specification before confirming supply. Finance needs a credible cost estimate before approving the purchase. Operations needs enough notice to schedule deployment.

Each function has a sensible process. The failure can occur between those processes. Perhaps engineering considers the specification finished when the design is approved, while procurement requires a separate commercial package. Perhaps the budget owner assumes the launch date is flexible, while the customer team has treated it as a promise.

An AI assistant might summarize every update accurately and still produce a misleading overall conclusion because the underlying definitions differ. The problem begins before the summary. It begins with what people mean by ready, committed, approved, and complete.

My first move would be to walk one piece of work from request to accepted result. I would ask the people doing it where they wait, which information they recreate, and what they do when the documented process fails. Those workarounds are often more revealing than the official diagram.

## Establish a common outcome

Teams need something more precise than a general ambition to improve productivity. What is the result this workflow must produce? Who receives it? What conditions must be satisfied before that person can use it?

A useful outcome might be a deployable service with an agreed readiness standard and a named operational owner. That gives the teams a shared destination. It also makes tradeoffs visible. A cheaper component that misses the deployment window may be a poor choice. A faster release that shifts avoidable support work onto operations may create a different kind of delay.

I would write the outcome in ordinary language, then ask each function to explain it back. If their explanations differ, there is alignment work to do before automation begins.

[Google’s research on team effectiveness](https://rework.withgoogle.com/intl/en/guides/understand-team-effectiveness) identified structure and clarity among the dynamics associated with effective teams at Google. That finding does not prove every organization should use the same model. It supports taking shared expectations seriously.

## Make decision rights visible

Once the outcome is clear, identify the decisions that can block it. A stakeholder list tells us who cares. It does not necessarily tell us who can choose.

For each material decision, I want to know the accountable decision maker, the people whose evidence is required, the deadline, and the consequence of waiting. There should also be an escalation route when the choice exceeds someone’s authority.

This is especially useful across functions. Engineering should own technical acceptance within its mandate. Finance should own financial approval within its mandate. The program leader should make the connection between those decisions visible and bring unresolved tradeoffs to the appropriate authority. Calling everybody an owner rarely helps anybody own the next action.

## Automate a defined responsibility

Only then would I assign AI a job. It could compare source updates against an agreed milestone, flag a missing acceptance condition, or draft a decision brief from approved records. These are bounded responsibilities with observable results.

The assistant should distinguish evidence from inference. If two sources conflict, it should expose the conflict. If a record is stale, it should say so. A plausible narrative is easy to read and surprisingly expensive to unwind once people have acted on it.

I would also keep a human responsible for validating material conclusions. The level of review should reflect the consequence of error. A draft agenda and an external commitment deserve different treatment.

## Try this before your next AI pilot

Choose one workflow that repeatedly frustrates people. Record its intended outcome, the acceptance conditions, the major handoffs, the decisions, and the points where work waits. Ask the people on both sides of each handoff to review the map.

Then select one friction point for a small intervention. Perhaps AI can reduce the effort of assembling evidence for an approval. Measure the entire path, including review and correction. Did the decision happen sooner? Was the output useful? Did the receiving team experience less rework?

Do not assume the technology deserves all the credit if clarifying ownership produced much of the improvement. That distinction is useful. It tells us what to reproduce elsewhere.

My experience has made me wary of transformations that start with a product demonstration and end with a shopping list. There is value in experimentation, but enterprise performance depends on how choices, responsibilities, and commitments connect. AI gives us a reason to inspect those connections and an opportunity to improve them.

This week, follow one piece of work all the way through. Find the point where it waits for clarity. That may be the most useful place to begin your AI strategy.

---

*Read and comment on the [original post on Substack](https://scalewithjeff.substack.com/p/ai-exposes-how-your-organization).*
