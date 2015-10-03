#!/bin/bash

if  ! [[ $1 =~ (^[1-9][0-9]{0,2}|1000)$ ]] ; then
	echo "Bad input. Need number in [1, 1000]"
	exit 1
fi

prevprev=0
prev=1

i=1
while (( i < $1 )) ;
do
	let "next=$prevprev + $prev"
	let "prevprev=$prev"
	let "prev=$next"
	((++i))
done

echo "$prev"