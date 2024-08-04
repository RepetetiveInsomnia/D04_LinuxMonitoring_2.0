#!/bin/bash

. ./error_check.sh
. ./name_gen.sh
. ./entities_gen.sh
. ./log_gen.sh

if [[ -f log.txt ]]; then
rm -f log.txt
fi
chmod +x *.sh

sudo bash -c "touch log.txt"
error_check $1 $2 $3 $4 $5 $6


    nameLen=${#folder_name}
    offset=$nameLen

    if [[ nameLen -lt 4 ]]; then
        offset=(4 - $nameLen)
    fi

    for (( i=$offset; i<($folderNumber+$offset); i++ )); do
        dirPath=$(createDir $absolutePath $i)
        absolutePath=$dirPath

        for (( j=0; j<$file_number; j++ )); do
            if [[ $(MemoryCheck) == "true" ]]; then
                echo "Error: at least 1 GB of free disk space required"
                exit
            else
                createFile $dirPath $j
            fi
        done
    done



exit 0