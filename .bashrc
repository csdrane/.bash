export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export PGDATA=/usr/local/var/postgres
export FLOWID=kEXjymKxSXsKN67q6d6gI4x9ZNGiMNJC

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

SSH_KEY='~/.ssh/ct_ft_prod'

alias cda='cd ~/dev/arcturus'
alias cdai='cd ~/dev/clojure-api-importer'
alias cdp='cd ~/Programming/python'
alias cdr='cd ~/dev/rest-api'
alias cdws='cd ~/dev/clojure-websockets'
alias diff=colordiff
alias ft-deploy-importer='fab -u cd -i $SSH_KEY -H core1-ft -- sudo salt-call cj_apiimport.deploy'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias ga='git add *'
alias gc='git commit -m'
alias gs='git status'
alias ip='ipython -i'
alias ip3='ipython3 -i'
alias ls='ls -lG'
alias mv_jar='mv -v target/flow-common.jar ~/dev/clojure-api-importer/lib/'
alias reload-bashrc='source ~/.bashrc'
alias vbrc='vim ~/.bashrc'
LSCOLORS='gxfxcxdxbxegedabagacad'
export LSCOLORS

mi () { mediainfo "$@" | grep 'name \|bit rate \|Encoding settings'; }

arc () { 
    cda
    ant listener &
    cdai
    lein run &
    cdr
    lein with-profile remote-debug ring server-headless &
}
