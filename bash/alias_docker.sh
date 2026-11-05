function docker_run() {
  IMAGE_ADDRESS="$1"

  docker run -it --rm "$IMAGE_ADDRESS" /bin/bash 2> /dev/null || \
    docker run -it --rm "$IMAGE_ADDRESS" /bin/sh 2> /dev/null || \
    docker run -it --rm --entrypoint /bin/bash "$IMAGE_ADDRESS" 2> /dev/null || \
    docker run -it --rm --entrypoint /bin/sh "$IMAGE_ADDRESS" 2> /dev/null
}

alias docker_run="docker_run"
