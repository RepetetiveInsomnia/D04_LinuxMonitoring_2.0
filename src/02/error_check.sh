#!/bin/bash

function error_check {
if [ "$#" -ne 3 ]; then
    echo "Error: number of arguments is incorrect"
    else

    folder_name=$1
    if [[ ${#folder_name} > 7 ]]; then
        echo "Error: length of folder name is incorrect"
        exit
    fi  
    if [[ ! "$folder_name" =~ ^[A-Za-z_]+$ ]]; then 
        echo "Error: folder name should only consist of [A-z]"
        exit
    fi

    file_name=$2
    if [[ ! "$file_name" =~ ^([a-zA-Z]{1,7}).([a-zA-Z]{1,3})$ ]]; then 
        echo "Error: file name or file extension is incorrect"
        exit
    fi

    filesize=$3
    SizeNum=${filesize%Mb}

    if [[ ! "$filesize" =~ ^([0-9]+Mb)$ ]]; then 
        echo "Error: file size is incorrect"
        exit
    fi

    if [[ ! $SizeNum > 0 || ! $SizeNum -le 100 ]]; then 
        echo "Error: argument length is incorrect"
        exit
    fi
fi
}
function MemoryCheck {
    if [[ $(CheckSize) -lt "1024" ]]; then
        echo "true"
    else
        echo "false"
    fi
}