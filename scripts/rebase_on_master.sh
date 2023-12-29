#!/bin/bash
set -e
set -x

git checkout main
git pull
git rebase dev
git checkout dev
git push
