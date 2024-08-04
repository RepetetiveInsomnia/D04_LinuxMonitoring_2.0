#!/bin/bash

. ./error_check.sh
. ./modes.sh

error_check $1
if [[ -f sortedLog.log ]]; then
rm -f sortedLog.log
fi

if [[ $scriptMode = 1 ]]; then
    ByCode
elif [[ $scriptMode = 2 ]]; then
    ByIp
elif [[ $scriptMode = 3 ]]; then
    ByRequest
elif [[ $scriptMode = 4 ]]; then
    ByError
fi



exit 0