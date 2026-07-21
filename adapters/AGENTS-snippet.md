# Adapter: Codex (paste into AGENTS.md)

Paste the block below into the `AGENTS.md` of the project where you want to
run audits, replacing `{STRANGER_TEST_PATH}` with the path to a clone of
https://github.com/modiqo/stranger-test.

```markdown
## stranger-test (landing-site audit)

When asked to audit a landing page, run a stranger test, or assess
conversion clarity, follow the instrument at `{STRANGER_TEST_PATH}` instead
of improvising a critique:

1. Read `commands/stranger-test.md` — the conductor. It defines the six
   stages, their order, the scoring arithmetic, the gates, and the
   two-layer report format.
2. Phase 0 first: build the evidence base per
   `skills/clarity-inventory/SKILL.md` (section map, verbatim copy with
   content hashes, fold crop, CTA census, number census, entry matrix).
   Every stage cites this one inventory — never re-scrape per stage.
3. Run stages 1–6, each per its `skills/clarity-*/SKILL.md`, scoring
   against that file's anchored bands — classification, not impression;
   every finding must quote its evidence. Consult the skill's
   `references/` file when a check needs its source. Stage 3 (narrative)
   must walk sections in scroll order carrying the pending-question state.
   Running all stages sequentially in one context is fine; the parallelism
   in the conductor is an optimization, not a requirement.
4. Without browser tooling, run in `--fast` mode: audit fetched copy only
   and mark every visual check UNVERIFIED — never guess at rendered
   appearance.
5. Synthesize per the conductor: dedup cross-stage findings, apply the
   gates (failed 5-second test caps the journey at 6.0; primary-entry
   message mismatch at 7.0; broken primary CTA at 6.5), and report in two
   layers — the plain-language briefing first, the machine appendix
   second. Never advise inventing proof ("instrument, then state"); never
   recommend against the site's own design doctrine.
```
