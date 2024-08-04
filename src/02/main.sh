#!/bin/bash

. ./error_check.sh
. ./name_gen.sh
. ./entities_gen.sh
. ./log_gen.sh
. ./rand_gen.sh
. ./time.sh

startInSeconds=$(date +%s)
startStamp=`date +%H:%M:%S`


if [[ -f log.txt ]]; then
rm -f log.txt
fi
chmod +x *.sh

sudo bash -c "touch log.txt"
error_check $1 $2 $3


    nameLen=${#folder_name}
    offset=$nameLen

    if [[ nameLen -lt 5 ]]; then
        offset=(5 - $nameLen)
    fi

    FoldernNumGen
    

    for (( i=$offset; i<($folderNumber+$offset); i++ )); do
    PathGen
        dirPath=$(createDir $absolutePath $i)
        absolutePath=$dirPath
        NumberGen
        for (( j=0; j<$file_number; j++ )); do
            if [[ $(MemoryCheck) == "true" ]]; then
                echo "WARNING: 1Gb of free space left."
                GetTime
                exit
            else
            
                createFile $dirPath $j
                
            fi
        done
    done



exit 0