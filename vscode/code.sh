#!/bin/bash

project(){
  repo=$1
  if [ -z "$repo" ]; then
    echo "missing repository name"
    return
  fi

  repo_path=$(find /home/$(whoami)/workspace/ -maxdepth 3 -type d -name "$repo")

  if [ -z "$repo_path" ]; then
    repo_path=$(find /home/$(whoami)/workspace/github.com/ -maxdepth 2 -type d -name "$repo")
  fi

  if [ -z "$repo_path" ]; then
    echo "repository not found"
    return
  fi

  code "$repo_path"
}
