#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/create-hotfix-pr.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

echo "Create feature branch"
git checkout main
HOTFIX_BRANCH=hotfix/fix-game-background
git checkout -b $HOTFIX_BRANCH

echo "Make changes to files"
cp .github/changes/game-fixed.js game.js

echo "Commit file changes"
git add game.js
git commit -m "Set game background back to black"

echo "Push hotfix branch"
git push --set-upstream origin $HOTFIX_BRANCH

echo "Restore main"
git checkout main