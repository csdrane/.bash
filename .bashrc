export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export PGDATA=/usr/local/var/postgres

source ~/.git-completion.bash

### Added by the Heroku Toolbelt
###

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
 
PS1='\W$(__git_ps1 " [%s]") $ '
# the PS1 above looks like this:
# hackerschool [announcements $%] $ 

alias cdp='cd ~/Programming/python'
alias ip='ipython -i'
alias ip3='ipython3 -i'
alias ga='git add *'
alias gc='git commit -m'
alias gs='git status'
alias ls='ls -lG'
LSCOLORS='gxfxcxdxbxegedabagacad'
export LSCOLORS

mi () { mediainfo "$@" | grep 'name \|bit rate \|Encoding settings'; }
