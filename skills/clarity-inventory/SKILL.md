---
name: clarity-inventory
description: Phase 0 of the clarity journey — build the shared evidence base (section map, per-section copy with content hashes, fold crop, CTA census) that every scored stage consumes. Use before any clarity-* stage skill; never score anything here.
---

# clarity-inventory — the evidence base

You are not auditing yet. You are building the single shared view of the page
that all six stage auditors will cite, so their findings reconcile. Six
auditors scraping independently produce six slightly different pages and
findings that can't be deduplicated — one inventory, six consumers.

## Procedure

1. **Render honestly.** Load the target at a desktop viewport (1440×900) and
   a mobile viewport (390×844) if browser tools are available. Screenshot
   both, plus a crop of exactly the first fold (0 to viewport height, no
   scroll). If only fetch is available, extract HTML and mark the run
   `--fast`: note that fold geometry, scroll cues, and visual hierarchy
   findings will be UNVERIFIED.
2. **Map the sections** in scroll order. A section = a visually or
   semantically bounded band. For each, record: anchor (id, or a generated
   `sec-N`), position (which screenful it starts on), heading, and its full
   normalized text (whitespace-collapsed).
3. **Hash each section**: sha256 of the normalized text, first 12 hex chars.
   This is the finding anchor_hash — it lets a future run tell "same copy,
   finding stands" from "copy changed, re-audit".
4. **CTA census**: every clickable action on the page — label, visual weight
   (filled / outlined / bare link), position, destination, and whether it is
   above the fold. Mark the *primary* per screenful (the most visually
   dominant). Two primaries on one screenful is a fact to record, not judge.
5. **Number census**: every quantitative claim on the page (prices, counts,
   percentages, times) with its section anchor — the trust and pricing
   stages audit specificity and consistency from this list.
6. **Entry context**: record what brought the visitor if known (ad copy, the
   README, a shared link's unfurl text, search snippet). The promise stage
   audits *against* this. If unknown, record the page's own `<title>` +
   meta description as the de-facto promise.

## Output

Write `audit/inventory.md` (in the audited repo, or the working directory
for a remote site):

```markdown
# Inventory — <target> — <date>
viewport: 1440×900 · mode: full|fast
entry-context: "<the promise the visitor arrives holding>"

## Sections (scroll order)
| # | anchor | screenful | heading | hash | words |
|---|--------|-----------|---------|------|-------|

### <anchor> — full text
<normalized copy>

## CTA census
| label | weight | section | above fold? | destination | primary? |

## Number census
| value | claim | section |
```

Keep the copy verbatim — auditors quote evidence from this file. Do not
summarize, do not editorialize, do not flag anything. Inventory findings are
a category error.
