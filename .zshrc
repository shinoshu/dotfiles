# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# zplug
source ~/.zplug/init.zsh
zplug "mollifier/anyframe"

# 補完
autoload -U compinit && compinit

# alias
alias h="fc -lt '%F %T' 1"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -l"
