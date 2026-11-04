function docker_run() {
  IMAGE_ADDRESS="$1"

  docker run -it --rm "$IMAGE_ADDRESS" /bin/bash || /bin/sh
}

alias docker_run="docker_run"
