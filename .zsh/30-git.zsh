alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit -v"
alias gca="git commit -v --amend"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gg="git grep"
alias gl="git pull"
alias gm="git merge"
alias gp="git push"
alias gs="git status"
alias gss="git stash save"
alias gsp="git stash pop"

M() {
  local default_branch="$(git rev-parse --abbrev-ref origin/HEAD | cut -c8-)"
  local working_branch="$(git rev-parse --abbrev-ref HEAD)"
  git checkout $default_branch && git branch -D $working_branch && git pull
}
