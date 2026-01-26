function set_upsteam_origin() {
  git push --set-upstream origin "$(git branch --show-current)"
}

alias gss="git status"
alias gps="git push"
alias gpl="git pull"
alias gpo="git pull origin "
alias gc="git commit -am"
alias gs="git stash"
alias gsp="git stash pop"
alias gpu="set_upsteam_origin"
