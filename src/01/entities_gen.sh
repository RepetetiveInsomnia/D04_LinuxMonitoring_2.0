#!/bin/bash

. ./name_gen.sh
. ./log_gen.sh


function createDir {
    path=$absolutePath/$(FolderNameGen $2)_$('DateGen')  
    sudo mkdir -p $path

    AddLogFolder $path $(DateGen)
    echo $path
}
function createFile {
    FolderPath=$1  
    baseCharset=${file_name%%.*}  
    baselen=${#baseCharset}
    nameLen=$(($baselen))
    if [[ $nameLen -lt 4 ]]; then
        let "nameLen+=(4-nameLen)"
    fi
    let "nameLen+=j"

    FileName=$(FileNameGen $nameLen)

    AddLogFile $FolderPath/$FileName $(DateGen) $SizeNum

    sudo fallocate -x -l ${filesize^} $FolderPath/$FileName
}
function CheckSize {
    echo `df / -BM | awk '{print $4}' | tail -n 1 | cut -d 'M' -f1`
}