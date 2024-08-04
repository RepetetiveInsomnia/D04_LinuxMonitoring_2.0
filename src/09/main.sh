#!/bin/bash

. ./get_info

if [ $# != 0 ] ; then
    echo "error"
    exit 1
else
    while true; do
        if [[ -f metrics.html ]]; then
            sudo rm metrics.html
        fi
        sudo touch metrics.html
        get_info >> metrics.html
        sleep 3
    done
fi