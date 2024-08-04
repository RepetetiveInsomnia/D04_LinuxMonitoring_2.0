#!/bin/bash

function error_check {
if [ "$#" -ne 6 ]; then
    echo "Error: number of arguments is incorrect"
    else

    if ! [ -d $1 ] || [ ! ${1+x} ]; then
        echo 'Error: directory not found'
    else
        absolutePath=$1
    fi

    if [[ $2 =~ ^[0-9]+$ ]];then
        folderNumber=$2
    else
        echo "Error: number of folders is incorrect"
        exit
    fi

    folder_name=$3
    if [[ ${#folder_name} > 7 ]]; then
        echo "Error: length of folder name is incorrect"
        exit
    fi  
    if [[ ! "$folder_name" =~ ^[A-Za-z_]+$ ]]; then 
        echo "Error: folder name should only consist of [A-z]"
        exit
    fi

    file_number=$4
    if [[ $4 =~ ^[0-9]+$ ]]; then
        file_number=$4
    else
        echo "Error: number of files is incorrect"
        exit
    fi

    file_name=$5
    if [[ ! "$file_name" =~ ^([a-zA-Z]{1,7}).([a-zA-Z]{1,3})$ ]]; then 
        echo "Error: file name or file extension is incorrect"
        exit
    fi

    filesize=$6
    SizeNum=${filesize%kb}

    if [[ ! "$6" =~ ^([0-9]+kb)$ ]]; then 
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