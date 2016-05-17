#!/usr/local/bin/bash

# SetupMacApps.sh
#
# author - Josh Westmoreland
# email  - joshua.westmoreland@theice.com

##########################################################################################
######################################### PRELIM #########################################
##########################################################################################

# installs xcode command line tools
# works on 10.9.X; unknown compatability with 10.10.X
xcode-select --install

##########################################################################################
########################################## RUBY ##########################################
##########################################################################################

curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 1.8.7
rvm install 1.9.3
rvm install 2.1.5 --default
rvm install 2.2.2

gem update --system 
gem install buildr
gem install i2cssh
# TODO: add more necessary/useful gems to install

##########################################################################################
########################################## BREW ##########################################
##########################################################################################

# setting up homebrew
cd $HOME
git clone https://github.com/mxcl/homebrew.git
echo export PATH=$HOME/homebrew/bin:$PATH >> ~/.bash_profile
source ~/.bash_profile

# setting up brewcask
brew install caskroom/cask/brew-cask

# Updating formulae and cleaning up
brew update 
brew cask update
brew cleanup
brew cask cleanup

# adding these to use the GNU command line utils instead of their OS X (BSD) equivalents
# the reason for doing this is the the GNU utils are generally faster than the BSD utils
# for example GNU grep is an ORDER OF MAGNITUDE faster than BSD grep
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" >> ~/.bash_profile
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH" >> ~/.bash_profile
source ~/.bash_profile

# Adding some taps...
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap caskroom/versions

# this contains most of what we want...
# GNU Coreutils contains the most essential UNIX commands, such as ls, cat, et al
brew install coreutils

# Other useful packages...
brew install binutils
brew install diffutils
brew install ed --default-names
brew install findutils --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# Many of these command line tools already exist on OS X, but you may want a newer version:
brew install bash
brew install emacs
brew install gdb  # gdb requires further actions to make it work. See `brew info gdb`.
brew install gpatch
brew install m4
brew install make
brew install nano

# As a complementary set of packages, the following ones are not from GNU, but you
# can install and use a newer version instead of the version shipped by OS X
brew install file-formula
brew install git
brew install less
brew install perl518   # must run "brew tap homebrew/versions" first!
brew install python
brew install rsync
brew install svn
brew install unzip
brew install vim --override-system-vi
brew install macvim --override-system-vim --custom-system-icons
brew install zsh

# setting up other necessary/very useful applications
brew install hg
brew install csshx
brew install dos2unix
brew install rpm
brew install terminator
brew install ack 
brew install autojump 
brew install automake 
brew install autoconf
brew install colordiff 
brew install curl 
brew install git-flow 
brew install hub 
brew install icoutils 
brew install imagemagick 
brew install libmemcached 
brew install memcached 
brew install openssl 
brew install ossp-uuid 
brew install qt 
brew install readline 
brew install redis 
brew install tmux
brew install unzip
brew install node

# brew cask installing some other apps (to ~/Applications/)'
brew cask install asepsis
brew cask install atom
brew cask install caffeine
brew cask install ccleaner
brew cask install filezilla
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install go2shell
brew cask install intellij-idea
brew cask install iterm2
brew cask install java6
brew cask install java7
brew cask install java8
brew cask install java
brew cask install jenkins
brew cask install loading
brew cask install rescuetime
brew cask install rubymine
brew cask install sourcetree
brew cask install spotify
brew cask install the-unarchiver
brew cask install virtualbox
brew cask install vlc
brew cask install xquartz
brew cask install xtrafinder

# cleaning up a bit
brew cleanup
brew cask cleanup

# and finally
source ~/.bash_profile

##########################################################################################
########################################## MISC ##########################################
##########################################################################################

# setting up syntax highligitng for nano
git clone https://github.com/nanorc/nanorc.git
cd nanorc
./configure
make
make install
cd ..
rm -rf nanorc
echo include ~/.nano/syntax/ALL.nanorc >> ~/.nanorc

# setting up IE virtualbox appliances
WORKING_DIR=pwd
mkdir ~/VM
cd ~/VM
# IE8 - XP
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/\
OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"
# IE9 - Win7
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/\
OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"
# IE10 - Win8
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/\
OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"
cd $WORKING_DIR
