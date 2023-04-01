#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr ]
then
    echo "Please specify both file and string content"
    exit 1
fi

mkdir -p $(dirname $writefile)

if [ $? -ne 0 ]
then
    echo "Unable to create dir"
    exit 1
fi

echo $writestr > $writefile

if [ $? -ne 0 ]
then
    echo "Unable to write to $writefile"
    exit 1
fi

