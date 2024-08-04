#!/bin/bash

. ./error_check.sh
. ./modes.sh


error_check $1
if [[ $scriptMode = 1 ]]; then
    ByLog
elif [[ $scriptMode = 2 ]]; then
    ByTime
elif [[ $scriptMode = 3 ]]; then
    ByMask $2
fi



exit 0