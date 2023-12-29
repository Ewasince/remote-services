#!/bin/bash
set -e
set -x

# RUN SCRIPT FROM CONTENT ROOT

clone_repos=("task1")
tmp_dir=`readlink -f tmp`
root_dir=`pwd`
echo $tmp_dir

for d in $clone_repos
do
  cd $root_dir

  # const
  rep_dir=$tmp_dir/$d
  rep_url="git@gitlab-service:root/$d.git"

  # copy
  cd $d
  export GLOBIGNORE='venv'
  cp * -r $tmp_dir/$d

  # push
  cd $rep_dir
  git add .
  git commit -m "auto commit" | echo "nothing commit for $d, skip"
  git push | echo "nothing commit for $d, skip"
done