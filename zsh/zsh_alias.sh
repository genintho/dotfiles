#command 
alias bell="tput bel"

### SHORTCUT
alias project="cd ~/Dropbox/Project/"

############################
#	ACK
############################
alias ackjs="ack --js"
alias ackphp="ack --php"

############################
# Connection
############################
alias moadib="ssh -A thomas@moadib.net -p 8888"

function gg(){
	grep -rns $1 .
}

############################
# Project
############################
HOMESTEAD_DIR=~/Dropbox/Project/Homestead
alias homestead_start="cd $HOMESTEAD_DIR;vagrant up;cd -;"
alias homestead_stop="cd $HOMESTEAD_DIR;vagrant suspend;cd -;"

alias project_slimer="cd ~/Dropbox/Project/Golang/src/github.com/genintho/slimer"


