#!/usr/bin/env bash

# author       : Josh Westmoreland
# creation date: 23-09-2015
# email        : joshua.westmoreland@outlook.com
# description  : Alaises for commonly used commands on multiple platforms

# ================================================== aliases ================================================== #

# General commands
alias a='alias'
alias c='clear'
alias crf='cp -rf'
alias d='pwd'
alias del='rm -rf'
alias girn='grep -irn'
alias k='kill'
alias k9='kill -9'
alias l='ls -alhtr'
alias p='ps -eaf'
alias r='reset'
alias cko='curl -k -O'
alias s='sudo'
alias ssu='sudo su -'
alias sbp='source ~/.bash_profile'
alias sbrc='source ~/.bashrc' # the .bash_profile should already be doing this, but still
alias fps='ps -eaf | grep -i'
alias n='nano -c'

# Chef
if [ $(echo $PATH | grep chef) ]
then
  alias cg='chef generate'
  alias cgc='chef generate cookbook'
  alias cgt='chef generate template'
  alias cgr='chef generate recipe'
  alias ccl='chef-client -z -r'
  alias cs='cookstyle'
fi

# Inspec
if [ $(echo $PATH | grep inspec) ]
then
  alias iip='inspec init profile'
  alias ic='inspec check'
fi

# Ruby
if [ $(echo $PATH | grep ruby) ] && [ $(echo $PATH | grep gem) ]
then
  alias rb='ruby'
  alias gi='gem install'
  alias gino='gem install --no-ri --no-rdoc'
  alias gu='gem uninstall'
fi

# RVM
if [ $(echo $PATH | grep rvm) ]
then
  alias ru='rvm use'
  alias rud='rvm --default use'
  alias ri='rvm install'
  alias rl='rvm list'
  alias rgs='rvm get stable --auto' # upgrading rvm
  alias rug='rvm upgrade' # upgrading a ruby from x.x.x to x.x.y
  alias rgc='rvm gemset copy' # copying a gemset from one ruby to another
fi

# Git
if [ $(which git) ]
then
  # plain git
  alias gcl='git clone'
  alias gpl='git pull'
  alias gp='git pull && git push'
  alias gco='git checkout'
  alias gcb='git checkout -b'
  alias gdb='git branch -D'
  alias gcam='git commit -am'
  alias gr='git reset --hard'
  alias gc='git clean -df'
  alias g+='git add --all'
  alias gs='git status'
  alias gb='git branch'
  alias gba='git branch --all'
  alias gbr='git branch --remote'
  alias gpom='git push origin master'
  alias gpo='git push origin'
  alias gl='git log'
  alias glp="git log --pretty=format:'%C(yellow)%h|%Cred%ad|%Cblue%an|%Cgreen%d %Creset%s' --date=short | column -ts'|'"
  alias gd='git diff'
  alias gdh='git diff HEAD'
  alias gsb='git branch; git status'
  # Git LFS
  alias lfst='git lfs track'
  alias lfsp='git lfs push'
  alias lfspom='git lfs push origin master'
  alias gra='git remote add'
fi

# OS dependant aliases
if [ "$(uname)" == "Darwin" ]
then
  if [ -n "$(brew -v)" ]
  then
    alias bi='brew install'
    alias bif='brew install --force'
    alias bn='brew uninstall'
    alias bnf='brew uninstall --force'
    alias br='brew remove'
    alias brf='brew remove --force'
    alias bc='brew cleanup'
    alias bu='brew update'
    alias bg='brew upgrade'
    alias bci='brew cask install'
    alias bcif='brew cask install --force'
    alias bcu='brew cask uninstall'
    alias bcuf='brew cask uninstall --force'
    alias bcr='brew cask remove'
    alias bcrf='brew cask remove --force'
    alias bcc='brew cask cleanup'
    alias bo='brew oudated'
    alias bco='brew cask outdated'
  fi

  alias suf='softwareupdate --all --install --force'
  alias sul='softwareupdate -l'
  alias sui='softwareupdate -i'
  alias sua='softwareupdate --all -- install'
elif [ "$(uname)" == "Linux" ]
then
  # red hat family
  if [ -f '/etc/redhat-release' ]
  then
    alias ri='rpm -ivh'
    alias ru='rpm -e'
    alias rc='rpm -qpl'
    alias rqi='rpm -qi'
    alias rqa='rpm -qa'
    alias rqag='rpm -qa | grep -irn'
  fi
elif [ "$(uname)" == "*BSD*" ]
then
  echo "BSD! BSD! We've got BSD here!"
  echo "See? No one cares."
elif [ "$(uname)" == "SunOS" ]
then
  alias pi='pkginfo'
  alias pil='pkginfo -l'
  alias pig='pkginfo | grep -irn'
  alias pa='/usr/sbin/pkgadd -G -a admin -d'
  alias pr='/usr/sbin/pkgrm -n -a admin'
fi
