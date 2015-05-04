#!/bin/bash
export IP=""

source functions.sh

for cm in ipinfo shtuff myip monip stun
do
	time $cm
	echo -e "$cm:\t $IP"
done
