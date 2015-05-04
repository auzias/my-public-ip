#!/bin/bash
export IP=""

source functions.sh

for cm in ipinfo shtuff myip monip stun
do
	$cm
	echo -e "$IP"
	[[ -n "$IP" ]] && exit
done
