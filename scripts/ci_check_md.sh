#!/usr/bin/env bash
# CI check: ensure that for every post in _posts there is a corresponding .md generated in _site
set -euo pipefail

missing=0
for file in _posts/*.md; do
  filename=$(basename "$file")
  slug=$(echo "$filename" | sed -E 's/^[0-9]{4}-[0-9]{2}-[0-9]{2}-//; s/\.md$//')
  year=$(echo "$filename" | cut -d- -f1)
  month=$(echo "$filename" | cut -d- -f2)
  day=$(echo "$filename" | cut -d- -f3)
  target="_site/$year/$month/$day/$slug.md"
  if [ ! -f "$target" ]; then
    echo "❌ Missing generated markdown for $file -> expected $target"
    missing=1
  fi
done

if [ "$missing" -eq 1 ]; then
  echo "CI CHECK FAILED: some markdown files missing"
  exit 1
else
  echo "CI CHECK PASSED: all markdown files present"
fi