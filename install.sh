#!/bin/sh

#set -x
set -e

die() {
    echo "ERROR: $*"
    exit 1
}

# opkg update
# opkg install git nmap wireless-tools

which git2 || die "Please install git"
which nmap || die "Please install nmap"
which iwconfig || die "Please install wireless-tools"

# EOF
