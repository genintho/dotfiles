# Need to move the theme in ~/.oh-my-zsh/themes/
ZSH_THEME="xt6"

plugins=(git Composer docker) 

# Draw an horizontal line between command
setopt promptsubst
PS1=$'${(r:$COLUMNS::_:)}'$PS1

# Color LS output
export CLICOLOR=1 


# speed up git promp
# http://marc-abramowitz.com/archives/2012/04/10/fix-for-oh-my-zsh-git-svn-prompt-slowness/
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}


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

