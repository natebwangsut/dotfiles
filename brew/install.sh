#!/bin/sh

#
# Installing packages from brew
#

brew update && brew upgrade

################################################################################
# Tools
################################################################################

# Dependencies remover - since brew itself does not track deps
brew tap beeftornado/rmtree

# Utilities
brew install coreutils
brew install vim
brew install wget
brew install ripgrep

brew install gnu-sed

# Containers
brew install helm
brew install docker
brew install kubectl

# Development
brew install go

brew install python

brew install node
brew install typescript

################################################################################
# Casks
################################################################################

# Music
brew cask install spotify

# Messaging
brew cask install discord

# Browser
brew cask install firefox
brew cask install microsoft-edge

# Development Tools
brew cask install docker
brew cask install fork
brew cask install jetbrains-toolbox
brew cask install visual-studio-eode
