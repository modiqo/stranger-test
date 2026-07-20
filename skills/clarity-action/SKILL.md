---
name: clarity-action
description: Stage 6 of the stranger test — friction at the point of action. Audit every conversion moment with the Fogg behavior model (motivation x ability x prompt), interaction cost, form friction, and commitment honesty. Scored 0-10; a broken primary CTA is a journey gate.
---

# clarity-action — the point of action

Everything upstream manufactured motivation; this stage audits whether the
site *spends* it well. Fogg's model: behavior happens when Motivation,
Ability, and a Prompt converge — and at the click moment, **ability (ease)
is cheaper to fix than motivation is to raise**. Every extra field, every
ambiguous label, every surprise requirement is a tax paid at the moment of
maximum intent. Baymard's checkout research quantifies the stakes: ~70% of
carts are abandoned, with surprise costs (48%) and forced account creation
(~25%) leading the causes — friction and surprise, not desire.

Consume the inventory's CTA census; walk each conversion path as far as it
goes without creating real accounts or submitting real data.

## Rubric

| Check | Weight | What to verify |
|---|---|---|
| **Label honesty** (Krug) | ×2.5 | The CTA describes the actual next action in the doer's words ("Start free — no card" not "Get Started", "Empower yourself"). The mindless-click test: can the visitor predict exactly what happens after the click? |
| **Singular primary** | ×2 | One visually primary action per screenful; competitors demoted. (Hick's law: decision time grows with alternatives; the CTA moment is the worst place for a menu.) |
| **The click's true cost** | ×2.5 | What actually follows the click: how many fields, how many steps, card required?, email verification walls, forced account creation *before* value. Count interaction cost (NN/g) end-to-end — and walk past the form to *first experienced value*: minutes and steps from click until the product visibly does its thing (~10 minutes is the modern patience budget). Value unreachable in the first session (sales call, day-long setup) is `major` even when the form itself is short. |
| **Surprise audit** | ×2 | Nothing material appears post-click that wasn't disclosed pre-click (price, card, install size, permissions). Surprise at commitment is the Baymard #1 killer, generalized. |
| **Momentum design** | ×1 | Goal-gradient (Kivetz): visible progress accelerates completion — multi-step flows show steps; started states beat blank states. Defaults do the work where honest (Johnson & Goldstein: defaults dominate outcomes) — but pre-checked consent/marketing boxes are dark-pattern findings, not momentum. |
| **Objection at the button** | ×1 | The residual fear at each CTA ("can I undo this?", "will I be spammed?") answered *at the button* in a microcopy line, not in a FAQ. |
| **Recovery paths** | ×0.5 | Errors and dead ends: does a failed step preserve input and offer one next step? |

## Anchored bands

- **9–10** — Every primary CTA predicts its outcome exactly; the first click
  delivers value/progress; zero post-click surprises; objections answered at
  the button.
- **7–8** — Labels honest; one extra step or one undisclosed minor
  requirement post-click.
- **5–6** — Generic labels ("Get Started") on primaries, or account-before-
  value, or two primaries competing on a screenful.
- **3–4** — The path demands commitment before demonstrating value AND
  hides a material requirement; or the primary is ambiguous about what it
  does.
- **0–2** — Primary CTA broken, circular, or misleading.

**Gate**: a dead, ambiguous, or duplicated primary caps the journey at 6.5.

## Findings

Directions: `label-outcome`, `primary-singular`, `value-before-account`,
`disclose-preclick`, `fields-cut`, `objection-at-button`, `progress-visible`.
Evidence = the CTA label + what the click actually did when you walked it.
Dark patterns (pre-checked boxes, disguised declines, guilt-copy opt-outs)
are always `major`+ regardless of conversion impact — this stage audits for
the visitor, and detected manipulation is negative trust (see clarity-trust).

Doctrine suppression: one-primary-per-screen doctrines, no-signup-wall
doctrines etc. are enforced *for* the site, not argued against.

References: `references/action-experts.md`.
