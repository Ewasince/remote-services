#!/bin/bash
set -e
set -x

# RUN SCRIPT FROM CONTENT ROOT

clone_repos=("task1 task2")
tmp_dir="tmp"

mkdir -p $tmp_dir

for d in $clone_repos
do
  rep_dir=$d/$tmp_dir
  rep_url="git@gitlab-service:root/$d.git"
#  rm -rf rep_dir
  cp $d -r $tmp_dir
  cd rep_dir
  git add .
  git commit -m "auto commit"
  git push origin dev
#  cd rep_dir && git init
done