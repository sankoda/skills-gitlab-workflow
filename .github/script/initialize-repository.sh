#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/initialize-repository.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

create_branch() {
    BRANCH_NAME="$1"
    git checkout main
    git checkout -b $BRANCH_NAME
}

push_empty_branch() {
    BRANCH_NAME="$1"
    git commit --allow-empty --message="Empty commit to initialize branch"
    git push --set-upstream origin $BRANCH_NAME
}

echo "nonprod branch"
NONPROD_BRANCH=nonprod
create_branch $NONPROD_BRANCH
push_empty_branch $NONPROD_BRANCH

echo "prod branch"
PROD_BRANCH=prod
create_branch $PROD_BRANCH
push_empty_branch $PROD_BRANCH

echo "Create feature branch"
FEATURE_BRANCH=update-text-colors
create_branch $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/engine.js engine.js
cp .github/changes/game-with-bug.js game.js

echo "Commit file changes"
git add engine.js game.js
git commit -m "Changed game text colors to green"

echo "Push feature branch"
git push --set-upstream origin $FEATURE_BRANCH

echo "Restore main"
git checkout main