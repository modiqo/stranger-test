---
name: clarity-fold
description: Stage 2 of the clarity journey — the 5-second abandon-or-scroll verdict on the first screenful, plus the scroll-cue check (a fold that looks complete invites exit). The successor to single-shot landing-page clarity checks; scored 0-10 and a hard journey gate.
---

# clarity-fold — the abandon-or-scroll verdict

The first screenful gets a disproportionate share of attention — NN/g's
eyetracking puts ~57% of viewing time above the fold — and it renders a
verdict: stay or leave. This stage audits two things: **can a stranger pass
the 5-second test**, and **does the fold invite the scroll** or accidentally
end the page (the "illusion of completeness").

Consume the inventory's fold crop and hero copy. Audit the crop, not the
full page — the whole point is what's visible without scrolling.

## Rubric

| Check | Weight | What to verify |
|---|---|---|
| **5-second test** (Krug) | ×3 | From the fold crop alone, a stranger answers: What is this? Who is it for? What do I do next? Without re-reading, scrolling, or decoding jargon. |
| **Curse-of-knowledge scan** (Heath) | ×2 | Line-by-line over hero copy: internal jargon, feature names used before definition, abstractions with no concrete referent ("streamline your workflow"). Test: could an outsider *draw* the sentence? |
| **Scroll cue** | ×2 | Something visibly continues past the fold edge: cut-off content, a partial next section, a directional cue. A fold that composes as *finished* — hero + tagline + CTA neatly framed by whitespace — is a false floor; visitors bounce believing they saw the page. |
| **SUCCESs hit** (Heath) | ×1.5 | The hero message lands ≥2 of: Simple (one message), Unexpected (not interchangeable with competitors), Concrete (picturable), Credible (a specific), Emotional (a real want/fear), Story (a before/after). |
| **Plain style** (Pinker, Zinsser) | ×1 | Buried verbs/nominalizations ("provides optimization of" → "optimizes"), passives hiding actors, sentences needing a second breath. |
| **Visual hierarchy serves reading order** | ×0.5 | The eye lands on the promise first, the CTA second — not on decoration. (Skip in `--fast` mode; mark UNVERIFIED.) |

## Anchored bands

- **9–10** — A stranger states what/who/next correctly from the crop alone,
  in one pass; a visible cue implies continuation; zero jargon flags.
- **7–8** — What and next are instant; who requires one inference. Or one
  minor jargon flag. Scroll cue present.
- **5–6** — What is clear; who or next requires inference or a second read.
  Or the fold reads as complete (false floor) despite good copy.
- **3–4** — The visitor must scroll or re-read to state what this is; or
  hero copy is interchangeable with any competitor's.
- **0–2** — Cannot state what this is from the fold.

**Gate**: 5-second test failure (band ≤6 on that check) caps the journey
score at 6.0 — the majority of visitors never see anything below.

## Findings

Directions this stage pushes: `jargon-out`, `concrete-in`, `false-floor-break`,
`hierarchy-promise-first`, `cta-labeled`. Evidence = the quoted hero line or
the fold-crop element and its position. For copy findings, the advice field
should carry a before/after rewrite, not a description of the problem.

Doctrine suppression applies: never advise stock-photo heroes, badge strips,
or animation removal against a site doctrine that forbids them; advise the
in-doctrine equivalent.

References: `references/fold-experts.md`.
