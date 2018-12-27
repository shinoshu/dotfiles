export LANG=ja_JP.UTF-8
export EDITOR=/usr/local/bin/vim
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

bindkey -e

# enable ctrl-s
stty stop undef

# path
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.nodebrew/current/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH:$HOME/bin"

eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# golang
export GOPATH=$HOME/go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# zstyle
zstyle ':completion:*:default' menu select=2

# zplug
if [ ! -d ~/src/github.com/zplug/zplug/ ]; then
	ghq get https://github.com/zplug/zplug.git
fi

source ~/src/github.com/zplug/zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/anyframe"
zplug "momo-lab/zsh-abbrev-alias"
zplug "mafredri/zsh-async"
zplug "mrowa44/emojify", as:command
# zplug "olivierverdier/zsh-git-prompt"
# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
if ! zplug check --verbose; then
	zplug install
fi
zplug load

# zaw
if [ ! -d ~/src/github.com/zsh-users/zaw/ ]; then
	ghq get https://github.com/zsh-users/zaw.git
fi
source ~/src/github.com/zsh-users/zaw/zaw.zsh
bindkey '^@' zaw-cdr
bindkey '^R' zaw-history
bindkey '^X^F' zaw-git-files
bindkey '^X^B' zaw-git-branches
bindkey '^X^P' zaw-process
bindkey '^X^A' zaw-tmux

# anyframe
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# bindkey '^j^j' anyframe-widget-select-widget
# bindkey '^j^b' anyframe-widget-checkout-git-branch
# bindkey '^j^c' anyframe-widget-cdr
# bindkey '^j^g' anyframe-widget-cd-ghq-repository
# bindkey '^j^p' anyframe-widget-kill
# bindkey '^j^r' anyframe-widget-put-history

bindkey '^[u' undo
bindkey '^[r' redo

# prompt
# PROMPT='%m:%c %n$ '
PROMPT='%F{blue}[%m:%c]%f %F{green}%n%f $ '

# history
setopt bang_hist
setopt extended_history
setopt hist_expand
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt share_history

HISTFILE=~/Dropbox/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# option
# setopt auto_cd
setopt correct
setopt magic_equal_subst
setopt mark_dirs
setopt list_types
setopt auto_menu
setopt interactive_comments
setopt magic_equal_subst
setopt complete_in_word
setopt always_last_prompt
setopt print_eight_bit
setopt print_exit_value
setopt extended_glob
setopt globdots
setopt brace_ccl
setopt notify

# completion
autoload -Uz compinit && compinit

# fpath=($HOME/src/github.com/knu/zsh-git-escape-magic $fpath) && compinit
# autoload -Uz git-escape-magic && git-escape-magic

# color
autoload -Uz colors && colors

# alias
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
alias cp="cp -i"
alias d="docker"
alias dc="docker-compose"
alias e="echo"
alias h="fc -lt '%F %T' 1"
alias g="git"
alias gad="git add -v"
alias gac="git ac"
alias gbr="git branch -a"
# alias gcm="git commit -m"
alias gco="git checkout"
alias gst="git status"
alias j="jobs -l"
# alias l="gls --color=auto -l"
# alias la="gls --color=auto -a"
# alias lal="gls --color=auto -al"
# alias ll="gls --color=auto -l"
# alias ls="gls --color=auto -G"
# alias lt="gls --color=auto -lt"
# alias ltr="gls --color=auto -ltr"
# alias l.="gls --color=auto -ld .*"
alias ls="exa --git"
alias l="ls -l"
alias la="ls -al"
alias ll=l
alias lt="ls -l -s=time"
alias ltr="ls -l -rs=time"
alias l.="gls --color=auto -ld .*"
alias mv="mv -i"
alias notify="terminal-notifier -message 'Done' -sound default"
alias pull="git pull"
# alias push="git push"
alias o="open"
alias o.="open ."
alias p="pwd"
alias q="ghq list"
# alias rm="rm -i"
alias rm="rmtrash"
alias vi="vim"

alias -g L="| less"
alias -g ...="../../"

# alias -s py="python"
alias -s go="go run"

# abbrev-alias
abbrev-alias gcm='git commit'
abbrev-alias push='git push origin'
abbrev-alias v='vim'
abbrev-alias 'ゔぃｍ'='vim'

abbrev-alias -g ghqhub='~/src/github.com/'
abbrev-alias -g gohub='~/go/src/github.com/'
abbrev-alias -g myhub='~/src/github.com/shinoshu/'
abbrev-alias -g G="| grep"

# VCS
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformts "[%b|%a]"
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'

# cache
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' verbose yes

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^je' edit-command-line

# function
function ghq-update() {
	ghq list | sed -E 's/^[^\/]+\/(.+)/\1/' | xargs -n 1 -P 10 -t ghq get -u
}

zle -N cd-up
bindkey '^y' cd-up
function cd-up() {
	zle push-line && LBUFFER='builtin cd ..' && zle accept-line
}

# Google Cloud SDK
if [ ! -e '/Users/shuma/google-cloud-sdk' ]; then
	curl https://sdk.cloud.google.com | bash
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shuma/google-cloud-sdk/path.zsh.inc' ]; then
	source '/Users/shuma/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shuma/google-cloud-sdk/completion.zsh.inc' ]; then
	source '/Users/shuma/google-cloud-sdk/completion.zsh.inc'
fi

# appengine
export PATH="$PATH:/Users/shuma/google-cloud-sdk/platform/google_appengine"

# サービスアカウント
export GOOGLE_APPLICATION_CREDENTIALS=~/service_account.json
