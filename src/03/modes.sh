#!/bin/bash

function ByLog {
    logLine="$(cat ../02/log.txt | awk -F'  ' '{print $1}'))"
    validator='^\/'
    for i in $logLine:
    do
        if [[ $i =~ $validator ]]
        then
            sudo rm -rf $i
        fi
    done
}

function ByTime {
    echo "Input example: $(date '+%Y-%m-%d %H:%M:%S')"

    read -p "enter the starting point in time: " START_TIME
    read -p "enter the end point: " END_TIME

    echo -e "files created from "$START_TIME" to "$END_TIME" will be deleted.\n"
    sudo bash -c "find / -newermt '$START_TIME' -not -newermt '$END_TIME' 2>/dev/null | xargs rm -r 2>/dev/null"
}

function ByMask {
    # nameMask=$1
    echo "Input example: foldername_$(date '+%d%m%y') or filename.ext_$(date '+%d%m%y')"
    read -p "enter the namemask: " nameMask

    echo "files with mask = $nameMask will be deleted"
    find / -type f -name "*$nameMask*" 2>/dev/null | bash -c "sudo xargs rm -r 2>/dev/null"
    find / -type d -name "*$nameMask*" 2>/dev/null | bash -c "sudo xargs rm -r 2>/dev/null"
    echo -e "Done\n"
}