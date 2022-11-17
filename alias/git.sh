alias gd="git diff"
alias gpom="git pull origin master"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gsl="git stash list"
alias gsp="git stash pop"
alias grm="git rebase -i master"
alias ga="git add -up"
alias gcmsg="git commit -m"
alias gst="git status"
alias grhh="git reset --hard HEAD"

# Delete a branch localy and remotely
function git_delete_branch -d "Delete the local and remote branch"
    git push origin :$1
    git branch -D $1
end


function gcm
    set NAME (git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
    git checkout $NAME
end

function ggpush
   local NAME=`git rev-parse --abbrev-ref HEAD`
   git push origin $NAME
end

function ggpush_force
   local NAME=`git rev-parse --abbrev-ref HEAD`
   git push -f origin $NAME
end

function ggpull
    local NAME=`git rev-parse --abbrev-ref HEAD`
    git pull origin $NAME
end

function git_clean_merged_branch -d "Delete from local the branch that have been merged with the current branch"
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
end

function git_file_last_modified_date
    git ls-tree -r --name-only HEAD | grep -v node_modules| while read filename
        echo "$(git log -1 --format="%ai | %at | %h | %an | %ad |" -- $filename) $filename"
    end
end
