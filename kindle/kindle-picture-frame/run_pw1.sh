#!/bin/sh


cd "$(dirname "$0")"

if [ -z "$1" ]; then
    echo " run: $0 gmv_file"
    exit 1
fi

eips -c -f
while true; do
	zcat ./$1 | ./gmplay-pw1
done
