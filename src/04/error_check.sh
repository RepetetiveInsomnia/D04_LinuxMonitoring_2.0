#!/bin/bash

function error_check {
if [ "$#" != 0 ]; then
echo "Error: no arguments required"
exit 1
fi
}