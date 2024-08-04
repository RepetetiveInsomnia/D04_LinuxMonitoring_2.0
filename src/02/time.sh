#!/bin/bash

function GetTime {
    endStamp=`date +%H:%M:%S`
    endInSeconds=$(date +%s)
    executionInSeconds=$(( $endInSeconds - $startInSeconds ))

    echo "Script execution started at = $(date '+%Y-%m-%d') $startStamp"
    echo "Script execution ended at  = $(date '+%Y-%m-%d') $endStamp"
    echo "Execution took $executionInSeconds seconds"

    echo "Script execution started at = $(date '+%Y-%m-%d') $startStamp" >> log.txt
    echo "Script execution ended at = $(date '+%Y-%m-%d') $endStamp" >> log.txt
    echo "Execution took $executionInSeconds seconds" >> log.txt
}