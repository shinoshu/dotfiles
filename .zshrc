# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# zplug
source ~/.zplug/init.zsh
zplug "mollifier/anyframe"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug load

# anyframe
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
bindkey '^jb' anyframe-widget-cdr
bindkey '^jr' anyframe-widget-execute-history

# prompt
PROMPT='%m:%c %n$ '

# history
setopt share_history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 補完
autoload -U compinit && compinit

# alias
alias h="fc -lt '%F %T' 1"
alias g="git"
alias l="ls -lG"
alias la="ls -aG"
alias ll="ls -alG"
alias ls="ls -G"
alias l.="ls -ldG .*"
