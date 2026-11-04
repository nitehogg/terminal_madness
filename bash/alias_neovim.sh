function tmux_neovim() {

  local WINDOW_PATHS=$@

  if [ $# -eq 0 ]
  then
    WINDOW_PATHS="$(pwd)"
  fi

  tmux_neovim_controller $WINDOW_PATHS
}

function tmux_neovim_controller() {
  
  if ! tmux ls > /dev/null
  then
    tmux_neovim_new "$1"
    shift
  fi

  for WINDOW_PATH in $@
  do
    tmux_neovim_add "$WINDOW_PATH"
  done

  tmux set-option status-bg color31
  tmux attach
}

function tmux_neovim_new() {

  local WINDOW_PATH="$1"

  WINDOW_PATH="$(readlink -f "$WINDOW_PATH")"
  local WINDOW_NAME="$(basename "$WINDOW_PATH")"

  tmux new-session -d -c "$WINDOW_PATH" -n "$WINDOW_NAME" nvim 
}

function tmux_neovim_add() {

  local WINDOW_PATH="$1"

  WINDOW_PATH="$(readlink -f "$WINDOW_PATH")"
  local WINDOW_NAME="$(basename $WINDOW_PATH)"

  tmux new-window -c "$WINDOW_PATH" -n "$WINDOW_NAME" nvim
}

alias nv="nvim"
alias tnv="tmux_neovim"
