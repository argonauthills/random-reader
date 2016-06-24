#!/bin/bash

# Check args
if [ -z "$1" ]; then
    echo "Must include directory to read from" 1>&2;
    exit 1;
else
    directory=$1;
fi


# Find files in directory
array=(`find $directory -name "*.md"`);
numDocs=${#array[@]};


if [ $numDocs -eq 0 ]; then
    echo "Directory is empty" 1>&2;
    exit 1;
fi


# Randomly select a file.
index=$(($RANDOM % numDocs));  #$RANDOM is only 16-bit number; might want a better random.
cat ${array[index]};
echo ""  # we want to ensure a newline after the file is printed.
