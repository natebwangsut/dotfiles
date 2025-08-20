#!/bin/sh

#
# brew.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Installing packages from brew
#

# Update tabs before starting the installation scripts
brew update && brew upgrade

################################################################################
# Tools
################################################################################

# Dependencies remover - since brew itself does not track deps
brew tap beeftornado/rmtree

# Utilities
brew install coreutils    # use gnu bins not apple precomplied
brew install gnu-sed      # use gnu sed not apple's
brew install gnupg
brew install wget
brew install jq
brew install yq
brew install fzf
brew install ripgrep
brew install vim
brew install neovim
brew install zsh          # zshell
brew install htop         # machine performance monitoring tool
brew install glances      # machine performance monitoring tool
brew install git-cliff    # changelog generator
brew install git-delta    # diff viewer

# Containers
brew install helm
brew install docker
brew install kubectl kubectx
