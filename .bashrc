parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PATH="/usr/local/sbin:$PATH"
export EDITOR=nvim

# Enable 'ls' Colour
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Showing Current Branch in Terminal
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
