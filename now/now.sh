#!/bin/bash

function join { local IFS="$1"; shift; echo "$*"; }

if [[ $1 == "install" ]]; then
    while [[ $# > 1 ]]; do
        key="$2"
        if [[ "$key" == "-f" ]]; then
            force=true
        else
            packages+=($key)
        fi
        shift
    done
    packages=`join " " "${packages[@]}"`
    {{ install }}
elif [[ $1 == "update" ]]; then
    while [[ $# > 1 ]]; do
        key="$2"
        if [[ "$key" == "-f" ]]; then
            force=true
        elif [[ "$key" == "all" ]]; then
            all=true
        else
            echo "Usage: now update [-f] [all]"
            exit 0
        fi
        shift
    done
    {{ update }} 
elif [[ $1 == "shutdown" ]]; then
    {{ shutdown }}
else
    echo "Usage: [sudo] now <install/update/shutdown>"
fi
