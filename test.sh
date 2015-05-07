#!/bin/bash
export IP=""
COLOR=''

source functions.sh

for cm in $ALL
do
	time $cm
        [[ -n "$IP" ]] && COLOR='32' || COLOR='31'
	echo -e "\033[1;${COLOR}m$cm\033[0m:\t $IP"
done
