#!/usr/local/bin/bash

# author - Josh Westmoreland
# email  - joshua.westmoreland@theice.com
# original from http://lolindrath.com/2011/09/13/hombrew-from-home-directory/

cd $HOME
git clone https://github.com/mxcl/homebrew.git
echo export PATH=$HOME/homebrew/bin:$PATH >> ~/.bash_profile
source ~/.bash_profile
which brew
