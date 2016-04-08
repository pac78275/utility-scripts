#!/bin/sh

# author:      Josh Westmoreland
# date:        23/09/2015
# email:       joshua.westmoreland@me.com
# description: Alaises for commonly used commands

# General commands
alias c='clear'
alias crf='cp -rf'
alias d='pwd'
alias del='rm -rf'
alias g='grep -irn'
alias k='kill'
alias k9='kill -9'
alias l='ls -alhG'
alias p='ps -eaf'

# Ruby
alias r='ruby'
alias gi='gem install'
alias gu='gem uninstall'

# Git
alias gcl='git clone'
alias gpl='git pull'
alias gp='git pull && git push'
alias gco='git checkout'
alias gcam='git commit -am'
alias gr='git reset --hard'
alias gc='git clean -df'
alias g+='git add --all'
alias gs='git status'
alias gb='git branch'
alias gba='git branch --all'
alias gbr='git branch --remote'
alias gpom='git push origin master'

# Git LFS
alias lfst='git lfs track'
alias lfsp'git lfs push'
alias lfspom'git lfs push origin master'
alias gra='git remote add'

# Hg
alias hcl='hg clone'
alias hf='hg fetch'
alias hcam='hg commit -A -m'
alias hp='hg fetch && hg push'

# OS dependant aliases
if [ "$(uname)" == "Darwin" ]
then
  if [ -n "$(brew -v)" ]
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
  fi
elif [ "$(uname)" == "Linux" ]
then
  alias ri='rpm -ivh'
  alias ru='rpm -e'
  alias rc='rpm -qpl'
elif [ "$(uname)" == "*BSD*" ]
then
  echo "BSD! BSD! We've got BSD here!"
  echo "See? No one cares."
elif [ "$(uname)" == "SunOS" ]
then
  alias pi='pkginfo'
  alias pil='pkginfo -l'
  alias pa='/usr/sbin/pkgadd -G -a admin -d'
  alias pr='/usr/sbin/pkgrm -n -a admin'
fi
