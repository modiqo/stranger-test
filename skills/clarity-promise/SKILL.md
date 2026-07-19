---
name: clarity-promise
description: Stage 1 of the clarity journey — audit message match and information scent. Does the page confirm, within one glance, the promise that brought the visitor here? Scored 0-10; a mismatch with the primary entry path is a journey gate.
---

# clarity-promise — "Is this what I clicked for?"

The visitor arrives *holding a promise* — an ad, a shared link, a search
snippet, a friend's sentence. The first job of the page is not to persuade;
it is to **confirm the scent**. Information-foraging research (Pirolli &
Card) models visitors as scent-followers: when the cues on the new patch stop
matching the goal, they go back the way they came. The back button is one
click; the match must be visible in the first glance.

Consume `audit/inventory.md` — especially `entry-context` and the fold crop.

## Rubric

| Check | Weight | What to verify |
|---|---|---|
| **Message match** | ×3 | The dominant words of the entry context appear (or are unmistakably paraphrased) in the hero. Ad says X, page says X — not X's clever cousin. |
| **Scent continuation** | ×2 | The hero extends the promise (what happens next) rather than restarting the pitch from zero — the visitor should feel *further along*, not re-greeted. |
| **Awareness-stage fit** (Schwartz) | ×2 | The copy meets the visitor at their awareness stage. Problem-aware traffic needs the problem named before the product; product-aware traffic needs the differentiator, not the category explained. Mismatch reads as either condescension or confusion. |
| **One promise** | ×2 | The hero makes one promise, not three competing ones. Multiple entry paths → the *primary* path's promise wins the hero; others get sections, not hero real estate. |
| **Priming** (Cialdini, *Pre-Suasion*) | ×1 | What the first glance makes salient is the frame everything after is judged in. Does the opening image/word prime the evaluation the site wants? |

## Anchored bands

- **9–10** — A visitor who states the entry promise aloud, then sees the fold,
  says "yes, that." Continuity is verbatim-level; awareness stage matched;
  one promise.
- **7–8** — The match requires one small inference (synonym, reordering) but
  no re-reading. Minor secondary-promise noise.
- **5–6** — The page is *about* the promised thing but leads with a different
  angle; the visitor must reconcile two framings. Or: correct match for one
  entry path, mismatch for another significant one.
- **3–4** — Category matches, promise doesn't ("cheaper flights" ad → brand
  homepage). Visitor must hunt below the fold to find their thread.
- **0–2** — The visitor cannot tell they're in the right place.

**Gate**: a 5-6 or below on message match for the *primary* entry path caps
the journey score at 7.0 — everything downstream is discounted by the
fraction of visitors who never engage.

## Findings

Emit findings in the conductor's JSON shape. Directions this stage commonly
pushes: `match-verbatim`, `promise-singular`, `stage-down` (simplify for
earlier awareness), `stage-up` (stop explaining the category to experts).
Evidence must quote both sides: the entry copy AND the hero copy.

Honor doctrine suppression: if the site's doctrine forbids, e.g., persona
language on the landing page, do not advise adding persona-matched heroes —
advise matching the promise within doctrine.

References with the underlying research: `references/promise-experts.md`.
