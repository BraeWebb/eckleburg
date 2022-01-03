#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)
# CONTAINER="geerlingguy/docker-ubuntu1804-ansible:latest"
CONTAINER="ansible"

# docker pull "${CONTAINER}"

function test_play {
    container=$(docker run --rm -d -v "${REPO_ROOT}":/workdir -w /workdir "${CONTAINER}")

    docker exec --tty "${container}" ansible-playbook "$1" "${@:2}"
    docker exec --tty "${container}" ansible-playbook "$1" "${@:2}"

    docker stop "${container}"
}

test_play "$1" "${@:2}"
