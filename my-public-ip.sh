#!/bin/bash
export IP=""

source functions.sh

for cm in $ALL
do
	$cm
	echo -e "$IP"
	[[ -n "$IP" ]] && exit
done
