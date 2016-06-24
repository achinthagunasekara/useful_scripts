#!/bin/bash -e
#script to run git pull for all repos in current directory
for D in `find . -type d -maxdepth 1 -not -path '*/\.*' -not -name '.'`
do
  printf "  \e[31m%-5s\e[m%s\n" "Git Pulling on" "${D}" # red
  git --git-dir=${D}/.git --work-tree=${D} pull
done
