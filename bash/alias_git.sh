function set_upsteam_origin() {
  git push --set-upstream origin "$(git branch --show-current)"
}

function branch_checkout() {
  BRANCH_NAME="$1"

  if ! git checkout "$BRANCH_NAME"
  then
    git checkout -b "$BRANCH_NAME"
  fi
}

function git_push() {
  set_upsteam_origin
  git push
}

alias gs="git status"
alias ga="git add ."
alias gf="git fetch"
alias gb="branch_checkout"
alias gbi="git pull"
alias gbo="git_push"
alias gpo="git pull origin "
alias gc="git commit -am"
alias gsi="git stash"
alias gso="git stash pop"
alias gpu="set_upsteam_origin"
