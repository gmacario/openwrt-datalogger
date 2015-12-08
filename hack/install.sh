#!/bin/sh

set -x
set -e

opkg update

opkg install git nmap wireless-tools

# EOF 
