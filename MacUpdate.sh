#!/bin/bash

# dev  : Josh Westmoreland
# date : 2021-03-03
# email: pac78275@gmail.com

# ==================== variables ==================== #

SEP='------------------------------'

# ==================== execution ==================== #

echo $SEP
date
echo $SEP
softwareupdate -ia --verbose
echo $SEP
if [[ -z "$(brew list | grep mas)" ]]
then 
  brew upgrade mas
else
  echo 'mas is already installed. Proceeding...'
fi
mas outdated
mas upgrade
echo $SEP
brew update
brew upgrade
#brew upgrade --cask
brew cleanup
echo
