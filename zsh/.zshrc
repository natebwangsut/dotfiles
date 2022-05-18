
#
# .zshrc
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Personal configurations for Z shell
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For performance debugging
# zmodload zsh/zprof

# History
# set history size
export HISTSIZE=100000
# save history after logout
export SAVEHIST=100000
# history file
export HISTFILE=~/.zhistory
# append into history file
setopt INC_APPEND_HISTORY
# save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
# add timestamp for each entry
setopt EXTENDED_HISTORY

# Declare editor preference
export EDITOR=nvim
export VISUAL=$EDITOR

# Declare LANG + Locale
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

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
alias gfpt='git fetch origin --prune "+refs/tags/*:refs/tags/*"'
alias gst='git status'
alias gla="git log --graph --pretty=format:'%C(auto)%h -%d %s %C(green)(%cr) %C(bold blue)[%an]%Creset'"
alias gpu="git rev-parse --abbrev-ref HEAD | xargs git push -u origin"
alias git-clean-unreachable="git reflog expire --expire-unreachable=now --all && git gc --prune=now"

# For Python
alias python=python3  # I use python3

# Lazy loading of kubectl
# kubectl () {
#     command kubectl $*
#     if [[ -z $KUBECTL_COMPLETE ]]
#     then
#         source <(command kubectl completion zsh)
#         KUBECTL_COMPLETE=1
#     fi
# }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nvm
export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"; nvm $@" # Only load nvm when used

################################################################################
# Platform Specific Configuration
################################################################################

case "$(uname -s)" in
    # +50 MS for load time
    Darwin)
        #echo 'macOS'

        # For Go
        export GOPATH="${HOME}/.go"
        export GOROOT="/usr/local/opt/go/libexec"
        export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

        # Installing MySQL client without MySQL server
        # brew install mysql-client
        export PATH="/usr/local/opt/mysql-client/bin:$PATH"
        ;;

    #
    Linux)
        #echo 'Linux'
        export GOPATH="${HOME}/.go"
        #export GOROOT="${HOME}/.go/root"
        export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
        ;;

    #
    #
    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        #echo 'MS Windows'
        ;;

    # Add here more strings to compare
    # See correspondence table at the bottom of this answer
    *)
        echo 'Other OS'
        ;;
esac

# Somehow this needed to be bind else vscode integrated terminal would not work
bindkey '^R' history-incremental-search-backward

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

# Initialise .zinit
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Default added annexes
zinit light-mode for \
    zdharma-continuum/zinit-annex-readurl \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Alias for git
zinit snippet PZTM::git/alias.zsh

# Autocomplete + compinit
zinit snippet PZTM::completion

# Search + Syntax Highlight
# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma-continuum.github.io/zinit/wiki/For-Syntax/
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma-continuum/fast-syntax-highlighting \
                zdharma-continuum/history-search-multi-word

# Shallow clone then load p10k prompts
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit for \
    light-mode zdharma-continuum/z-a-rust \
    light-mode zdharma-continuum/z-a-as-monitor \
               zdharma-continuum/z-a-patch-dl \
               zdharma-continuum/z-a-bin-gem-node

# For performance debugging
# zprof
### End of Zinit's installer chunk
