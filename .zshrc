if [[ ! -d ~/.zplug/ ]]; then
	# todo: ghq
	git clone https://github.com/zplug/zplug ~/.zplug
fi

export LANG=ja_JP.UTF-8
export GOPATH=$HOME/go

# enable ctrl-s
stty stop undef

# path
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/bin"

# zplug
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/anyframe"
zplug "momo-lab/zsh-abbrev-alias"
zplug "mafredri/zsh-async"
# zplug "olivierverdier/zsh-git-prompt"
# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
if ! zplug check --verbose; then
	zplug install
fi
zplug load

# anyframe
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

bindkey '^ja' anyframe-widget-select-widget
bindkey '^jb' anyframe-widget-checkout-git-branch
bindkey '^jc' anyframe-widget-cdr
bindkey '^jg' anyframe-widget-cd-ghq-repository
bindkey '^jp' anyframe-widget-kill
bindkey '^jr' anyframe-widget-put-history

bindkey '^[u' undo
bindkey '^[r' redo

# prompt
# PROMPT='%m:%c %n$ '
PROMPT='%F{blue}[%m:%c]%f %F{green}%n%f $ '

# history
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_expand
setopt hist_no_store
setopt hist_verify
setopt inc_append_history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# option
setopt auto_cd
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
setopt extended_glob
setopt globdots
setopt brace_ccl
setopt notify

# completion
autoload -Uz compinit && compinit

# color
autoload -Uz colors && colors

# alias
alias cp="cp -i"
alias d="docker"
alias dc="docker-compose"
alias e="echo"
alias h="fc -lt '%F %T' 1"
alias g="git"
alias gad="git add"
alias gbr="git branch -a"
# alias gcm="git commit -m"
alias gco="git checkout"
alias gst="git status"
alias j="jobs -l"
alias l="gls --color=auto -l"
alias la="gls --color=auto -a"
alias lal="gls --color=auto -al"
alias ll="gls --color=auto -l"
alias ls="gls --color=auto -G"
alias lt="gls --color=auto -lt"
alias ltr="gls --color=auto -ltr"
alias l.="gls --color=auto -ld .*"
alias mv="mv -i"
alias pull="git pull"
# alias push="git push"
alias p="pwd"
alias q="ghq list"
alias rm="rm -i"
alias vi="vim"

alias -g L="| less"
alias -g ...="../../"

alias -s py="python"
alias -s go="go run"

# abbrev-alias
abbrev-alias gcm='git commit -m ""'
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

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^je' edit-command-line

# function
function ghq-update() {
	ghq list | sed -E 's/^[^\/]+\/(.+)/\1/' | xargs -n 1 -P 10 ghq get -u
}
zle -N cd-up
bindkey '^y' cd-up
function cd-up() {
	zle push-line && LBUFFER='builtin cd ..' && zle accept-line
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shuma/google-cloud-sdk/path.zsh.inc' ]; then
	source '/Users/shuma/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shuma/google-cloud-sdk/completion.zsh.inc' ]; then
	source '/Users/shuma/google-cloud-sdk/completion.zsh.inc'
fi
