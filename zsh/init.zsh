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

# If macOS
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

# Git Alias
alias gst='git status'
#alias gla='git log --all --decorate --oneline --graph'
alias gla="git log --all --graph --pretty=format:'%C(auto)%h%C(auto)%d %s %C(dim white)(%aN, %ar)'"
alias gpu="git rev-parse --abbrev-ref HEAD | xargs git push -u origin"
alias tmux-main="tmux attach || tmux new -s main"

# Map Home -> Beginning and End -> EOL
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line

# Kubectl Auto-complete
#source <(kubectl completion zsh)

#export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Setup home for grrovy
#export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Setup HOME for Dart
#export PATH="$PATH":"$HOME/.pub-cache/bin"

# For GRAALVM
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home
# export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home/bin:"$PATH"

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# iTerm2 Integration
#iterm2_print_user_vars() {
#  iterm2_set_user_var kubeContext $(kubectl config current-context)
#}
