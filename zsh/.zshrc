#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Declare editor preference
export EDITOR=vim
export VISUAL=$EDITOR

# Declare LANG + Locale
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Use GNU bins instead of BSD bins
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# Turn colour on for all 'ls' command
alias ls='ls --color=auto'

# Kubectl Alias
alias k=kubectl

# Tmux
alias tmux-main="tmux attach || tmux new -s main"

# Git Alias
alias gst='git status'
alias gla="git log --graph --pretty=format:'%C(auto)%h -%d %s %C(green)(%cr) %C(bold blue)[%an]%Creset'"
alias gpu="git rev-parse --abbrev-ref HEAD | xargs git push -u origin"

# For Go
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Map Home -> Beginning and End -> EOL
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line

# Kubectl Auto-complete
#source <(kubectl completion zsh)

#export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Setup HOME for Groovy
#export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Setup HOME for Dart
#export PATH="$PATH":"$HOME/.pub-cache/bin"

# Setup for GRAALVM
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home
# export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home/bin:"$PATH"
#
