#!/usr/bin/env bash

# author       : Josh Westmoreland
# creation date: 2020-03-10
# email        : joshua.westmoreland@outlook.com
# description  : Alaises for commonly used commands on multiple platforms


# ================================================= functions ================================================= #

function gnb () {
  git pull
  git checkout -b "$1"
  git push origin "$1"
  git branch --set-upstream-to="origin/$1" "$1"
  echo "Branch $1 has been fully created both locally and remotely."
  git push
}

function gnt () {
  git tag "$1"
  git push origin --tags
}

function gdb () {
  if [ "$1" = "l" ] || [ -z "$1"]
  then
    git branch -d "$1"
  fi
  if [ "$1" = "r" ] || [ -z "$1"]
  then
    git push origin --delete "origin/$1"
  fi
  echo "Branch $1 has been deleted both locally and remotely."
}

# brings current branch up to date with base branch
function gud () {
  git merge "origin/$1"
}

# git pulls. commits, and pushes to simplify workflow
function gcp () {
  git pull
  git commit -a -m "$1"
  git push
}

function bug () {
  brew update
  brew upgrade
  brew upgrade --cask
  brew cleanup
}
