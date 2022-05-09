#!/bin/sh

#
# Symlinking from $HOME/github/dotfiles
#

# Vim
ln -s $HOME/github/dotfiles/.vim           $HOME
ln -s $HOME/github/dotfiles/.vim/init.vim  $HOME/.vimrc

# Zsh
ln -s $HOME/github/dotfiles/zsh/.zshrc     $HOME/.zshrc
ln -s $HOME/github/dotfiles/zsh/.zpreztorc $HOME/.zpreztorc
