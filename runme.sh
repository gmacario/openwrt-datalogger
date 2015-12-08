#!/bin/sh

set -e

[ -z "${IFACE}" ] && IFACE=wlan0
[ -z "${LOCALNET}" ] && LOCALNET=192.168.64.0/24

NOW=$(date +%Y%m%d-%H%M)
[ -z "${LOGFILE}" ] && LOGFILE=/tmp/datalogger-${NOW}.txt

echo "DEBUG: IFACE=${IFACE}"
echo "DEBUG: LOCALNET=${LOCALNET}"
echo "DEBUG: LOGFILE=${LOGFILE}"

echo "---------------------------------------------------------------" >>${LOGFILE}
NOW=$(date +%Y%m%d-%H%M)
echo "DEBUG: NOW=${NOW}" >>${LOGFILE}
iwlist $IFACE scan >>${LOGFILE}
nmap ${LOCALNET}

# EOF
