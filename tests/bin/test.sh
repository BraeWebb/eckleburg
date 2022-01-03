#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)
# CONTAINER="geerlingguy/docker-ubuntu1804-ansible:latest"
CONTAINER="ansible"
PLAYS=(
    vc/git.yml
    pkgmng/brew.yml
    vc/act.yml
    ansible.yml
    nodejs.yml
    isabelle/isabelle.yml
)

# docker pull "${CONTAINER}"
# echo

function test_play {
    container=$(docker run --rm -d -v "${REPO_ROOT}":/workdir -w /workdir "${CONTAINER}")

    docker exec --tty "${container}" ansible-playbook $1
    docker exec --tty "${container}" ansible-playbook $1

    docker stop "${container}"
}

if [ $# -eq 0 ]; then
    for play in ${PLAYS[@]}; do
        echo "Testing ${play}"
        test_play "${play}"
        echo
    done
else
    test_play "$1"
fi