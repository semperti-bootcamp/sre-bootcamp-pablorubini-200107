#!/bin/bash

docker container ps -aq -f ancestor=pablitorub/journals | xargs -t docker container stop > /dev/null
if [ $? -eq 0 ]; then
    docker container ps -aq -f ancestor=pablitorub/journals | xargs docker rm > /dev/null
    echo "container deleted..."
else
    echo "container does not exists..."
fi