#!/bin/bash

function error_check {
if [[ $1 =~ ^[1-4]+$ ]];then
    scriptMode=$1
else
    echo "ERROR: invalid argument"
    exit
fi
}