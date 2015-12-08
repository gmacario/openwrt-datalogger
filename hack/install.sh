#!/bin/sh

#set -x
set -e

[ -z "${DATALOGGER_URL}" ] && DATALOGGER_URL=https://github.com/gmacario/openwrt-datalogger.git
[ -z "${DATALOGGER_BRANCH}" ] && DATALOGGER_BRANCH=master
[ -z "${WORKDIR}" ] && WORKDIR=${HOME}/openwrt-datalogger

die() {
    echo "ERROR: $*"
    exit 1
}

# opkg update
# opkg install git-http nmap wireless-tools

which curl >/dev/null || die "Please install curl"
which git >/dev/null || die "Please install git"
which nmap >/dev/null || die "Please install nmap"
which iwconfig >/dev/null || die "Please install wireless-tools"

if [ ! -e ${WORKDIR} ]; then
    echo "INFO: Checking out ${DATALOGGER_URL}"
    git clone -b ${DATALOGGER_BRANCH} ${DATALOGGER_URL} ${WORKDIR}
else
    echo "INFO: Updating ${WORKDIR}"
    cd ${WORKDIR}
    git checkout ${DATALOGGER_BRANCH} && git fetch --all
fi

# EOF
