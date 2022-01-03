#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)

docker build -t ansible -f "${REPO_ROOT}/tests/Dockerfile" .
