#!/usr/bin/env bash
# Substitute the real R2 base URL for the __R2_BASE__ template placeholder across
# the whole repo. Run this at publish time (or on a publish copy) once you have the
# real immutable base URL.
#
#   Usage:  tools/r2_fill.sh https://pub-XXXX.r2.dev      (no trailing slash)
#           tools/r2_fill.sh https://files.poliebotics.com
#
# NOTE: this edits files IN PLACE. If you keep the template in git, run it only on a
# publish copy, or commit the filled result deliberately. Run r2_release_check.sh after.
set -euo pipefail
base="${1:?usage: r2_fill.sh <r2-base-url-no-trailing-slash>}"
base="${base%/}"   # strip any trailing slash
case "$base" in
  http://*|https://*) ;;
  *) echo "refusing: base URL must start with http:// or https:// (got '$base')" >&2; exit 2 ;;
esac
cd "$(dirname "$0")/.."

mapfile -t files < <(grep -rIl '__R2_BASE__' . --exclude-dir=.git --exclude-dir=tools)
if [ "${#files[@]}" -eq 0 ]; then echo "nothing to fill — no placeholders found."; exit 0; fi

total=0
for f in "${files[@]}"; do
  n=$(grep -c '__R2_BASE__' "$f")
  total=$((total + n))
  # '#' delimiter so URL slashes don't need escaping
  sed -i "s#__R2_BASE__#${base}#g" "$f"
  printf '  filled %-40s %d\n' "$f" "$n"
done
echo "done — $total occurrences -> $base"
echo "now run: tools/r2_release_check.sh"
