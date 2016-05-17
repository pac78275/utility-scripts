# Original article found here:
# https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
# All credit given to Hong Xu, ther original author o said article

if [ ! -d /Library/Developer/CommandLineTools ]
then
  xcode-select --install
fi

# installing brew just in case it isn't already present
# old method installing homebrew globally
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# new method installing homebrew to user's home dir
cd ~/
git clone https://github.com/mxcl/homebrew.git
echo export PATH=~/homebrew/bin:${PATH} >> ~/.bash_profile
source ~/.bash_profile

# adding these to use the GNU command line utils instead of their BSD equivalents that come with OS X
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" >> ~/.bash_profile
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH" >> ~/.bash_profile

# Adding some taps...
brew tap homebrew/dupes
brew tap homebrew/versions

# this contains most of what we want...
# GNU Coreutils contains the most essential UNIX commands, such as ls, cat...
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

source ~/.bash_profile
