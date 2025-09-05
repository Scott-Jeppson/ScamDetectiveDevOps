#!/bin/bash

for dir in backend AIServer frontend; do
  if [ -d "../$dir/.git" ]; then
    echo "Pushing $dir..."
    cd "../$dir"
    git add .
    read -p "Commit message for $dir: " msg
    git commit -m "$msg"
    git push
  else
    echo "$dir is not a git repository."
  fi
done