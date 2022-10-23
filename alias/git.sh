alias gpom="git pull origin master"
alias gcob="git checkout -b"
alias gsl="git stash list"
alias gsp="git stash pop"
alias grm="git rebase -i master"
alias gst="git status"
alias ga="git add -up"

# Delete a branch localy and remotely
function git_delete_branch -d "Delete the local and remote branch"
    git push origin :$1
    git branch -D $1
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
