#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install homebrew + cask, bundle (included)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install from brewfile
brew bundle

# accept xcode
sudo xcodebuild -license accept

# MAC AND APP CONFIG

source setup-macos.sh
source setup-symlinks.sh
source setup-apps.sh
source setup-git.sh
source setup-services.sh

