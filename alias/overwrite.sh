alias cat="bat"
alias ping="prettyping"

# Automatically run ls after a cd
function cd {
    builtin cd "$@"
    ls -F
}
