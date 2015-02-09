export PS1="\[\e[35;1m\]\u@\h - \[\e[32;1m\]\t \[\e[31;1m\]\w\[\e[32;1m\]\\$\[\e[36;1m\] "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#define preferred tools
export EDITOR=emacs
export PAGER=less

#save fingers
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

alias sem="sudo emacs"
alias h="history"
export PATH=$PATH:/usr/local/sbin:$HOME/script/

source ~/dotfiles/git-completion.bash

alias em='/usr/local/Cellar/emacs/24.3/bin/emacs'

export PYTHONPATH=/usr/local/lib/python2.7/site-packages/vtk/
export PYTHONSTARTUP=~/.pythonstartup

export PROJECT_ROOT="/Users/Victor/Public/www/rainbow/blog"
export OPEN_SOURCE="/Users/Victor/Public/open-source"

function alliey {
    ssh -i ~/Public/www/alliey_Liu.pem ubuntu@54.213.167.105
}
#source ~/scripts/tmux_session.sh

if [ ! -z "$PS1" ]; then
    _tmuxrc="$HOME/scripts/.bashrc.tmux"
    if [ -e $_tmuxrc ]; then
        source $_tmuxrc
        _tmux-init-history
    fi
fi
