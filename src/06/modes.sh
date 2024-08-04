#!/bin/bash

function ByCode {
    codes=(200 201 400 401 403 404 500 501 502 503)
    number=${#codes[*]}
    for (( i=0; i < number; i++ )); do
        for ((j=1; j<=5; j++));do
        awk '$9 == '${codes[i]}'  { print $0 }' ../04/log${j}.log >> sortedLog.log
        done
    done  
}


function ByIp {
    for ((j=1; j<=5; j++));do
        awk '{print $1}' ../04/log${j}.log >> iplist.txt
    done
    sort iplist.txt | uniq  >> sortedLog.log
    rm -f iplist.txt
}


function ByRequest {
    codesOk=(400 401 403 404 500 501 502 503)
    number=${#codesOk[*]}
    for (( i=0; i < number; i++ )); do
        for ((j=1; j<=5; j++));do
        awk '$9 == '${codesOk[i]}'  { print $9 " " $6 " " $7 $8}' ../04/log${j}.log >> sortedLog.log
        done
    done  
}

function ByError {
    codesEr=(400 401 403 404 500 501 502 503)
    number=${#codesEr[*]}
    for (( i=0; i < number; i++ )); do
        for ((j=1; j<=5; j++));do
        awk '$9 == '${codesEr[i]}'  { print $1 }' ../04/log${j}.log >> sortedLog.log
        done
    done
}