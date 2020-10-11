#!/bin/bash

echo "starting backup tool"

ARGS="--delete --update --size-only --chmod=ugo=rwx"

if [ ! -z "$BWLIMIT" ]; then
	ARGS="$ARGS --bwlimit=$BWLIMIT"
fi

if [ -z "$VERBOSE" ]; then
	ARGS="$ARGS -Pv"
fi

while true; do
	echo "start sync"
	rsync -tr $ARGS /backup/src/ /backup/dst/
	echo "finish sync, sleep $INTERVAL"
	sleep $INTERVAL
done
