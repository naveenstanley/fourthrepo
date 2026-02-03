#!/bin/bash
cd "/Users/naveenselvaraj/Downloads/FlowDesk/assignment" || exit 1

# Only commit if there are changes
if git diff --quiet && git diff --cached --quiet; then
  exit 0
fi

git add .
git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M')"
git push
