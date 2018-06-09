#!/bin/bash

wget http://192.168.4.1/run/start -q -O - | fgrep "<h1>" | fgrep "<p>" | replace "<" ">" | cut -d ">" -f 5

