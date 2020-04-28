#!/bin/sh

#
# Installing packages from brew
#

brew update && brew upgrade

################################################################################
#
################################################################################

# Utilities
brew install coreutils
brew install vim
brew install wget
brew install ripgrep

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

brew cask install discord
brew cask install docker  # Docker Desktop (macOS)
brew cask install visual-studio-code
