function git_delete_branch()
{
    git push origin :$1
    git branch -D $1
}

function git_pull_request()
{
    NAME=`git rev-parse --abbrev-ref HEAD`
    push $NAME
    open https://github.com/Expensify/Web-Expensify/compare/$NAME
}

function git_test_branch()
{
    git fetch origin $1:$1
    git checkout $1
}


