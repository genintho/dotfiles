alias gpom="git pull origin master"
alias gcob="git checkout -b"
alias gsl="git stash list"
alias gsp="git stash pop"
alias grm="git rebase -i master"
alias heroku_deploy="git push heroku master"

# Delete a branch localy and remotely
function git_delete_branch()
{
    git push origin :$1
    git branch -D $1
}

# Fetch and checkout one branch. Useful to test something before merging
function git_test_branch()
{
    git fetch origin $1:$1
    git checkout $1
}

# Create a GitHub pull request to master from the current branch
function git_pull_request()
{
    local NAME=`git rev-parse --abbrev-ref HEAD`
    local PATH_REPO=`git remote show -n origin | grep Push | cut -d: -f2- | cut -d/ -f 1- | tr -d " "  | cut -d. -f-2`
    git push origin $NAME
    open $PATH_REPO/compare/$NAME
}

function ggpush()
{
   local NAME=`git rev-parse --abbrev-ref HEAD`
   git push origin $NAME
}

function ggpush_force()
{
   local NAME=`git rev-parse --abbrev-ref HEAD`
   git push -f origin $NAME
}

function ggpull()
{
    local NAME=`git rev-parse --abbrev-ref HEAD`
    git pull origin $NAME
}

# Delete from local the branch that have been merged with the current branch
function git_clean_merged_branch()
{
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
}
