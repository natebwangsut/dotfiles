#
# ------------------------------------------------------------------------------
# @natebwangust zsh shell
# ------------------------------------------------------------------------------
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# For performance debugging
#zmodload zsh/zprof

# Declare editor preference
export EDITOR=vim
export VISUAL=$EDITOR

# Declare LANG + Locale
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Git
alias g='git'

# Branch (b)
alias gb='git branch'
alias gba='git branch --all --verbose'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbl='git branch --verbose'
alias gbL='git branch --all --verbose'
alias gbm='git branch --move'
alias gbM='git branch --move --force'
alias gbr='git branch --move'
alias gbR='git branch --move --force'
alias gbs='git show-branch'
alias gbS='git show-branch --all'
alias gbv='git branch --verbose'
alias gbV='git branch --verbose --verbose'
alias gbx='git branch --delete'
alias gbX='git branch --delete --force'

# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcm='git commit --message'
alias gcS='git commit -S --verbose'
alias gcSa='git commit -S --verbose --all'
alias gcSm='git commit -S --message'
alias gcam='git commit --all --message'
alias gco='git checkout'
alias gcO='git checkout --patch'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcSf='git commit -S --amend --reuse-message HEAD'
alias gcF='git commit --verbose --amend'
alias gcSF='git commit -S --verbose --amend'
alias gcp='git cherry-pick --ff'
alias gcP='git cherry-pick --no-commit'
alias gcr='git revert'
alias gcR='git reset "HEAD^"'
alias gcs='git show'
alias gcsS='git show --pretty=short --show-signature'
alias gcl='git-commit-lost'
alias gcy='git cherry -v --abbrev'
alias gcY='git cherry -v'

# Conflict (C)
alias gCl='git --no-pager diff --name-only --diff-filter=U'
alias gCa='git add $(gCl)'
alias gCe='git mergetool $(gCl)'
alias gCo='git checkout --ours --'
alias gCO='gCo $(gCl)'
alias gCt='git checkout --theirs --'
alias gCT='gCt $(gCl)'

# Data (d)
alias gd='git ls-files'
alias gdc='git ls-files --cached'
alias gdx='git ls-files --deleted'
alias gdm='git ls-files --modified'
alias gdu='git ls-files --other --exclude-standard'
alias gdk='git ls-files --killed'
alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfcr='git clone --recurse-submodules'
alias gfm='git pull'
alias gfma='git pull --autostash'
alias gfr='git pull --rebase'
alias gfra='git pull --rebase --autostash'

# Flow (F)
alias gFi='git flow init'
alias gFf='git flow feature'
alias gFb='git flow bugfix'
alias gFl='git flow release'
alias gFh='git flow hotfix'
alias gFs='git flow support'

alias gFfl='git flow feature list'
alias gFfs='git flow feature start'
alias gFff='git flow feature finish'
alias gFfp='git flow feature publish'
alias gFft='git flow feature track'
alias gFfd='git flow feature diff'
alias gFfr='git flow feature rebase'
alias gFfc='git flow feature checkout'
alias gFfm='git flow feature pull'
alias gFfx='git flow feature delete'

alias gFbl='git flow bugfix list'
alias gFbs='git flow bugfix start'
alias gFbf='git flow bugfix finish'
alias gFbp='git flow bugfix publish'
alias gFbt='git flow bugfix track'
alias gFbd='git flow bugfix diff'
alias gFbr='git flow bugfix rebase'
alias gFbc='git flow bugfix checkout'
alias gFbm='git flow bugfix pull'
alias gFbx='git flow bugfix delete'

alias gFll='git flow release list'
alias gFls='git flow release start'
alias gFlf='git flow release finish'
alias gFlp='git flow release publish'
alias gFlt='git flow release track'
alias gFld='git flow release diff'
alias gFlr='git flow release rebase'
alias gFlc='git flow release checkout'
alias gFlm='git flow release pull'
alias gFlx='git flow release delete'

alias gFhl='git flow hotfix list'
alias gFhs='git flow hotfix start'
alias gFhf='git flow hotfix finish'
alias gFhp='git flow hotfix publish'
alias gFht='git flow hotfix track'
alias gFhd='git flow hotfix diff'
alias gFhr='git flow hotfix rebase'
alias gFhc='git flow hotfix checkout'
alias gFhm='git flow hotfix pull'
alias gFhx='git flow hotfix delete'

alias gFsl='git flow support list'
alias gFss='git flow support start'
alias gFsf='git flow support finish'
alias gFsp='git flow support publish'
alias gFst='git flow support track'
alias gFsd='git flow support diff'
alias gFsr='git flow support rebase'
alias gFsc='git flow support checkout'
alias gFsm='git flow support pull'
alias gFsx='git flow support delete'

# Grep (g)
alias gg='git grep'
alias ggi='git grep --ignore-case'
alias ggl='git grep --files-with-matches'
alias ggL='git grep --files-without-matches'
alias ggv='git grep --invert-match'
alias ggw='git grep --word-regexp'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias giu='git add --update'
alias gid='git diff --no-ext-diff --cached'
alias giD='git diff --no-ext-diff --cached --word-diff'
alias gii='git update-index --assume-unchanged'
alias giI='git update-index --no-assume-unchanged'
alias gir='git reset'
alias giR='git reset --patch'
alias gix='git rm -r --cached'
alias giX='git rm -rf --cached'

# Log (l)
alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
alias glg='git log --topo-order --graph --pretty=format:"${_git_log_oneline_format}"'
alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
alias glc='git shortlog --summary --numbered'
alias glS='git log --show-signature'

# Merge (m)
alias gm='git merge'
alias gmC='git merge --no-commit'
alias gmF='git merge --no-ff'
alias gma='git merge --abort'
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpF='git push --force'
alias gpa='git push --all'
alias gpA='git push --all && git push --tags'
alias gpt='git push --tags'
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Remote (R)
alias gR='git remote'
alias gRl='git remote --verbose'
alias gRa='git remote add'
alias gRx='git remote rm'
alias gRm='git remote rename'
alias gRu='git remote update'
alias gRp='git remote prune'
alias gRs='git remote show'
alias gRb='git-hub-browse'

# Stash (s)
alias gs='git stash'
alias gsa='git stash apply'
alias gsx='git stash drop'
alias gsX='git-stash-clear-interactive'
alias gsl='git stash list'
alias gsL='git-stash-dropped'
alias gsd='git stash show --patch --stat'
alias gsp='git stash pop'
alias gsr='git-stash-recover'
alias gss='git stash save --include-untracked'
alias gsS='git stash save --patch --no-keep-index'
alias gsw='git stash save --include-untracked --keep-index'

# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule foreach git pull origin master'
alias gSx='git-submodule-remove'

# Tag (t)
alias gt='git tag'
alias gtl='git tag -l'
alias gts='git tag -s'
alias gtv='git verify-tag'

# Working Copy (w)
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
alias gwd='git diff --no-ext-diff'
alias gwD='git diff --no-ext-diff --word-diff'
alias gwr='git reset --soft'
alias gwR='git reset --hard'
alias gwc='git clean -n'
alias gwC='git clean -f'
alias gwx='git rm -r'
alias gwX='git rm -rf'

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
alias git-clean-unreachable="git reflog expire --expire-unreachable=now --all && git gc --prune=now"


# For Python
alias python=python3  # I use python3

# Map Home -> Beginning and End -> EOL
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line

# Kubectl Auto-complete
# source <(kubectl completion zsh)

#export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Setup HOME for Groovy
#export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Setup HOME for Dart
#export PATH="$PATH":"$HOME/.pub-cache/bin"

# Setup for GRAALVM
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home
# export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-19.3.0/Contents/Home/bin:"$PATH"

# For Flutter
export PATH="$PATH:$HOME/github/flutter/bin"

# Android
# export ANDROID_HOME="/usr/local/share/android-sdk"

# Conda
export PATH="$PATH:/usr/local/anaconda3/condabin"

# Docker
export DOCKER_BUILDKIT=1

# Lazy loading of kubectl
kubectl () {
    command kubectl $*
    if [[ -z $KUBECTL_COMPLETE ]]
    then
        source <(command kubectl completion zsh)
        KUBECTL_COMPLETE=1
    fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nvm
export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"; nvm $@" # Only load nvm when used

################################################################################
# Platform Specific Configuration
################################################################################

case "$(uname -s)" in
   Darwin)
     #echo 'macOS'

     # For Go
     export GOPATH="${HOME}/.go"
     export GOROOT="$(brew --prefix golang)/libexec"
     export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
     ;;

   Linux)
     #echo 'Linux'
     ;;

   CYGWIN*|MINGW32*|MSYS*|MINGW*)
     echo 'MS Windows'
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit ice blockf atpull'zinit creinstall -q .'
zinit light zsh-users/zsh-completions

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

autoload -Uz compinit
compinit

zinit cdreplay -q # <- execute compdefs provided by rest of plugins
# zinit cdlist # look at gathered compdefs

### Completion Styles

# Case-insensitive (all), partial-word, and then substring completion.
if zstyle -t ':prezto:module:completion:*' case-sensitive; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  setopt CASE_GLOB
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  unsetopt CASE_GLOB
fi

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Fuzzy match mistyped completions.
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Increase the number of errors based on the length of the typed word. But make
# sure to cap (at 7) the max-errors to avoid hanging.
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'

# Don't complete unavailable commands.
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'

# Array completion element sorting.
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# Directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

# History
zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

# Environment Variables
zstyle ':completion::*:(-command-|export):*' fake-parameters ${${${_comps[(I)-value-*]#*,}%%,*}:#-*-}

# Populate hostname completion. But allow ignoring custom entries from static
# */etc/hosts* which might be uninteresting.
zstyle -a ':prezto:module:completion:*:hosts' etc-host-ignores '_etc_host_ignores'

zstyle -e ':completion:*:hosts' hosts 'reply=(
  ${=${=${=${${(f)"$(cat {/etc/ssh/ssh_,~/.ssh/}known_hosts(|2)(N) 2> /dev/null)"}%%[#| ]*}//\]:[0-9]*/ }//,/ }//\[/ }
  ${=${(f)"$(cat /etc/hosts(|)(N) <<(ypcat hosts 2> /dev/null))"}%%(\#${_etc_host_ignores:+|${(j:|:)~_etc_host_ignores}})*}
  ${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2> /dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
)'

# Don't complete uninteresting users...
zstyle ':completion:*:*:*:users' ignored-patterns \
  adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
  dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
  hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
  mailman mailnull mldonkey mysql nagios \
  named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
  operator pcap postfix postgres privoxy pulse pvm quagga radvd \
  rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs '_*'

# ... unless we really want to.
zstyle '*' single-ignored show

# Ignore multiple entries.
zstyle ':completion:*:(rm|kill|diff):*' ignore-line other
zstyle ':completion:*:rm:*' file-patterns '*:all-files'

# Kill
zstyle ':completion:*:*:*:*:processes' command 'ps -u $LOGNAME -o pid,user,command -w'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single

# Man
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

# Media Players
zstyle ':completion:*:*:mpg123:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
zstyle ':completion:*:*:mpg321:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
zstyle ':completion:*:*:ogg123:*' file-patterns '*.(ogg|OGG|flac):ogg\ files *(-/):directories'
zstyle ':completion:*:*:mocp:*' file-patterns '*.(wav|WAV|mp3|MP3|ogg|OGG|flac):ogg\ files *(-/):directories'

# Mutt
if [[ -s "$HOME/.mutt/aliases" ]]; then
  zstyle ':completion:*:*:mutt:*' menu yes select
  zstyle ':completion:*:mutt:*' users ${${${(f)"$(<"$HOME/.mutt/aliases")"}#alias[[:space:]]}%%[[:space:]]*}
fi

# SSH/SCP/RSYNC
zstyle ':completion:*:(ssh|scp|rsync):*' tag-order 'hosts:-host:host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
zstyle ':completion:*:(scp|rsync):*' group-order users files all-files hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' group-order users hosts-domain hosts-host users hosts-ipaddr
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^[-[:alnum:]]##(.[-[:alnum:]]##)##' '*@*'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

# Somehow this needed to be bind else vscode integrated terminal would not work
bindkey '^R' history-incremental-search-backward

# For performance debugging
# zprof

