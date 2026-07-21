# How the rubrics were built

The claim on the tin is that stranger-test scores are *classifications, not
impressions*. This document is the warrant for that claim: where each check
comes from, how a finding in the behavioral literature becomes a falsifiable
page-level check, how the weights and bands were set, and how to challenge
any of it.

## The design problem

Ask a model to critique a landing page and you get taste: fluent, plausible,
and different every run, because nothing pins the judgment down. An
instrument needs three properties taste lacks:

1. **Every check traces to a documented behavioral result** — something a
   named researcher or measured practice tradition actually established,
   not a best-practice folk belief.
2. **Every check is falsifiable on the page** — it must be decidable from
   the evidence base (the rendered page, its copy, its CTAs) whether the
   check passes, so two runs on the same page reach the same verdict.
3. **Every score is a band with a behavioral definition** — "a 9 means a
   stranger states what/who/next from the fold crop alone," not "9 =
   excellent."

Everything below is the pipeline that enforces those three properties.

## From source to check: the translation chain

Each rubric line was built by walking one chain:

> **phenomenon** (what the literature documents) → **mechanism** (why it
> happens) → **page-level check** (what to verify, falsifiably) →
> **weight** (how much of the stage's verdict it explains)

Four worked examples, one per kind of source:

**A lab result.** Pirolli & Card's information-foraging work (*Psychological
Review*, 1999) documents that users follow *scent* — proximal cues that
predict distal content — and abandon the patch when scent weakens.
Mechanism: the entry link's words are the scent trail; the hero either
continues it or breaks it. Check: do the dominant words of the entry copy
appear, or get unmistakably paraphrased, in the hero? That is
`clarity-promise`'s **message match**, weighted ×3 because scent-breaking
ends the visit — and it is falsifiable because the inventory records the
entry copy and the hero copy verbatim, so the finding must quote both sides.

**An eyetracking corpus.** NN/g's scrolling studies (2010, updated 2018)
put ~57% of viewing time above the fold with sharp decay after. Mechanism:
the first screenful renders the stay-or-leave verdict for most visitors.
Check: from the fold crop *alone* — not the full page — can a stranger
answer what is this, who is it for, what do I do next? That is
`clarity-fold`'s **5-second test** (Krug's trilogy applied to the first
screenful), weighted ×3 and backed by a gate, because the corpus says the
majority of attention never reaches anything below.

**A measured practice tradition.** Baymard Institute's large-N checkout
research finds ~70% cart abandonment, led by unexpected costs (~48%) and
forced account creation (~25%). Mechanism: surprise and premature
commitment kill at the moment of maximum intent. Checks: `clarity-action`'s
**surprise audit** (nothing material appears post-click that wasn't
disclosed pre-click) and **the click's true cost** (walk the path; count
fields, walls, and minutes to first experienced value). Falsifiable because
the auditor actually walks each conversion path and reports what the click
did.

**A named cognitive bias.** Prelec & Loewenstein's "pain of paying"
(*Marketing Science*, 1998) shows payments are felt as pain, coupled to
consumption by salience. Mechanism: a per-use meter on the product's core
loop couples pain to every action and suppresses the habit the product
needs. Check: `clarity-pricing` audits the value metric against the
mental-accounting and pain-of-paying literature — "metering the core loop"
is entry #3 in its eight-failure catalog.

Every other line in every stage rubric was built the same way; the per-stage
reference files (below) record the full set of chains.

## What counts as a source

- **Primary literature first.** The original paper or book, with author,
  year, and venue — Kahneman & Tversky in *Science* (1974) and
  *Econometrica* (1979), Thaler in *Marketing Science* (1985), Simonson in
  *JCR* (1989), Loewenstein in *Psychological Bulletin* (1994), Fogg's
  Stanford Web Credibility Project (1999–2003) — not a blog post
  summarizing them. The reference files cite the originals so a skeptical
  reader can go check the translation.
- **The tested-response tradition counts as data.** Hopkins (*Scientific
  Advertising*, 1923), Caples (*Tested Advertising Methods*, 1932), Ogilvy,
  and Sugarman wrote before the academic literature, but their claims were
  disciplined by measured response — coupons counted, orders tallied. They
  are admitted as practitioners of measurement, and used mainly where the
  academic and tested traditions agree (specificity beats superlatives;
  headlines carry the argument).
- **Modern applied corpora** — NN/g eyetracking, Baymard's checkout
  studies, Google's ad-quality scoring of landing-page relevance — bridge
  lab results to page behavior at scale.
- **Contested effects are cited with their caveats.** Choice overload
  (Schwartz; Iyengar & Lepper's jam study) is in the pricing rubric — but
  so is the Scheibehenne et al. (2010) meta-analysis finding the effect
  conditional. The rubric therefore prescribes "complexity of comparison,
  not count of options, is the load," not a folk rule like "always three
  tiers." Where the literature hedges, the rubric hedges.
- **Effective-but-manipulative results are admitted as things to detect,
  not to recommend.** The decoy effect (Huber, Payne & Puto 1982; Ariely's
  Economist experiment) is documented as *working* — and audited as
  manipulation, because in a repeated relationship detected manipulation
  converts to churn (and to negative trust, per Cialdini's warning that
  fake signals reverse sign once noticed).

## How the weights were set

Weights are proportional to two things: **how much of the stage's verdict
the behavior explains**, and **how cleanly it can be verified**.

- **×3** marks the stage's load-bearing question — the check that, failed,
  makes the rest of the stage moot (5-second test; message match; proof
  proximity; question-ladder integrity). These are also the checks the
  strongest evidence sits under.
- **×2–×2.5** are first-rank contributors with direct literature behind
  them (curse-of-knowledge scan, surprise audit, specificity, awareness-
  stage fit).
- **×1–×1.5** are real but secondary effects (priming, momentum design,
  plain style).
- **×0.5** flags checks that need eyes on a rendered page (visual
  hierarchy, recovery paths) — down-weighted partly because in `--fast`
  (no-browser) mode they can't be verified and are marked UNVERIFIED
  rather than guessed.

The exact multipliers are judgment, and are printed in each SKILL.md
precisely so they can be disputed line by line — the arithmetic of every
score is reconstructible from its findings.

## Why the bands are behavioral

Each stage defines 9–10 / 7–8 / 5–6 / 3–4 / 0–2 as *observable visitor
behavior*, not adjectives. A Fold 9 is defined as "a stranger states
what/who/next correctly from the crop alone, in one pass"; a Narrative 5–6
is "one exit ramp, or proof arrives after the catch." This does two things:
scoring becomes classification (which band does the evidence fit?), and
disagreement becomes productive — when a score surprises you, you dispute
the band's definition or the evidence, not a bare number.

## Why the gates, and why those numbers

The journey is sequential, so the scoring can't be purely additive: a
visitor who bounces at the fold never sees the pricing page, and no
downstream excellence buys back an upstream exit. Gates encode this:

- failed 5-second test → journey capped at **6.0** (the NN/g attention
  corpus: the majority of attention never gets past the fold);
- primary-entry message mismatch → capped at **7.0** (the scent-following
  population that hits the back button);
- broken/ambiguous primary CTA → capped at **6.5** (maximum-intent
  visitors lost at the last step).

The cap values express *how much of the visitor population the failure
removes* — a fold failure loses more of the journey than a CTA failure,
which strikes later. A capped report says so explicitly ("capped by Fold
gate; uncapped would be 7.9"), so the arithmetic stays inspectable.

## Constraints the rubrics obey

Two rules cut across every stage and were design decisions, not sourced
findings:

- **The fabrication line.** The audit never advises inventing proof — no
  invented testimonials, counts, or logos. Missing evidence yields
  "instrument, then state." (Corollary of the trust literature itself:
  detected fake proof reverses sign.)
- **Doctrine suppression.** The audit reads the site's own design laws
  first and never recommends against them; it makes the site the best
  version of itself, not the industry's mean. When a doctrine and a rubric
  truly conflict, that surfaces as a tradeoff question for the owner, not
  a scored defect.

## The source-to-stage map

| Source | Where it lands |
|---|---|
| Pirolli & Card (information foraging, 1999) | Promise: message match, scent continuation |
| Eugene Schwartz (*Breakthrough Advertising*, 1966) | Promise: awareness-stage fit · Inventory: entry-matrix awareness rows · Narrative: premature/stall verdicts |
| Cialdini (*Influence* 1984; *Pre-Suasion* 2016) | Promise: priming · Trust: authority/social proof, fake-signal warning · Action: commitment ethics |
| Krug (*Don't Make Me Think*, 2000) | Fold: 5-second test · Action: label honesty, mindless-click test |
| NN/g (eyetracking, interaction cost, false floor) | Fold: attention share, scroll cue · Narrative: F-pattern momentum test · Action: interaction cost |
| Chip & Dan Heath (*Made to Stick*, 2007) | Fold: curse-of-knowledge scan, SUCCESs |
| Pinker, Zinsser, Caples | Fold: plain style, tested-headline tradition |
| Lindgaard et al. (50ms, 2006); Fogg (prominence-interpretation) | Promise/Fold: first-paint halo · Trust: prominence audit |
| Sugarman (slippery slide); Loewenstein (curiosity gap); Zeigarnik | Narrative: question ladder, open-loop payoff |
| Ogilvy; Murdock (serial position, 1962) | Narrative: headings-only momentum test, first/last-slot audit |
| Hopkins (1923); Caples (1932) | Trust: specificity over adjectives |
| Fogg (Stanford Web Credibility, 1999–2003) | Trust: credibility signals |
| Bauer (perceived risk, 1960) | Trust: risk reversal at the doubt point |
| Baumeister et al. ("Bad Is Stronger Than Good", 2001) | Trust: consistency check's asymmetric cost |
| Kahneman & Tversky (anchoring 1974; prospect theory 1979) | Pricing: anchors, loss framing · Trust: doubt as loss forecast |
| Thaler (mental accounting, 1985; dual entitlement, 1986) | Pricing: unit legibility, fairness, fine-print drift |
| Prelec & Loewenstein (pain of paying, 1998) | Pricing: metering the core loop |
| Huber, Payne & Puto (1982); Ariely (2008) | Pricing: decoy detection (as manipulation) |
| Simonson (compromise, 1989); Hermann Simon (2015) | Pricing: tier architecture, value metric |
| Schwartz (choice overload, 2004) + Scheibehenne caveat (2010) | Pricing: comparison complexity |
| Thomas & Morwitz (left-digit, 2005); Wadhwa & Zhang (2015) | Pricing: charm vs. round-number tradeoff |
| Fogg (B=MAP, 2009); Hick; Fitts | Action: prompt/ability audit, singular primary |
| Baymard Institute (checkout, ongoing) | Action: surprise audit, click's true cost |
| Kivetz et al. (goal gradient, 2006); Johnson & Goldstein (defaults, 2003) | Action: momentum design, dark-pattern line |
| Brignull (deceptive-design taxonomy, 2010–) | Action: dark patterns always `major`+ |

## The per-stage bibliographies

Each stage skill ships its sources next to its rubric, with the application
notes that justify the translation:

- [`skills/clarity-promise/references/promise-experts.md`](../skills/clarity-promise/references/promise-experts.md)
- [`skills/clarity-fold/references/fold-experts.md`](../skills/clarity-fold/references/fold-experts.md)
- [`skills/clarity-narrative/references/narrative-experts.md`](../skills/clarity-narrative/references/narrative-experts.md)
- [`skills/clarity-trust/references/trust-experts.md`](../skills/clarity-trust/references/trust-experts.md)
- [`skills/clarity-pricing/references/pricing-psychology.md`](../skills/clarity-pricing/references/pricing-psychology.md) — includes the eight-failure SaaS catalog and the positive models
- [`skills/clarity-action/references/action-experts.md`](../skills/clarity-action/references/action-experts.md)

(`clarity-inventory` has no reference file by design: Phase 0 builds
evidence and judges nothing, so there is nothing to source.)

## Challenging or extending a rubric

The rubrics are meant to be argued with — at the right layer:

1. **Dispute the source**: the cited result is wrong, superseded, or
   doesn't say what the reference file claims. Fix: correct the reference
   file; any check standing on it moves too.
2. **Dispute the translation**: the source is right but the page-level
   check doesn't operationalize it (or the weight overstates it). Fix:
   amend the check or weight in the SKILL.md.
3. **Add a check**: requires all three properties — a citable source, a
   falsifiable page-level verification, and a home in the anchored bands.
   A best practice without a source, or a source without a decidable
   check, doesn't ship.

That discipline is the whole method: no check without a source, no source
without a citation, no score without a band.
