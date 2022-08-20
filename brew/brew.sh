#!/bin/sh

#
# brew.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Installing packages from brew
#

brew update && brew upgrade

################################################################################
# Tools
################################################################################

# Dependencies remover - since brew itself does not track deps
brew tap beeftornado/rmtree

# Utilities
brew install zsh
brew install coreutils
brew install vim
brew install neovim
brew install wget
brew install ripgrep
brew install gnupg
brew install gnu-sed

brew install htop
brew install glances

# Containers
brew install helm
brew install docker
brew install kubectl kubectx

# Development
brew install go
brew install python
brew install nvm
brew install node
brew install typescript

# CLI Tools
brew install jq yq

################################################################################
# Casks
################################################################################

# Terminal
brew install --cask iterm2

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
brew install --cask sublime-text
# brew install --cask visual-studio-code-insiders # beta version of visual-studio-code

# HTTP Client
brew install --cask insomnia

# Laptop/PC Monitoring
brew install --cask eul

# Raycast - Alfred's alternative
brew install --cask raycast

# Windows management
brew install --cask alt-tab
brew install --cask rectangle-pro

################################################################################
# Fonts
################################################################################

# Tap into casks
brew tap homebrew/cask-fonts

# Sans
brew install font-dm-sans
brew install font-inter
brew install font-lexend
brew install font-poppins

# Monospace
brew install font-cascadia-code
brew install font-cascadia-code-pl
brew install font-dm-mono
brew install font-fira-code
brew install font-fira-code-nerd-font
brew install font-inconsolata
brew install font-inconsolata-nerd-font
brew install font-jetbrains-mono
brew install font-jetbrains-mono-nerd-font
brew install font-roboto-mono
brew install font-roboto-mono-nerd-font
