function set_upsteam_origin() {
  git push --set-upstream origin "$(git branch --show-current)"
}

function git_checkout() {
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

function git_commit() {
  MESSAGE="$1" 

  if [ "$MESSAGE" ]
  then
    git commit -am "$MESSAGE"
  fi

  git commit -a
}

function git_pull() {
  ORIGIN="$1"

  if [ "$ORIGIN" ]
  then
    git pull origin "$ORIGIN"
  fi

  git pull
}

alias gs="git status"
alias ga="git add ."
alias gf="git fetch"
alias gb="git_checkout"
alias gbi="git_pull"
alias gbo="git_push"
alias gc="git_commit"
alias gso="git stash"
alias gsi="git stash pop"
alias gpu="set_upsteam_origin"
