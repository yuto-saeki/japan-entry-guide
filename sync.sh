#!/bin/bash
# Obsidian → GitHub sync script

OBSIDIAN_DIR="/Users/yuto-saeki/Library/CloudStorage/GoogleDrive-yutosaeki2@gmail.com/My Drive/02. Business/07. Productivity/01. Obsidian/Obsidian - Yuto/outputs/japan-entry-guide"
GIT_DIR="/Users/yuto-saeki/Projects/japan-entry-guide"

# Copy markdown files from Obsidian to git repo
rsync -av --include="*.md" --exclude="*" "$OBSIDIAN_DIR/" "$GIT_DIR/"

# Push to GitHub
cd "$GIT_DIR"
git add .
git commit -m "Update content from Obsidian - $(date '+%Y-%m-%d %H:%M')"
git push origin main

echo "✅ Synced to GitHub"
