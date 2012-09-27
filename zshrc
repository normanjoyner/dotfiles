alias ls='ls -F COLOR'
alias ll='ls -l -F COLOR'
alias grep='grep COLOR'

alias confucius='ssh norman@normanjoyner.com -p4444'
alias marx='ssh norman@normanjoyner.com -p3333'
alias archimedes='norman@normanjoyner.com'

setopt inc_append_history
setopt append_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt extended_history
setopt autocontinue
setopt autocd
setopt extendedglob
setopt notify
setopt completeinword
unsetopt beep

zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
bindkey -v
bindkey md-mode
bindkey "^?" backward-delete-char

bindkey -r '^[OA' '^[OB' '^[OC' '^[OD' '^[[A' '^[[B' '^[[C' '^[[D'
bindkey -a -r '^[OA' '^[OB' '^[OC' '^[OD' '^[[A' '^[[B' '^[[C' '^[[D'

REPORTTIME=10
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

autoload -U colors && colors
PROMPT="%{$fg[blue]%}%n%{$reset_color%}[%{$fg[yellow]%}%m%{$reset_color%}] %"
RPROMPT="[%{$fg[blue]%}%*%{$reset_color%}]%{$reset_color%}%"

export EDITOR='vim'
export VISUAL='vim'
