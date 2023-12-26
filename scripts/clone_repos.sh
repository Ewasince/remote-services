#!/bin/bash
set -e
set -x

# RUN SCRIPT FROM CONTENT ROOT

clone_repos=("task1 task2")
tmp_dir="tmp"
root_dir=`pwd`
echo $root_dir

for d in $clone_repos
do
  cd $root_dir

  rep_dir=$tmp_dir/$d
  rep_url="git@gitlab-service:root/$d.git"
#  rm -rf rep_dir
  cp $d -r $tmp_dir
  cd $rep_dir
  git add .
  git commit -m "auto commit" | echo "nothing commit for $d, skip"
  git push origin dev | echo "nothing commit for $d, skip"
#  cd rep_dir && git init
done