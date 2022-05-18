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

brew install htop
brew install glances

# Containers
brew install helm
brew install docker
brew install kubectl

# Development
brew install go

brew install python

brew install node
brew install typescript

# CLI Tools
brew install jq yq

################################################################################
# Casks
################################################################################

# Music
brew install --cask spotify

# Messaging
brew install --cask discord

# Browser
brew install --cask firefox
brew install --cask microsoft-edge

# Development Tools
brew install --cask docker
brew install --cask fork
brew install --cask jetbrains-toolbox
brew install --cask visual-studio-code
brew install --cask visual-studio-code-insiders

# HTTP Client
brew install --cask insomnia

# Monitoring
brew install --cask eul

# Raycast - Alfred's alternative
brew install --cask raycast

################################################################################
# Fonts
################################################################################

brew tap homebrew/cask-fonts

#
brew install font-dm-sans
brew install font-lexend

# Monospace
brew install font-cascadia-code
brew install font-cascadia-code-pl
brew install font-dm-mono
brew install font-fira-code
brew install font-fira-code-nerd-font
brew install font-inconsolata
brew install font-jetbrains-mono-nerd-font
brew install font-roboto-mono
