#!/usr/bin/env bash
# grove-status.sh — Check the health of all Groves in the Spectorium
# Usage: ./scripts/grove-status.sh [grove-slug]

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GROVES_DIR="$REPO_ROOT/groves"

REQUIRED_FILES=("README.md" "MANIFEST.md" "CONFIG.md" "HISTORY.md" "STATUS.md")
ENTRY_LAYER=("PORTAL.md" "TELEGARD.md" "NETWORK.md")

# ─── Colours ────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

pass()  { echo -e "  ${GREEN}✓${RESET} $1"; }
fail()  { echo -e "  ${RED}✗${RESET} $1"; }
warn()  { echo -e "  ${YELLOW}△${RESET} $1"; }
dim()   { echo -e "  ${DIM}$1${RESET}"; }

ERRORS=0
WARNINGS=0

# ─── Check a single Grove ───────────────────────────────────────────────────
check_grove() {
  local grove_path="$1"
  local slug
  slug=$(basename "$grove_path")

  echo ""
  echo -e "${CYAN}${BOLD}  Grove: $slug${RESET}"
  echo -e "  ${DIM}$grove_path${RESET}"

  local grove_errors=0

  # Required files
  for f in "${REQUIRED_FILES[@]}"; do
    if [[ -f "$grove_path/$f" ]]; then
      pass "$f"
    else
      fail "$f ${RED}MISSING${RESET}"
      ((grove_errors++)); ((ERRORS++))
    fi
  done

  # Entry layer (recommended)
  local entry_count=0
  for f in "${ENTRY_LAYER[@]}"; do
    if [[ -f "$grove_path/$f" ]]; then
      pass "$f ${DIM}(entry layer)${RESET}"
      ((entry_count++))
    else
      dim "$f (entry layer — not present)"
    fi
  done

  # Tree declared?
  if [[ -f "$grove_path/MANIFEST.md" ]]; then
    if grep -q "| \*\*Tree\*\*" "$grove_path/MANIFEST.md" 2>/dev/null; then
      local tree
      tree=$(grep "| \*\*Tree\*\*" "$grove_path/MANIFEST.md" | head -1 | awk -F'|' '{print $3}' | sed 's/^ *//;s/ *$//')
      pass "Tree declared: ${CYAN}$tree${RESET}"
    else
      warn "No tree declared in MANIFEST.md"
      ((WARNINGS++))
    fi
  fi

  # Turn 0 or Turn 1 in HISTORY?
  if [[ -f "$grove_path/HISTORY.md" ]]; then
    if grep -q "^## Turn" "$grove_path/HISTORY.md"; then
      local turn_count
      turn_count=$(grep -c "^## Turn" "$grove_path/HISTORY.md" || true)
      local latest
      latest=$(grep "^## Turn" "$grove_path/HISTORY.md" | tail -1 | sed 's/^## //')
      pass "$turn_count turn(s) recorded · Latest: ${CYAN}$latest${RESET}"
    else
      fail "No turns recorded in HISTORY.md"
      ((grove_errors++)); ((ERRORS++))
    fi
  fi

  # STATUS current turn vs HISTORY current turn
  if [[ -f "$grove_path/STATUS.md" && -f "$grove_path/HISTORY.md" ]]; then
    local status_turn history_turns
    status_turn=$(grep "| \*\*Current Turn\*\*" "$grove_path/STATUS.md" | head -1 | grep -o '[0-9]*' || echo "?")
    history_turns=$(grep -c "^## Turn [0-9]" "$grove_path/HISTORY.md" 2>/dev/null || echo "0")
    local expected_turn=$history_turns
    if grep -q "^## Turn 0" "$grove_path/HISTORY.md"; then
      expected_turn=$((history_turns - 1))
    fi
    if [[ "$status_turn" == "?" ]]; then
      warn "Could not parse current turn from STATUS.md"
      ((WARNINGS++))
    elif [[ "$status_turn" != "$expected_turn" ]]; then
      warn "Turn mismatch: STATUS.md says $status_turn, but HISTORY.md has $expected_turn numbered turns"
      ((WARNINGS++))
    fi
  fi

  if [[ $grove_errors -eq 0 ]]; then
    echo -e "  ${GREEN}${BOLD}Status: healthy${RESET}"
  else
    echo -e "  ${RED}${BOLD}Status: $grove_errors issue(s)${RESET}"
  fi
}

# ─── Banner ─────────────────────────────────────────────────────────────────
echo ""
echo -e "${CYAN}${BOLD}  🌲 The Spectorium — Grove Status${RESET}"
echo -e "${CYAN}  ──────────────────────────────────${RESET}"

# ─── Single grove or all ────────────────────────────────────────────────────
if [[ $# -gt 0 ]]; then
  target="$GROVES_DIR/$1"
  if [[ -d "$target" ]]; then
    check_grove "$target"
  else
    echo -e "${RED}Grove '$1' not found at $target${RESET}"
    exit 1
  fi
else
  if [[ ! -d "$GROVES_DIR" ]]; then
    echo -e "${RED}No groves/ directory found at $GROVES_DIR${RESET}"
    exit 1
  fi

  grove_count=0
  for grove in "$GROVES_DIR"/*/; do
    [[ -d "$grove" ]] || continue
    check_grove "$grove"
    ((grove_count++))
  done

  if [[ $grove_count -eq 0 ]]; then
    echo ""
    echo "  No Groves found. Plant one with: ./scripts/new-grove.sh"
  fi
fi

# ─── Summary ────────────────────────────────────────────────────────────────
echo ""
echo -e "${CYAN}  ──────────────────────────────────${RESET}"
if [[ $ERRORS -eq 0 && $WARNINGS -eq 0 ]]; then
  echo -e "  ${GREEN}${BOLD}All Groves healthy.${RESET}"
elif [[ $ERRORS -eq 0 ]]; then
  echo -e "  ${YELLOW}${BOLD}$WARNINGS warning(s). No errors.${RESET}"
else
  echo -e "  ${RED}${BOLD}$ERRORS error(s), $WARNINGS warning(s).${RESET}"
fi
echo ""
