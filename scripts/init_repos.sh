#!/bin/bash
set -e
set -x

# RUN SCRIPT FROM CONTENT ROOT
# BEFORE SCRIPT ADD SSH KEY TO GITLAB

clone_repos=("task1 task2")
tmp_dir=`readlink -f tmp`
cur_dir=$PWD

if [ -d "$tmp_dir" ]; then
  rm -rf $tmp_dir
fi
mkdir -p $tmp_dir

for d in $clone_repos
do
  cd $cur_dir
  rep_dir=$tmp_dir/$d
  rep_url="git@gitlab-service:root/$d.git"
#  rm -rf rep_dir
#  mkdir -p $rep_dir
  cd $tmp_dir
  git clone $rep_url
  cd $cur_dir
  cp $d -r $tmp_dir

#  git init
  git add .
  git commit -m "auto commit" || echo a
  git push
#  git remote add origin $rep_url
#  git push --set-upstream origin master
#  cp $d -r $tmp_dir

#  cd rep_dir && git init
done