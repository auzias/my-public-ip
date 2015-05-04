#!/bin/bash
export IP=""

source functions.sh

for cm in ipinfo shtuff myip monip
do
	time $cm
	echo -e "$cm:\t $IP"
done
