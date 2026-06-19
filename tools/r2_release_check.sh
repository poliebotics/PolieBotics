#!/usr/bin/env bash
# Pre-publish guard: FAIL if ANY unresolved __*_BASE__ template placeholder remains
# anywhere in the repo (download lists, gallery, Truth Beam page, mask, etc).
# Catches every base token, not just __R2_BASE__ — e.g. __POLIEBOTICS_BASE__ (the
# PoliePals/RT assets held for the poliebotics gateway). Wire this into your
# release / pre-push step so placeholder links can never ship as live 404s.
set -euo pipefail
cd "$(dirname "$0")/.."   # repo root

# match any token of the form __SOMETHING_BASE__ (uppercase + underscores).
# -I skips binaries (PNG/PDF); exclude .git and this tools/ dir (the scripts
# themselves contain the literal placeholder strings).
pat='__[A-Z][A-Z_]*_BASE__'
mapfile -t hits < <(grep -rIlE "$pat" . --exclude-dir=.git --exclude-dir=tools 2>/dev/null || true)

if [ "${#hits[@]}" -gt 0 ]; then
  echo "RELEASE BLOCKED — unresolved __*_BASE__ placeholders remain:" >&2
  total=0
  for f in "${hits[@]}"; do
    n=$(grep -coE "$pat" "$f")
    total=$((total + n))
    # show which token(s) in this file
    toks=$(grep -ohE "$pat" "$f" | sort -u | paste -sd, -)
    printf '  %-40s %3d  [%s]\n' "$f" "$n" "$toks" >&2
  done
  echo "  ----" >&2
  echo "  $total occurrences across ${#hits[@]} files." >&2
  echo "Fill each base, then re-check:" >&2
  echo "  tools/r2_fill.sh <https://your-real-r2-base-url>      # fills __R2_BASE__" >&2
  echo "  (other __*_BASE__ tokens, e.g. __POLIEBOTICS_BASE__, are filled when their host is live)" >&2
  exit 1
fi
echo "OK — no __*_BASE__ placeholders remain. Safe to publish."
