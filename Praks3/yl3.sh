#!/bin/bash
#
#pc seisundi väljastamine
#
#skripti algus
#
echo
echo -n `hostname`
echo -n " at "
echo -n `uptime | cut -f1 -d ","`
echo
#
#
# skripti lõpp
