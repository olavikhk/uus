#!/bin/bash
#See skript näitab kaua antud arvuti käinud on
echo
echo  $(hostname) " at "  $(uptime) | cut -f1 -d "," 
