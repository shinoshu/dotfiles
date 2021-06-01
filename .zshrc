if [ ! -f ~/.zshrc.zwc ] || [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
	zcompile ~/.zshrc
fi

stty stop undef

source ~/src/github.com/zplug/zplug/init.zsh
source ~/src/github.com/zsh-users/zaw/zaw.zsh
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

autoload -Uz add-zsh-hook edit-command-line cdr chpwd_recent_dirs
autoload -Uz colors && colors
autoload -Uz compinit && compinit -i

bindkey -e
bindkey '^[u' undo
bindkey '^[r' redo
bindkey '^@' zaw-cdr
bindkey '^R' zaw-history
bindkey '^X^F' zaw-git-files
bindkey '^X^B' zaw-git-branches
bindkey '^X^P' zaw-process
bindkey '^X^A' zaw-tmux
bindkey '^y' cd-up
bindkey '^je' edit-command-line

export LANG=ja_JP.UTF-8
export EDITOR=/usr/local/bin/vim
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.anyenv/envs/pyenv/shims:$PATH"
export GOPATH=$HOME

eval "$(anyenv init -)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' verbose yes

zplug "b4b4r07/enhancd", use:init.sh
zplug "greymd/docker-zsh-completion"
zplug "mollifier/anyframe"
zplug "mollifier/cd-gitroot"
zplug "momo-lab/zsh-abbrev-alias"
zplug "mafredri/zsh-async"
zplug "mrowa44/emojify", as:command
zplug "wbinglee/zsh-wakatime"
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
if ! zplug check --verbose; then
	zplug install
fi
zplug load

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

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
# setopt auto_cd
setopt correct
setopt magic_equal_subst
setopt mark_dirs
setopt list_types
setopt auto_menu
setopt interactive_comments
setopt complete_in_word
setopt always_last_prompt
setopt print_eight_bit
setopt print_exit_value
setopt extended_glob
setopt globdots
setopt brace_ccl
setopt notify

alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
alias cp="cp -i"
alias d="docker"
alias dc="docker-compose"
alias e="echo"
# alias h="fc -lt '%F %T' 1"
alias h="history -d"
alias g="git"
alias gad="git add -v"
alias gac="git ac"
alias gba="git branch -a"
alias gbr="git branch -a"
alias gcm="git commit -m"
alias gco="git checkout"
alias gst="git status"
alias j="jobs -l"
alias less="less -R"
alias ls="exa --git --icons"
alias l="ls -l"
alias la="ls -al"
alias ll="l"
alias lt="ls -l -s=time"
alias ltr="ls -l -rs=time"
alias mv="mv -i"
alias notify="terminal-notifier -message 'Done' -sound default"
alias pull="git pull"
alias push="git push"
alias o="open"
alias p="pwd"
alias q="ghq list"
alias rm="trash"
alias vi="vim"
alias vim="/usr/local/bin/vim"
alias -g L="| less"
alias -g ...="../../"
alias -s py="python"
alias -s go="go run"
abbrev-alias gcm='git commit'
abbrev-alias push='git push origin'
abbrev-alias v='vim'
abbrev-alias -g ghqhub='~/src/github.com/'
abbrev-alias -g gohub='~/go/src/github.com/'
abbrev-alias -g myhub='~/src/github.com/shinoshu/'
abbrev-alias -g G="| grep"

zle -N edit-command-line
zle -N cd-up

fpath=($HOME/.zsh/completion $fpath)

add-zsh-hook chpwd chpwd_recent_dirs

function ghq-update() {
	ghq list | grep github.com | sed -E 's/^[^\/]+\/(.+)/\1/' | xargs -n 1 -P 10 -t ghq get -u
}

function cd-up() {
	zle push-line && LBUFFER='builtin cd ..' && zle accept-line
}
