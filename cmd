#!/usr/bin/env bash
# cmd

action=$1
proxy=true
branch=PHP-7.1

if [ -z "$1" ]; then
    echo "usage: sh cmd <enter|build|up|down|gdbgui>"
elif [ $action = "enter" ]; then
    docker exec -it debug /bin/bash
elif [ $action = "build" ]; then
    if [ "$proxy" = true ] ; then
        export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;
        echo "open http proxy."
    fi

    if [ ! -d "php-src" ]; then
        echo "git clone php-src"
        git clone -b PHP-7.1 https://github.com/php/php-src.git
    fi

    docker-compose build
elif [ $action = "up" ]; then
    docker-compose up -d
elif [ $action = "down" ]; then
    docker-compose down
elif [ $action = "gdbgui" ]; then
    docker-compose exec php-src sh -c "gdbgui --host 0.0.0.0 --port 5000"
fi
