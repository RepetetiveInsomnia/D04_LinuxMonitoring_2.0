#!/bin/bash

function error_check {
if [[ $1 =~ ^[1-3]+$ ]];then
    scriptMode=$1
else
    echo "ERROR: invalid argument"
    exit
fi
}