---
description: Run the six-stage stranger test on a landing site — would a stranger convert? Scored stages, gate semantics, evidence-cited findings
argument-hint: "[url or route] [--stage N] [--fast]"
---

# /stranger-test — the conductor

Audit the site the way a visitor experiences it: six stages in the order the
visitor meets them, each scored 0–10 against anchored bands, with **gates** —
a broken early stage caps the journey score because the visitor never reaches
the brilliance downstream.

Target: `$ARGUMENTS` (a URL, a local route, or the repo's site if omitted —
ask only if genuinely ambiguous). `--stage N` runs one stage (after ensuring
a current inventory). `--fast` skips screenshots and works from fetched
HTML/copy only — flag every finding that would need visual confirmation.

## The journey model

| # | Stage | Skill | The question the visitor is holding |
|---|---|---|---|
| 0 | Inventory | `clarity-inventory` | (not scored — the shared evidence base) |
| 1 | The Promise | `clarity-promise` | "Is this what I clicked for?" |
| 2 | Above the Fold | `clarity-fold` | "What is this, is it for me, what do I do?" |
| 3 | Narrative Continuity | `clarity-narrative` | (changes every section — the skill tracks it) |
| 4 | The Trust Layer | `clarity-trust` | "Says who? What's the catch?" |
| 5 | The Pricing Page | `clarity-pricing` | "What does it cost me — and will I regret it?" |
| 6 | The Point of Action | `clarity-action` | "Do I have to do this *now*? What happens when I click?" |

## Orchestration

Run phases in this order; parallelize within a phase when subagents are
available (each stage skill is self-contained and consumes only the
inventory):

1. **Phase 0** — `clarity-inventory` produces `audit/inventory.md` (section
   map, per-section copy + content hash, fold crop, CTA census, screenshots).
   Every later stage cites inventory anchors, never re-scrapes.
2. **Phase 1** — `clarity-promise` and `clarity-fold` in parallel (both
   consume only the entry context and the top of the page).
3. **Phase 2** — `clarity-narrative` alone, sequentially: it walks sections
   in scroll order carrying the pending-question state. Never parallelize it.
4. **Phase 3** — `clarity-trust`, `clarity-pricing`, `clarity-action` in
   parallel.
5. **Phase 4** — synthesis (you, the conductor): dedup cross-stage findings
   (one defect surfacing in three rubrics is ONE finding, listed under the
   stage where the visitor first hits it, cross-referenced elsewhere), apply
   gates, compute scores, write the report.

## The finding format (ledger-ready)

Every finding, from every stage, must be emitted in this shape — no prose-only
findings. This format is forward-compatible with a persistent priors ledger;
until one exists, findings live in the run report.

```json
{"stage": 3, "anchor": "#s-how", "anchor_hash": "sha256 of the section's normalized text",
 "finding": "one falsifiable sentence naming the defect",
 "evidence": "the exact copy quoted, or the element + viewport position",
 "advice": "one concrete change",
 "direction": "a slug for the direction the advice pushes (terser | proof-earlier | cta-singular | ...)",
 "severity": "gate | major | minor",
 "score_impact": -2}
```

Rules: **evidence or it doesn't exist** — a finding that quotes nothing and
names no element is rejected at synthesis. One finding, one defect. Advice
must be a change someone could make tomorrow, not a theme.

## Scoring

- Stage score = the stage's anchored band (each SKILL.md defines what a 3, a
  6, and a 9 *are* behaviorally) minus open findings' `score_impact`, floored
  at the band evidence supports. Scores are explainable: every point lost
  points at a finding.
- **Journey score** = weighted mean — Promise ×1, Fold ×2, Narrative ×2,
  Trust ×1.5, Pricing ×1.5, Action ×2 — then **gates apply**:
  - Fold gate: a failed 5-second test caps the journey at 6.0.
  - Promise gate: a message mismatch with the primary entry path caps at 7.0.
  - Action gate: a dead, ambiguous, or duplicated-primary CTA caps at 6.5.
- Report the cap when it binds: "Journey 5.8 (capped by Fold gate; uncapped
  arithmetic would be 7.9)".

## Doctrine suppression (mandatory)

Before any stage runs, look for the site's own design doctrine (style guides,
design constitutions, CLAUDE.md, `design/` docs). Advice that violates the
site's stated laws is **not a finding** — reframe it inside doctrine or drop
it. The audit's job is to make the site the best version of *itself*, not to
regress it to the industry's mean. Typical suppressions: "add a testimonial
carousel" against a no-social-proof-theater doctrine; "add an annual toggle"
against an anti-dark-pattern pricing doctrine; "add more CTAs" against a
one-primary-action law. When doctrine and rubric truly conflict, surface it
as a **tradeoff question for the owner**, not as a scored defect.

## The report — two layers, plain language first

The report's readers are founders, marketing, product, and sales — not the
auditors. The instrument's own rules apply to its own output: it must pass
its own 5-second test, and rubric vocabulary is curse-of-knowledge. Terms
like *band*, *gate*, *anchor*, *hash*, *awareness stage*, *B=MAP*,
*score_impact* never appear in Layer 1; say what the visitor experiences
instead ("most visitors can't tell what this is within five seconds"), not
what the instrument measured ("failed the 5-second test, band ≤6").

### Layer 1 — the briefing (stands alone; a decision-maker reads only this)

1. **The verdict** — one score out of 10, one sentence naming the biggest
   problem in business terms, and the single fix that pays most. When a
   gate binds, explain it as consequence, not mechanism: "The first screen
   loses visitors before anything below it can work — that alone holds the
   score at 6.0."
2. **Scoreboard** — six rows: plain-language stage name, score, one line of
   "what we found" in visitor terms.
3. **Top 3 fixes** — each: the problem in one plain sentence, the exact
   before → after (copy rewrites shown as copy), and why it pays ("this is
   where pricing-page visitors currently stall").
4. **What's already working** — named plainly, so the fixes don't break it.

Plain-language stage names for reports (internal name may appear once, in
parentheses):

| internal | report name |
|---|---|
| Promise | Does the page keep the promise that brought them? |
| Fold | The first screen |
| Narrative | The scroll — does each section pull the reader to the next? |
| Trust | Believability |
| Pricing | The pricing page |
| Action | The signup moment |

### Layer 2 — the appendix (the machine layer)

Per-stage sections: score, band cited, findings in the JSON shape, weights,
hashes — the ledger a future run re-verifies. Rule: nothing decision-
relevant lives *only* in Layer 2. Layer 1 must stand alone.
