#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)
CONTAINER="ansible"

docker run -it -v "${REPO_ROOT}":/workdir -w /workdir --entrypoint bash "${CONTAINER}"
