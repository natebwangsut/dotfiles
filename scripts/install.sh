#!/bin/bash

#
# install.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Script for installing dependencies for Unix machines
#

################################################################################
# Symlinks
################################################################################

# Vim
ln -s $HOME/github/dotfiles/.vim           $HOME
ln -s $HOME/github/dotfiles/.vim/init.vim  $HOME/.vimrc

# Zsh
ln -s $HOME/github/dotfiles/zsh/.zshrc     $HOME/.zshrc

################################################################################
# Editors Setup
################################################################################

#
# Install vim-plug
#
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#
# Install nvchad
#
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
