function tmux_neovim_new() {

  local WINDOW_NAME="$(basename $(pwd))"

  tmux new-session -d -n "$WINDOW_NAME" nvim 
  tmux set-option status-bg color31
  tmux attach
}

function tmux_neovim_add() {

  local WINDOW_PATH="$1"

  local WINDOW_PATH_FULL="$(readlink -f $WINDOW_PATH)"
  local WINDOW_NAME="$(basename $WINDOW_PATH_FULL)"

  tmux new-window -c "$WINDOW_PATH_FULL" -n "$WINDOW_NAME" nvim
}

alias nv="nvim"
alias tnv="tmux_neovim_new"
alias tnva="tmux_neovim_add"
