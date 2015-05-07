#!/bin/bash
ALL=""

ALL="$ALL ipinfo"
ipinfo() {
  IP=$(curl --silent http://ipinfo.io/ip)
}

ALL="$ALL myip"
myip() {
  IP=$(curl --silent http://www.myip.net/ | \
	grep "<b>Your IP Address:" | \
	cut -d ':' -f 4 | \
	cut -d '<' -f 1)
}

ALL="$ALL shtuff"
shtuff() {
 IP=$(curl --silent https://shtuff.it/myip/short/)
}

ALL="$ALL monip"
monip() {
  IP=$(curl --silent http://monip.org/ | \
	grep "IP :" | \
	cut -d ':' -f 2 | \
	cut -d '<' -f 1 )
}

ALL="$ALL stun"
stun() {
    IP=$(stun-client -v stun.voiparound.com 2>&1 1>/dev/null | \
	grep MappedAddress | \
	sed -e 's/.*MappedAddress = //' -e 's/:.*//' | \
	uniq)
}
