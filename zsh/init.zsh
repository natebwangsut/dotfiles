#
# Nate Bhurinat Wangsutthitham
# @natebwangsut <nate.bwangsut@gmail.com>
#
# Use github.com/natebwangsut/dotfiles
# if [[ -s "$HOME/github/dotfiles/zsh/.zshrc" ]]; then
#   source "$HOME/github/dotfiles/zsh/.zshrc"
# fi

# Use GNU Coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Android SDK
#export ANDROID_HOME='/usr/local/share/android-sdk'
#export ANDROID_SDK_ROOT='/usr/local/share/android-sdk'
#alias emulator="${ANDROID_HOME}/emulator/emulator"

# Declare default editor
export VISUAL="vim"
export EDITOR="vim"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Turn colour on for all 'ls' command
alias ls='ls --color'
alias gs='git status'
#alias gla='git log --all --decorate --oneline --graph'
alias gla="git log --all --graph --pretty=format:'%C(auto)%h%C(auto)%d %s %C(dim white)(%aN, %ar)'"
