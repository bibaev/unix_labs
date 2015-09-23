#!/bin/bash
# Написать regexp для разбора ip-адреса. 
# file=../tests/2/ips
if [ -f "$1" ] ;then
	cat "$1" | grep -E '^(([0-9]|[1-9][0-9]|1[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{1,2}|2[0-4][0-9]|25[0-5])$'
else
	echo "Usage ./2.sh filename"
	exit 1
fi