#!/bin/bash

topic="fluorometer/value/raw"

while [ 1 ]; do
	value=$(./read.sh)
	echo "Fluorometer value: $value"
	mosquitto_pub -t $topic -m $value
#	sleep 0.5
done

