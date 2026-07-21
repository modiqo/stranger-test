#!/usr/bin/env sh
# stranger-test installer — one command, any harness.
# The instrument is plain markdown (a conductor command + seven stage
# skills); "installing" just means teaching your harness where they live.
# This detects what you have and does the right thing for each; nothing
# here is destructive.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
found=0

# Claude Code (and anything else reading ~/.claude/skills)
if [ -d "$HOME/.claude" ]; then
  mkdir -p "$HOME/.claude/skills" "$HOME/.claude/commands"
  cp -R "$SRC"/skills/clarity-* "$HOME/.claude/skills/"
  cp "$SRC/commands/stranger-test.md" "$HOME/.claude/commands/"
  echo "✓ Claude Code — clarity-* stage skills + /stranger-test command installed"
  found=1
fi

# OpenClaw (Agent Skills native)
if [ -d "$HOME/.openclaw" ]; then
  mkdir -p "$HOME/.openclaw/skills"
  cp -R "$SRC"/skills/clarity-* "$HOME/.openclaw/skills/"
  echo "✓ OpenClaw — clarity-* stage skills installed"
  found=1
fi

# Codex CLI (skills + custom prompts; honors CODEX_HOME)
CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
if [ -d "$CODEX_DIR" ]; then
  mkdir -p "$CODEX_DIR/skills" "$CODEX_DIR/prompts"
  cp -R "$SRC"/skills/clarity-* "$CODEX_DIR/skills/"
  cp "$SRC/commands/stranger-test.md" "$CODEX_DIR/prompts/"
  echo "✓ Codex — clarity-* stage skills + /stranger-test prompt installed ($CODEX_DIR)"
  found=1
fi

# Kimi Code CLI (Agent Skills native; honors KIMI_CODE_HOME)
KIMI_DIR=""
if [ -n "${KIMI_CODE_HOME:-}" ] && [ -d "$KIMI_CODE_HOME" ]; then
  KIMI_DIR="$KIMI_CODE_HOME"
elif [ -d "$HOME/.kimi-code" ]; then
  KIMI_DIR="$HOME/.kimi-code"
elif [ -d "$HOME/.kimi" ]; then
  KIMI_DIR="$HOME/.kimi"
fi
if [ -n "$KIMI_DIR" ]; then
  mkdir -p "$KIMI_DIR/skills"
  cp -R "$SRC"/skills/clarity-* "$KIMI_DIR/skills/"
  echo "✓ Kimi CLI — clarity-* stage skills installed ($KIMI_DIR/skills)"
  found=1
fi

echo ""
echo "Not detected above? The instrument is identical everywhere:"
echo "  → Codex:      run codex once (creates ~/.codex) and re-run this, or paste"
echo "                adapters/AGENTS-snippet.md into your project's AGENTS.md"
echo "                and point it at this clone: $SRC"
echo "  → Kimi CLI:   run kimi once (creates ~/.kimi-code) and re-run this"
echo "  → Other       Agent-Skills harnesses: point them at $SRC/skills/"
echo ""
if [ "$found" -eq 0 ]; then
  echo "No skills directory detected — that's fine: the adapter above is the install."
fi
echo "Tip: with browser tools (Claude in Chrome, any browser MCP) the fold, scroll"
echo "cues, and CTA walks are verified; without them the audit runs in --fast mode"
echo "and marks every visual check UNVERIFIED."
