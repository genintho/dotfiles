# Need to move the theme in ~/.oh-my-zsh/themes/
ZSH_THEME="xt6"

plugins=(git Composer heroku docker)

DOT_FILES_DIR=~/Dropbox/dotfiles

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


## Composer
export PATH=$PATH:~/.composer/vendor/bin

## Extra aliases
for f in $DOT_FILES_DIR/alias/*; do
    source $f
done
