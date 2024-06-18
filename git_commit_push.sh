#!/bin/bash

# Script to automate committing and pushing changes to GitHub and GitLab

# Define commit message
COMMIT_MESSAGE=$1

# Check if a commit message was provided
if [ -z "$COMMIT_MESSAGE" ]; then
  echo "Error: No commit message provided."
  echo "Usage: ./git_commit_push.sh \"Your commit message\""
  exit 1
fi

# Stage all changes
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push to GitHub
git push origin main

# Push to GitLab
git push gitlab main

echo "Changes have been pushed to both GitHub and GitLab."
