#!/bin/bash

function AddLogFile {
    fullPath=$1
    date=$(date +"%d %b %Y %H:%M:%S")
    size=$3"kb"
  
    line="$fullPath "---" $date "---" $size"

    echo $line >> log.txt
}

function AddLogFolder {
    fullPath=$1
    date=$(date +"%d %b %Y %H:%M:%S")
  
    line="$fullPath "---" $date"

    echo $line >> log.txt
}