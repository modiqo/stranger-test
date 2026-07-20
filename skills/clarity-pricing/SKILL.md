---
name: clarity-pricing
description: Stage 5 of the stranger test — audit the pricing page against the behavioral-economics literature (anchoring, decoy/compromise effects, loss aversion, mental accounting, pain of paying) and the catalog of SaaS pricing failures. Distinguishes ethical architecture from dark-pattern manipulation. Scored 0-10.
---

# clarity-pricing — "What does it cost me, and will I regret it?"

The pricing page is where the visitor switches from evaluating the product
to forecasting *their own regret*. The behavioral literature explains both
how prices are perceived (anchors, frames, mental accounts) and how pricing
pages destroy trust (opaque units, redefined limits, decoy manipulation).
This stage audits for **clarity and predictability first** — the 2025–26
agent-tool repricing crises made predictability the scarcest asset a pricing
page can display — and treats manipulative architecture as a *defect*, not
a technique to recommend.

Consume the inventory's pricing sections and number census.

## Rubric

| Check | Weight | What to verify |
|---|---|---|
| **The 10-second answer** | ×3 | A visitor with a use case answers: what will *I* pay, what do I get, what is never charged? Without a calculator, a glossary, or fine print. |
| **Anchor honesty** (Kahneman) | ×2 | The first number seen frames all others. Is the anchor a real, relevant price — not an inflated strike-through or a decoy nobody buys? |
| **Unit legibility** | ×2.5 | The billing unit maps to something the buyer can count in their own world (seats, projects). Invented units (credits, ACUs, "tasks", compute points) that require conversion are the #1 modern failure — audit whether a buyer can forecast next month's bill within ±20%. |
| **Value-metric alignment** | ×2 | The meter charges what the customer values more of, not what they fear doing. Metering the action the product exists to encourage (usage of the core loop) taxes adoption. |
| **Tier architecture** (Simonson) | ×1.5 | Tiers map to buyer *situations*, not feature-count ladders. Compromise/decoy effects present? Flag decoys as manipulation. 3–4 real options max (choice overload beyond that — Schwartz/Iyengar, with replication caveats). Upgrade triggers statable in one sentence each. |
| **Frame & fairness** (Thaler) | ×1.5 | Gains framed as gains, losses not disguised; no penalty-framed downgrades; mental accounting respected (the bill lands in the account the buyer budgets from). Dual entitlement: price changes justified by cost/value, never silently redefined mid-subscription. |
| **Predictability** | ×2 | Fine print stable, limits defined in the open, "unlimited" meaning unlimited, no quarterly redefinitions. Any usage-based element must show worst-case exposure, not just best-case. |

## Anchored bands

- **9–10** — 10-second answer passes; units countable in the buyer's world;
  no decoys; worst-case bill statable; the page reads as a commitment, not
  an opening bid.
- **7–8** — Answer within 30 seconds; one conversion required (annual/
  monthly, per-seat math); architecture honest.
- **5–6** — Invented unit with a conversion table; or tiers as feature
  ladders forcing a matrix comparison; or one manipulative element
  (decoy tier, fake strike-through anchor).
- **3–4** — Bill not forecastable; "contact us" hiding all real prices for
  self-serve-sized buyers; limits defined only in fine print.
- **0–2** — Terms contradict the page's own claims, or historical
  redefinitions visible (the trust-destroying pattern).

## Findings

Directions: `unit-countable`, `anchor-honest`, `decoy-out`, `worst-case-shown`,
`trigger-sentence`, `meter-off-core-loop`, `fine-print-surfaced`. Evidence =
quoted pricing copy. **Never advise adding a decoy, artificial scarcity, or
strike-through theater** — this stage's ethics are part of its rubric: what
Ariely documents as *effective* is audited here as *costly*, because
detected manipulation converts to churn and reputation damage in
subscription businesses where the relationship is repeated, not one-shot.

Doctrine suppression: a site whose pricing doctrine forbids comparison cards
or toggles is audited for clarity within its chosen genre.

Full citations and the failure catalog: `references/pricing-psychology.md`.
