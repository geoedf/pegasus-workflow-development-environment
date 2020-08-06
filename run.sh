#!/bin/bash

set -e

#docker pull ryantanaka/pegasus-wf-dev-env:latest

sudo chown :808 ./shared-data \
    && chmod 775 ./shared-data \
    && chmod g+s ./shared-data

docker container run \
    -p 8888:8888 \
    --privileged \
    --mount type=bind,source="$(pwd)"/shared-data,target=/home/scitech/shared-data \
    ryantanaka/pegasus-wf-dev-env:latest
