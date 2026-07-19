---
name: clarity-narrative
description: Stage 3 of the clarity journey — the heart of the audit. Walk the page section by section carrying the question the visitor is holding at that moment; any section that answers no pending question is an exit ramp. Sequential by nature — never run in parallel. Scored 0-10.
---

# clarity-narrative — the question ladder

A page is not a stack of sections; it is a conversation in which only one
side talks. At every scroll position the visitor holds exactly one dominant
question, put there by what they just read. A section earns its place by
**answering the pending question and planting the next one** — Sugarman's
slippery slide: the sole purpose of each element is to get the next element
read. A section that answers a question nobody is holding yet (or no
question at all) is an **exit ramp**: the slide's grease runs out and the
visitor steps off.

This stage MUST run sequentially over the inventory's sections in scroll
order — the pending-question state *is* the audit.

## Procedure

1. Initialize the question state from the fold: after a good hero, the
   visitor typically holds "will this work for *me*?" — but derive it from
   the actual hero, don't assume.
2. For each section in order, record a ledger row:
   - **holding**: the question the visitor carries into this section
   - **answers?**: does this section answer it (fully / partly / no)
   - **plants**: the question the section leaves the visitor holding
   - **verdict**: `advances` · `stalls` (repeats an answered question) ·
     `exit-ramp` (answers nothing pending) · `premature` (answers a question
     not yet raised — e.g., pricing detail before value is established)
3. Also check the canonical question arc for order violations. The default
   arc — adapt to the site, don't force it:
   `what is this?` → `will it work for me?` → `says who?` (proof) →
   `what's the catch?` (objections/cost) → `what do I do?` (action).
   Proof before claim is wasted; catch before desire kills desire.
4. Check **open loops** honestly used: a planted question (curiosity gap,
   Loewenstein) must be paid off later on the page. Unpaid loops read as
   bait; count them.
5. Check the **ending**: the last section before the footer should land on
   the action question with the action present — the slide ends at the
   button, not at a philosophical shrug.

## Rubric weights

Question-ladder integrity (every section advances) ×3 · arc order ×2 ·
exit-ramp count ×2 · loop payoff ×1 · ending-on-action ×1. Momentum test ×1:
read the section *headings alone* top to bottom — do they tell the argument
by themselves (Ogilvy: many readers read only headlines)?

## Anchored bands

- **9–10** — Every section advances; the heading skeleton alone tells the
  argument; zero exit ramps; the last scroll lands on the action.
- **7–8** — One stall or one premature section; no true exit ramp; arc order
  holds.
- **5–6** — One exit ramp, or proof arrives after the catch, or two-plus
  stalls — the visitor can finish but must push through dead patches.
- **3–4** — Multiple exit ramps; sections ordered by the org chart or the
  feature list rather than the visitor's questions.
- **0–2** — No discernible thread; the page is an inventory of statements.

## Findings

One finding per defective section, anchored to it. Directions:
`answer-pending`, `reorder-earlier`, `reorder-later`, `cut-section`,
`payoff-loop`, `end-on-action`. Evidence = the holding-question at entry
(from your ledger) plus the section's actual first line. Include the
section-by-section ledger table in the stage output — it is the evidence
base and the most useful artifact for the site owner.

Doctrine suppression applies (e.g., a doctrine that forbids persona-led
sections means the fix for a persona gap is never "add a personas grid").

References: `references/narrative-experts.md`.
