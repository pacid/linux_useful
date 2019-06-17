#!/usr/bin/env bash


for f in `find . -maxdepth 1 -mindepth 1 -type d`; do
  cd "$f"
  git status
  git stash
  git clean -d -f
  git checkout master
  git pull
  cd ..
done
