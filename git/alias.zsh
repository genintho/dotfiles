alias gpom="git pull origin master"
alias gcob="git checkout -b"

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
    ggpush
    open $PATH_REPO/compare/$NAME
}