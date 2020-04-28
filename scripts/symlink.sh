#!/bin/sh

#
# Symlinking from $HOME/github/dotfiles
#

# Vim
ln -s $HOME/github/dotfiles/.vim $HOME
ln -s $HOME/github/dotfiles/.vim/init.vim .vimrc

# Zsh
ln -s $HOME/github/dotfiles/zsh/.zshrc .zshrc
ln -s $HOME/github/dotfiles/zsh/.zpreztorc .zpreztorc
