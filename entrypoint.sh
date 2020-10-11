#!/bin/bash

echo "starting backup tool"

#echo $SMB_SRC | tr ":" "\n" | while read line; do
#	echo "mount $line";
#	path=$(echo $line | sed 's/\/\/.*\///g')
#	mkdir -p /backup/cifs/$path
#	mount -t cifs -o auto,username=${SMB_SRC_USER},password=${SMB_SRC_PASS},ro $line /backup/cifs/$path
#done

while true; do
	echo "start sync"
	sleep $INTERVAL
done
