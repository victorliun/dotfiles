#################################################################################################
###### Prompt colour configuration ##########
# uncomment one of the line below depends on you are on host or guest
# If you are on host
export PS1="\[\e[35;1m\]\u@\h - \[\e[32;1m\]\t \[\e[31;1m\]\w\[\e[32;1m\]\\n\$\[\e[36;1m\] "
# If you are on guest
# export PS1="\[\e[34;1m\]\u@\h - \[\e[33;1m\]\t \[\e[31;1m\]\w\[\e[32;1m\]\\$\[\e[39;0m\] "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#define preferred tools
export EDITOR=emacs
export PAGER=less
#################################################################################################
# Alias to save key stroke
alias l='ls'
alias ll='ls -l'  
#long list of ls
alias lf='ls -CF' 
#colors and file type
alias lx='ls -lXB' 
#sorted by file extension
alias lk='ls -lSr'
#sorted by size
alias lt="ls -ltr"
#sorted by date
alias la="ls -a"  
#show hidden files
alias lla="ls -al"
alias psgrep="ps aux | grep "
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../../"

alias h="history"
export PATH=$PATH:/usr/local/sbin:$HOME/bin/
alias em='/usr/local/Cellar/emacs/24.3/bin/emacs'

function alliey {
    ssh -i ~/Public/www/alliey_Liu.pem ubuntu@54.213.167.105
}

tm() {
  [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }
  tmux has -t $1 && tmux attach -d -t $1 || tmux new -s $1
}
