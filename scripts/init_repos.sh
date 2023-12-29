#!/bin/bash
set -e
set -x

# RUN SCRIPT FROM CONTENT ROOT
# BEFORE SCRIPT ADD SSH KEY TO GITLAB

clone_repos=("task1 task2")
tmp_dir=`readlink -f tmp`
cur_dir=$PWD
readme=README.md

if [ -d "$tmp_dir" ]; then
  rm -rf $tmp_dir
fi
mkdir -p $tmp_dir

for d in $clone_repos
do
  # const
  cd $cur_dir
  rep_dir=$tmp_dir/$d
  rep_url="git@gitlab-service:root/$d.git"

  # clone repo
  cd $tmp_dir
  git clone $rep_url

#  # clear repo
#  cd $d
#  rm

  # copy readme
  cd $cur_dir
  cp $d/$readme $rep_dir

  # push readme to main
  cd $rep_dir
  git add .
  git commit -m "init"
  git push
  git checkout -b dev

  # copy project
  cd $cur_dir
  cp $d -r $tmp_dir

  # push project to dev
  cd $rep_dir
  git add .
  git commit -m "auto commit"
  git push --set-upstream origin dev
done