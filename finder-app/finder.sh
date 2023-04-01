#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z $filesdir ]
then 
    echo "filesdir not supplied"
    exit 1
fi

if [ -z $searchstr ]
then
    echo "searchstr no supplied"
    exit 1
fi

if [ ! -d $filesdir ]
then
    echo "Not a valid directory"
    exit 1
fi

filecount=$(grep $searchstr -R $filesdir | uniq | wc -l)
occurence=$(grep $searchstr -R $filesdir | wc -l)

echo "The number of files are $filecount and the number of matching lines are $occurence"

# find searchdir  -type -f  -exec grep searchstr {} | wc -l \;
