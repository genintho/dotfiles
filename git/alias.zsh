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


