export LANG=ja_JP.UTF-8
export GOPATH=$HOME/go

# path
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# zplug
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/anyframe"
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
bindkey '^jb' anyframe-widget-cdr
bindkey '^jr' anyframe-widget-execute-history

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
setopt inc_append_history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# completion
autoload -Uz compinit && compinit

#
autoload -Uz colors && colors

# alias
alias cp="cp -i"
alias h="fc -lt '%F %T' 1"
alias g="git"
alias gad="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gst="git status"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -al"
alias ls="ls -G"
alias l.="ls -ld .*"
alias mv="mv -i"
alias pull="git pull"
alias push="git push"
alias rm="rm -i"
alias vi="vim"

alias -g G="| grep"
alias -g L="| less"

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

# function
function ghq-update() {
	ghq list | sed -E 's/^[^\/]+\/(.+)/\1/' | xargs -n 1 -P 10 ghq get -u
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shuma/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/shuma/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shuma/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/shuma/google-cloud-sdk/completion.zsh.inc'; fi
