#!/bin/bash
ALL=""

##Web methods
ALL="$ALL whatismyip"
whatismyip() {
  IP=$(curl --silent whatismyip.akamai.com)
}

ALL="$ALL whatismijnip"
whatismijnip() {
  IP=$(curl --silent http://whatismijnip.nl | \
	cut -d " " -f 5)
}

ALL="$ALL icanhazip"
icanhazip() {
  IP=$(curl --silent https://icanhazip.com/)
}

ALL="$ALL curlmyip"
curlmyip() {
  IP=$(curl --silent http://curlmyip.com)
}

ALL="$ALL ident"
ident() {
  IP=$(curl --silent http://ident.me/)
}

ALL="$ALL ident"
ifconfig() {
  IP=$(curl --silent ifconfig.me)
}

ALL="$ALL tnx"
tnx() {
  IP=$(curl --silent tnx.nl/ip)
}

ALL="$ALL ipecho"
ipecho() {
  IP=$(curl --silent http://ipecho.net/plain)
}

ALL="$ALL ipapp"
ipapp() {
  IP=$(curl --silent ip.appspot.com)
}

ALL="$ALL wgetip"
wgetip() {
  IP=$(curl --silent wgetip.com)
}

ALL="$ALL iptyk"
iptyk() {
  IP=$(curl --silent ip.tyk.nu)
}

ALL="$ALL corz"
corz() {
  IP=$(curl --silent corz.org/ip)
}

ALL="$ALL whatismyipaddress"
whatismyipaddress() {
  IP=$(curl --silent bot.whatismyipaddress.com)
}

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

##DNS method
ALL="$ALL dns"
dns() {
  IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
}

##STUN method
ALL="$ALL stun"
stun() {
    IP=$(stun-client -v stun.voiparound.com 2>&1 1>/dev/null | \
	grep MappedAddress | \
	sed -e 's/.*MappedAddress = //' -e 's/:.*//' | \
	uniq)
}

