#!/bin/sh
#
# InstallRVM.sh
#
# author:     Josh Westmoreland
# date:        2016/10/06
# email:       pac78275@gmail.com
# description: just installing RVM and demoing/testing a few common tasks

# installing command line tools if on a Mac
if [ "$(uname)" = "Darwin" ]; then xcode-select --install; fi

# installing RVM with auto dotfiles
# (this adds RVM to your PATH in .bashrc/.bash_profile/.profile)
# note: this will install RVM to ~/.rvm
curl -sSL https://get.rvm.io | bash -s stable --ruby --auto-dotfiles

# installing a couple of rubies
# note: anything older than ruby 2.2 should no longer be used and 2.1 hits EOL soon
rvm install 2.3.1
rvm install 2.2.4
rvm install 2.1.10

# setting a default ruby
rvm use 2.3.1 --default

# installing a few commonly used gems 
gem install rails json rugged

# testing upgrading a ruby
rvm upgrade 2.2.4 2.2.5

# copying over the gemset from the default ruby into another ruby
rvm gemset copy 2.3.1 2.2.5
