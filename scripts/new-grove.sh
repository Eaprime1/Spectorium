#!/usr/bin/env bash
# new-grove.sh — Plant a new Grove in the Spectorium
# Usage: ./scripts/new-grove.sh

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GROVES_DIR="$REPO_ROOT/groves"
TEMPLATES_DIR="$REPO_ROOT/templates/grove"
GROVES_MD="$REPO_ROOT/GROVES.md"

# ─── Colours ────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

banner() {
  echo ""
  echo -e "${CYAN}${BOLD}  🌳 The Spectorium — New Grove${RESET}"
  echo -e "${CYAN}  ──────────────────────────────${RESET}"
  echo ""
}

step() { echo -e "${GREEN}▶${RESET} $1"; }
info() { echo -e "  ${CYAN}$1${RESET}"; }
warn() { echo -e "${YELLOW}⚠${RESET}  $1"; }
error() { echo -e "${RED}✗${RESET} $1"; exit 1; }
success() { echo -e "${GREEN}✓${RESET} $1"; }

# ─── Gather input ───────────────────────────────────────────────────────────
banner

echo -e "${BOLD}Every Grove needs a name, a tree, and an owner.${RESET}"
echo ""

read -rp "  Device name (Title Case, e.g. 'Navigo'): " DEVICE_NAME
[[ -z "$DEVICE_NAME" ]] && error "Device name is required."

# Auto-generate slug
DEVICE_SLUG=$(echo "$DEVICE_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
read -rp "  Device slug [$DEVICE_SLUG]: " SLUG_INPUT
DEVICE_SLUG="${SLUG_INPUT:-$DEVICE_SLUG}"

# Check for collision
GROVE_PATH="$GROVES_DIR/$DEVICE_SLUG"
if [[ -d "$GROVE_PATH" ]]; then
  error "Grove '$DEVICE_SLUG' already exists at groves/$DEVICE_SLUG/"
fi

echo ""
echo -e "  ${BOLD}Choose a tree${RESET} (see TREES.md for full list):"
echo "  Tier 1 — Ancient:  baobab, cedar, pine, yew, ash, sequoia, birch, rowan, myrtlewood, banyan"
echo "  Tier 2 — Digital:  cipher-tree, fork-tree, merkle-bark, echo-tree, null, root-array,"
echo "                     binary-bloom, signal-fern, crystalvein, lattice"
echo "  Tier 3 — Spectrum: weeping-willow, sakura, bloodwood, hearthwood, stormwood,"
echo "                     quaking-aspen, spiral, drift, hyperfocus-spire, sensory-fern"
echo ""
read -rp "  Tree slug: " TREE_SLUG
[[ -z "$TREE_SLUG" ]] && error "Tree is required."

# Determine tier from slug
TIER_SLUG="tier-1"
TIER="Tier 1 · Ancient Grove"
DIGITAL_TREES="cipher-tree fork-tree merkle-bark echo-tree null root-array binary-bloom signal-fern crystalvein lattice"
SPECTRUM_TREES="weeping-willow sakura bloodwood hearthwood stormwood quaking-aspen spiral drift hyperfocus-spire sensory-fern"
if echo "$DIGITAL_TREES" | grep -qw "$TREE_SLUG"; then
  TIER_SLUG="tier-2"; TIER="Tier 2 · Digital Grove"
elif echo "$SPECTRUM_TREES" | grep -qw "$TREE_SLUG"; then
  TIER_SLUG="tier-3"; TIER="Tier 3 · Living Spectrum"
fi

TREE_NAME=$(echo "$TREE_SLUG" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

read -rp "  Device type [primary]: " DEVICE_TYPE
DEVICE_TYPE="${DEVICE_TYPE:-primary}"

read -rp "  Owner / team: " OWNER
[[ -z "$OWNER" ]] && error "Owner is required."

read -rp "  One-line tagline: " TAGLINE
read -rp "  Short description (1-2 sentences): " DESCRIPTION

DATE=$(date +%Y-%m-%d)

# ─── Confirm ────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}  Planting Grove:${RESET}"
info "Name:   $DEVICE_NAME"
info "Slug:   $DEVICE_SLUG"
info "Tree:   $TREE_NAME ($TIER)"
info "Type:   $DEVICE_TYPE"
info "Owner:  $OWNER"
info "Date:   $DATE"
info "Path:   groves/$DEVICE_SLUG/"
echo ""
read -rp "  Confirm? [y/N]: " CONFIRM
[[ "${CONFIRM,,}" != "y" ]] && { echo "Cancelled."; exit 0; }

# ─── Plant the Grove ────────────────────────────────────────────────────────
echo ""
step "Creating grove directory..."
mkdir -p "$GROVE_PATH"

step "Copying and filling templates..."
for template_file in "$TEMPLATES_DIR"/*.md; do
  filename=$(basename "$template_file")
  target="$GROVE_PATH/$filename"

  sed \
    -e "s|{{DEVICE_NAME}}|$DEVICE_NAME|g" \
    -e "s|{{DEVICE_SLUG}}|$DEVICE_SLUG|g" \
    -e "s|{{TREE_NAME}}|$TREE_NAME|g" \
    -e "s|{{TREE_SLUG}}|$TREE_SLUG|g" \
    -e "s|{{TIER}}|$TIER|g" \
    -e "s|{{TIER_SLUG}}|$TIER_SLUG|g" \
    -e "s|{{DEVICE_TYPE}}|$DEVICE_TYPE|g" \
    -e "s|{{OWNER}}|$OWNER|g" \
    -e "s|{{DATE}}|$DATE|g" \
    -e "s|{{TAGLINE}}|$TAGLINE|g" \
    -e "s|{{DESCRIPTION}}|$DESCRIPTION|g" \
    "$template_file" > "$target"

  success "Created $filename"
done

step "Reminder: register this Grove in GROVES.md"
info  "Add a row to the registry table in $GROVES_MD"
info  "Format: | N | $DEVICE_NAME | \`groves/$DEVICE_SLUG/\` | $TREE_NAME | $TIER_SLUG | Active | 1 | $DATE |"

# ─── Done ───────────────────────────────────────────────────────────────────
echo ""
echo -e "${GREEN}${BOLD}  Grove planted.${RESET}"
echo ""
echo -e "  ${CYAN}groves/$DEVICE_SLUG/${RESET}"
echo ""
echo "  Next steps:"
echo "  1. Review and complete all files in groves/$DEVICE_SLUG/"
echo "  2. Register in GROVES.md"
echo "  3. git add groves/$DEVICE_SLUG/ GROVES.md"
echo "  4. git commit -m \"feat(grove): plant $DEVICE_SLUG — $TREE_SLUG\""
echo ""
