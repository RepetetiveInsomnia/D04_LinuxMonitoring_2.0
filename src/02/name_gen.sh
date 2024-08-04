#!/bin/bash

function FolderNameGen {
    string=$folder_name
    maxLen=$1

    strlen=${#string}
    lastChar=${string:strlen-1}
    firstChar=${string:0:1}

    for (( i=$strlen; i<$maxLen; i++ )); do
        string="${string:0:1}${string}"
        let "strlen+=1" 
    done

    echo $string
}
function FileNameGen {
    stringFile=$file_name

    extensionCharset=${stringFile#*.}
    baseCharset=${stringFile%%.*}
    baselen=${#baseCharset}
    base=$baseCharset
    baseMaxLen=$1

    for (( i=$baselen; i<$baseMaxLen; i++ )); do
        base="${base:0:1}${base}"
        let "strlen+=1"
    done

    strlenExt=${#extensionCharset}
    maxLenExt=3
    ext=$extensionCharset
    if [[ $maxLenExt -lt 3 ]]; then
        maxLenExt=3
    fi

    for (( i=$strlenExt; i<$maxLenExt; i++ )); do
        ext="${ext:0:1}${ext}"
        let "strlen+=1"
    done

    echo "$base.$ext"_"$(DateGen)"
}
function DateGen
{
    echo `date +%d%m%y`
}