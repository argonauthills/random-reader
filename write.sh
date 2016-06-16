#!/bin/bash

# Check args
if [ -z "$1" ]; then
    echo "Must include output directory" 1>&2;
    exit 1;
else
    directory=$1;
fi

if [ -z "$2" ]; then
    echo "Must include entry subject" 1>&2;
    exit 1;
else
    subject=$2;
fi

# create the file name
stamp=$(date "+%Y-%m-%d");
filepath="${directory}/${stamp}_${subject}.md";

# open text editor
echo "writing to $filepath";
subl $filepath;