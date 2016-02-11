### SHORTCUT
alias project="cd ~/Dropbox/Project/"

############################
#	ACK
############################
alias ackjs="ack --js"
alias ackphp="ack --php"

##
# Grep
##
function gg(){
	grep -rns $1 .
}

############################
# Project
############################
HOMESTEAD_DIR=~/Dropbox/Project/Homestead
alias homestead_start="cd $HOMESTEAD_DIR;vagrant up;cd -;"
alias homestead_stop="cd $HOMESTEAD_DIR;vagrant suspend;cd -;"
alias homestead_ssh="cd $HOMESTEAD_DIR;vagrant ssh;"

alias project_slimer="cd ~/Dropbox/Project/Golang/src/github.com/genintho/slimer"


