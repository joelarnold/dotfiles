#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash

# Add the new shell to the list of allowed shells
# sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell
# chsh -s /usr/local/bin/bash

brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

brew install ant
brew install cf-cli
brew install dark-mode
brew install dos2unix
brew install git
brew install gradle
brew install groovy
brew install htop-osx
brew install httpie
brew install nmap
brew install node
brew install sbt
brew install scala
brew install subversion

brew tap caskroom/cask

# These should be installed manually as they require root access
# brew cask install atom
# brew cask install java
# brew cask install karabiner
# brew cask install macpass
# brew cask install skype
# brew cask install slack
# brew cask install spotify
# brew cask install steam
# brew cask install utorrent
# brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup

# Install Atom plugins
apm install asciidoc-preview
apm install docblockr
apm install git-plus
apm install highlight-selected
apm install language-asciidoc
apm install language-gradle
apm install language-oracle
apm install linter
apm install linter-eslint
apm install linter-jsonlint
apm install react

apm clean
