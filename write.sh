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
dashedSubject=${subject// /-}
filename="${stamp}_${dashedSubject}.md";
filepath="${directory}/${filename}";

# prep and open file
echo "writing to $filepath";
printf "\n# ${stamp} ${subject}\n\n" > "$filepath";
subl "${filepath}:4";  #we open on line 4; if this is a new file, that will be the last line.
