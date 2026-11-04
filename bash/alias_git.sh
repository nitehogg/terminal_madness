function set_upsteam_origin() {
  git push --set-upstream origin "$(git branch --show-current)"
}

function checkout_branch() {
  BRANCH_NAME="$1"

  if ! git checkout "$BRANCH_NAME"
  then
    git checkout -b "$BRANCH_NAME"
  fi
}

alias gs="git status"
alias ga="git add ."
alias gf="git fetch"
alias gb="checkout_branch"
alias gbi="git pull"
alias gbo="git push"
alias gpo="git pull origin "
alias gc="git commit -am"
alias gsi="git stash"
alias gso="git stash pop"
alias gpu="set_upsteam_origin"
