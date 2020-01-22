#!/usr/bin/env bash
# cmd.sh 

action=$1

if [ $action = "enter" ]; then
    docker exec -it debug /bin/bash
elif [ $action = "build" ]; then
    docker-compose build
elif [ $action = "up" ]; then
    docker-compose up -d
elif [ $action = "down" ]; then
    docker-compose down
elif [ $action = "gdbgui" ]; then
    docker-compose exec php-src sh -c "gdbgui --host 0.0.0.0 --port 5000"
fi
