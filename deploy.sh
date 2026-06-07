#!/usr/bin/env bash
# Push sage-articles to GitHub and enable Pages. Run once after: gh auth login
set -euo pipefail
cd "$(dirname "$0")"
REPO="vikasindoria100/sage-articles"
GH="${GH:-/opt/homebrew/bin/gh}"

if ! "$GH" auth status &>/dev/null; then
  echo "GitHub login required — a browser window will open."
  "$GH" auth login -h github.com -p https -w
fi

"$GH" auth setup-git
git push -u origin main

echo "Enabling GitHub Pages (main / root)..."
"$GH" api "repos/${REPO}/pages" -X POST \
  -f build_type=legacy \
  -f source[branch]=main \
  -f source[path]=/ 2>/dev/null || \
"$GH" api "repos/${REPO}/pages" -X PUT \
  -f build_type=legacy \
  -f source[branch]=main \
  -f source[path]=/

PAGES_URL="https://vikasindoria100.github.io/sage-articles/"
echo ""
echo "Done. Pages URL (may take 1–3 min to go live):"
echo "  $PAGES_URL"
echo ""
echo "Medium Import: https://medium.com/p/import"
echo "  Paste: $PAGES_URL"
