#!/bin/bash

function AddLogile {
    # путь
    fullPath=$1
    # дата создания
    date=$(date +"%d %b %Y %H:%M:%S")
    # размер файлa
    size=$3"kb"
  
    line="$fullPath "---" $date "---" $size"

    echo $line >> log.txt
}

function AddLogFolder {
    # путь
    fullPath=$1
    # дата создания
    date=$(date +"%d %b %Y %H:%M:%S")
  
    line="$fullPath "---" $date"

    echo $line >> log.txt
}