function tmux_neovim() {

  local WINDOW_PATH="$1"

  if [ $WINDOW_PATH ]
  then
    tmux_neovim_add "$1"
    return
  fi

  if tmux ls
  then
    tmux_neovim_add "$(pwd)"
    return
  fi

  tmux_neovim_new
}

function tmux_neovim_new() {

  local WINDOW_NAME="$(basename $(pwd))"

  tmux new-session -d -n "$WINDOW_NAME" nvim 
  tmux set-option status-bg color31
  tmux attach
}

function tmux_neovim_add() {

  local WINDOW_PATHS=$1

  for WINDOW_PATH in $WINDOW_PATHS
  do
    local WINDOW_PATH_FULL="$(readlink -f "$WINDOW_PATH")"
    local WINDOW_NAME="$(basename $WINDOW_PATH_FULL)"

    tmux new-window -c "$WINDOW_PATH_FULL" -n "$WINDOW_NAME" nvim
  done 
}

alias nv="nvim"
alias tnv="tmux_neovim"
