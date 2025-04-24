#!/bin/bash

set -euo pipefail

# Ensure we're inside a Git repo
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "❌ Not inside a Git repository."
  exit 1
fi

# Check for RuboCop in the Gemfile.lock (i.e., part of the project)
if ! grep -q "rubocop" Gemfile.lock 2>/dev/null; then
  echo "❌ RuboCop not found in Gemfile.lock. Are you in a Ruby project?"
  exit 1
fi

# Get changed Ruby files
changed_files=$(git diff --name-only --diff-filter=ACMRTUXB HEAD | grep '\.rb$' || true)

if [ -z "$changed_files" ]; then
  echo "✅ No changed Ruby files to lint."
  exit 0
fi

echo "🔧 Running RuboCop autofix on changed files..."
bundle exec rubocop -a $changed_files
echo "✅ RuboCop autofix complete.