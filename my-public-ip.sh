#!/bin/bash
export IP=""

ipinfo() {
  IP=$(curl --silent http://ipinfo.io/ip)
}

myip() {
  IP=$(curl --silent http://www.myip.net/ | \
	grep "<b>Your IP Address:" | \
	cut -d ':' -f 4 | \
	cut -d '<' -f 1)
}

shtuff() {
 IP=$(curl --silent https://shtuff.it/myip/short/)
}

monip() {
  IP=$(curl --silent http://monip.org/ | \
	grep "IP :" | \
	cut -d ':' -f 2 | \
	cut -d '<' -f 1 )
}

for cm in ipinfo shtuff myip monip
do
	$cm
	echo -e "$IP"
	[[ -n "$IP" ]] && exit
done
