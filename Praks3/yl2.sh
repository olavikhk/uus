#!/bin/bash
#
#sorteeritud logid
#
echo
find /var/ -name "*.log" -a -type f 2> /dev/nul -exec wc -l {} \; | sort -g -r | cut -f2 -d" "
find /var/ -name *.log -exec wc -l {} \; | cut -f1 -d" " | sort -g -r
echo
