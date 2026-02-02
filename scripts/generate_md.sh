#!/usr/bin/env bash
# Generate .md versions of posts in _posts into _site paths so agents can fetch them
set -euo pipefail

SRC_DIR="_posts"
OUT_DIR="_site"

mkdir -p "$OUT_DIR"

# For Jekyll posts, filename is YYYY-MM-DD-title.md and permalink is usually /YYYY/MM/DD/title.html
# We'll recreate a simple mapping: for each post, generate a markdown file at the output path matching page.url + .md

# This script assumes Jekyll has already built the site into _site and that each post's URL can be derived from the filename

for file in "$SRC_DIR"/*.md; do
  filename=$(basename "$file")
  # remove date prefix
  slug=$(echo "$filename" | sed -E 's/^[0-9]{4}-[0-9]{2}-[0-9]{2}-//; s/\.md$//')
  # create target path (year/month/day) based on filename date
  year=$(echo "$filename" | cut -d- -f1)
  month=$(echo "$filename" | cut -d- -f2)
  day=$(echo "$filename" | cut -d- -f3)

  target_dir="$OUT_DIR/$year/$month/$day"
  mkdir -p "$target_dir"
  target_file="$target_dir/$slug.md"

  # Copy the source markdown to the target location
  cp "$file" "$target_file"
  echo "Generated $target_file"
done

echo "All markdown files generated into $OUT_DIR"