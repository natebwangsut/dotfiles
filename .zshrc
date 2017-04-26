#
# Nate Bhurinat Wangsutthitham
# @natebwangsut <nate.bwangsut@gmail.com>
#
# Use github.com/natebwangsut/dotfiles
# if [[ -s "$HOME/github/dotfiles/.zshrc" ]]; then
#   source "$HOME/github/dotfiles/.zshrc"
# fi

# Use GNU Coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Declare default editor
export VISUAL="vim"
export EDITOR="vim"

# Turn colour on for all 'ls' command
alias ls='ls --color'
