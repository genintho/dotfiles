# Need to move the theme in ~/.oh-my-zsh/themes/
ZSH_THEME="xt6"

## Work stuff
for filename in ~/Dropbox/dotfiles/Hipmunk/*.zsh; do
  source $filename
done


## Golang
alias GOPATH="~/Dropbox/Project/Golang/"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin  

## Composer
export PATH=$PATH:~/.composer/vendor/bin

## Extra aliases
source ~/Dropbox/dotfiles/git_alias.zsh
source ~/Dropbox/dotfiles/zsh_alias.zsh

