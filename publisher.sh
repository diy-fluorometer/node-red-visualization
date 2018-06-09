#!/bin/bash

topic="fluorometer/value/raw"

while [ 1 ]; do
	ping=$(ping 192.168.4.1 -c 1 | fgrep "1 received" 2>&1)
	if [ "$ping" == "" ]; then
		echo "Fluorometer not reachable"
		sleep 1
		continue
	fi

	value=$(./read.sh)
	echo "Fluorometer value: $value"
	mosquitto_pub -t $topic -m $value
#	sleep 0.5
done

