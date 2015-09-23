#!/bin/sh

# author:      Josh Westmoreland
# date:        23/09/2015
# email:       joshua.westmoreland@me.com
# description: Alaises for commonly used commands

# General commands
alias c='clear'
alias d='pwd'
alias del='rm -rf'
alias g='grep -irn'
alias k='kill'
alias k9='kill -9'
alias l='ls -alh'
alias p='ps -eaf'

# Git
alias gcl='git clone'
alias gp='git push'
alias gco='git checkout'
alias gcam='git commit -am'
alias gr='git reset --hard'
alias gc='git clean -df'
alias g+='git add --all'

# Hg
alias hcl='hg clone'
alias hf='hg fetch'

# OS dependant aliases
if [ "$(uname)" == "Darwin" ]
then
  alias bi='brew install'
  alias bif='brew install --force'
  alias bu='brew uninstall'
  alias buf='brew uninstall --force'
  alias br='brew remove'
  alias brf='brew remove --force'
  alias bc='brew cleanup'
  alias bci='brew cask install'
  alias bcif='brew cask install --force'
  alias bcu='brew cask uninstall'
  alias bcuf='brew cask uninstall --force'
  alias bcr='brew cask remove'
  alias bcrf='brew cask remove --force'
  alias bcc='brew cask cleanup'
elif [ "$(uname)" == "Linux" ]
then
  echo "Linux! Linux! We've got Linux here!"
  echo "See? No one cares."
fi
