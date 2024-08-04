#!/bin/bash

function FoldernNumGen {
    folderNumber=$((1 + $RANDOM % 100))

}
function PathGen {
    while true; do
        absolutePath=`sudo bash -c "find / -maxdepth 2 -type d -writable | sort -R | tail -1 | grep -v -e "bin" -e "sbin" -e "run""`


        if [[ -d "${absolutePath}" && ! -L "${absolutePath}" ]] ; then 
            echo $absolutePath
            break
        fi
    done
}

function NumberGen {
    file_number=$((1 + $RANDOM % 100))
}

