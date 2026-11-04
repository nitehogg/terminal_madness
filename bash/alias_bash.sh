function get_task_bin() {

  if which go-task
  then
    echo 'go-task'
    return
  fi

  echo 'task'
}

alias task="$(get_task_bin)"

alias cdi="dpush"
alias cdo="dpop"
