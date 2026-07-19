# clarity-journey

**A six-stage landing-site audit that walks the visitor's journey — and
scores each stage against the primary literature.**

Most site critiques are a single opinionated pass: one prompt, one wall of
feedback, different every time you run it. `clarity-journey` replaces that
with an instrument: six auditors, one per stage of the visitor's actual
journey, each with an anchored 0–10 rubric grounded in the economists,
psychologists, and practitioners who did the original work — Kahneman &
Tversky, Thaler, Ariely, Simonson, Hermann Simon, Krug, the Heaths,
Sugarman, Schwartz, Fogg, Cialdini, Pirolli & Card, Hopkins, Caples, Ogilvy,
NN/g, Baymard. Every reference file cites its sources so your team can go
read them.

## The journey model

Visitors don't experience a site as a feature list; they experience it as a
sequence of questions. Each stage audits the page against the question the
visitor is holding at that moment:

| Stage | Skill | The visitor's question |
|---|---|---|
| 1 · The Promise | `clarity-promise` | "Is this what I clicked for?" — message match, information scent |
| 2 · Above the Fold | `clarity-fold` | The 5-second abandon-or-scroll verdict + the scroll-cue check (a fold that looks "complete" invites exit) |
| 3 · Narrative Continuity | `clarity-narrative` | Changes every section — each one must answer the pending question and plant the next; anything else is an exit ramp |
| 4 · The Trust Layer | `clarity-trust` | "Says who?" — proof proximity, specificity, risk reversal |
| 5 · The Pricing Page | `clarity-pricing` | "What does it cost me, and will I regret it?" — anchoring, unit legibility, the 8-failure catalog |
| 6 · The Point of Action | `clarity-action` | "What happens when I click?" — Fogg's B=MAP, interaction cost, surprise audit |

Stage 0 (`clarity-inventory`) builds the shared evidence base first —
section map, per-section copy with content hashes, CTA census, number
census — so all six stages cite one view of the page and findings
reconcile.

## What makes the scores definitive

- **Anchored bands** — each SKILL.md defines behaviorally what a 3, a 6,
  and a 9 *are* ("a stranger states what/who/next from the fold crop
  alone"), so scoring is classification, not vibes.
- **Evidence or it doesn't exist** — every finding quotes the copy or names
  the element; unfalsifiable findings are rejected at synthesis.
- **Gates, not just points** — a failed 5-second test caps the journey
  score at 6.0 no matter how good the pricing page is, because the visitor
  never gets there. The arithmetic encodes the journey's sequence.
- **Ledger-ready findings** — every finding is emitted as structured JSON
  (anchor, content hash, direction, severity, score impact), forward-
  compatible with a persistent priors ledger so future runs can re-verify
  prior findings instead of re-deriving them. (The priors system ships
  separately; see Roadmap.)
- **Doctrine suppression** — the audit reads the site's own design laws
  first and never recommends against them. Its job is to make the site the
  best version of *itself*, not to regress it toward the industry's mean
  (no reflexive "add a testimonial carousel").
- **The fabrication line** — the audit never advises inventing proof.
  Missing evidence yields "instrument, then state", never a fake number.

## Install

**As a plugin (recommended)** — inside Claude Code:

```
/plugin marketplace add modiqo/clarity-journey
/plugin install clarity-journey@clarity-journey-marketplace
```

**Manually** — copy the skills and the command into your user scope (they
register as `clarity-*` skills and the `/clarity-journey` command):

```bash
git clone https://github.com/modiqo/clarity-journey
cp -R clarity-journey/skills/clarity-* ~/.claude/skills/
cp clarity-journey/commands/clarity-journey.md ~/.claude/commands/
```

Skills work best with browser tools available (Claude in Chrome, or any
browser MCP) so the fold, scroll cues, and CTA walks can be *verified*.
Without a browser the audit still runs in `--fast` mode from fetched copy,
and every finding that would need eyes is marked UNVERIFIED.

## Use

```
/clarity-journey https://example.com        # full six-stage audit
/clarity-journey #/pricing --stage 5        # one stage against a route
/clarity-journey --fast                     # no-browser mode (copy-only; visual checks marked UNVERIFIED)
```

Individual stages can also be invoked directly as skills (`clarity-fold`,
`clarity-pricing`, …) — each is self-contained once an inventory exists.

## Interpreting the report

The report leads with the **scoreboard**, then the **top-3 fixes**, then
per-stage findings, and closes with **what the site does right** (so fixes
don't break it). How to read each part:

**Scores (0–10 per stage).** Scores are classifications against the
behavioral bands in each SKILL.md, not impressions — a Fold 9 *means* "a
stranger states what/who/next correctly from the first screenful alone."
When a score surprises you, read the band it cites; disagree with the band,
not the number.

**The journey score and its gates.** The journey score is a weighted mean
(Fold, Narrative, and Action count double) — but **gates override
arithmetic**: a failed 5-second test caps the journey at 6.0, a
primary-entry message mismatch at 7.0, a broken primary CTA at 6.5. A
capped report says so explicitly ("capped by Fold gate; uncapped would be
7.9"). A gate binding is always your first fix — nothing downstream of a
gate matters to the visitors who never pass it.

**Findings.** Every finding is structured:

```json
{"stage": 4, "anchor": "#s-proof", "anchor_hash": "a41f0c…",
 "finding": "one falsifiable sentence",
 "evidence": "the exact copy quoted",
 "advice": "one concrete change",
 "direction": "proof-adjacent",
 "severity": "gate | major | minor", "score_impact": -2}
```

- `anchor` + `anchor_hash` — where it lives, and a hash of that section's
  copy so a future run can tell "same copy, finding stands" from "copy
  changed, re-audit". Keep these if you track findings over time.
- `evidence` — findings with no quoted evidence were already rejected
  before you saw the report; everything you see is falsifiable.
- `direction` — the way the advice pushes (`terser`, `proof-earlier`…).
  If two findings across runs push opposite directions on the same anchor,
  that's a tradeoff for *you* to decide once — not a defect to fix twice.
- `severity` — `gate` findings cap the journey score; `major` costs ≥1
  point; `minor` is worth fixing when you're in the file anyway.
- `score_impact` — exactly what the finding costs; the arithmetic of every
  score is reconstructible from its findings.

**Two guarantees.** *Doctrine suppression*: the audit reads your site's own
design laws first and never recommends against them — it makes your site
the best version of itself, not the industry's mean. *The fabrication
line*: it will never advise inventing proof; missing evidence yields
"instrument, then state," never a fake number.

## Orchestration

Stages 1–2 run in parallel (both consume the top of the page), stage 3 runs
strictly sequentially (it carries the visitor's pending-question state
through the scroll), stages 4–6 run in parallel, then a synthesis pass
dedups cross-stage findings and applies the gates. `commands/
clarity-journey.md` is the conductor.

## Roadmap

- **v2 — the priors ledger**: findings with identity and lifecycle
  (open / fixed / accepted-tradeoff / regressed), re-verify-before-
  re-discover, direction-conflict escalation, and content-hash-scoped
  forgetting — so repeated audits converge instead of oscillating. Designed;
  ships as its own system so any skill can adopt it.

## License

MIT
