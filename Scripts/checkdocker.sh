#!/bin/bash

docker container ps -aq -f ancestor=pablitorub/journals | xargs -t docker container stop
if [$? == 0]; then
    docker container ps -aq -f ancestor=pablitorub/journals | xargs docker rm
else
    echo "container does not exists..."
fi
