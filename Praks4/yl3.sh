#!/bin/bash
#
#See skript arvutab nädala ajakulu
#
#skripti algus
#
echo Palun sisesta ainepunktide arv
read ainepunktid
echo Palun sisesta nädalate arv
read nadal
arvutus1=`echo $ainepunktid*26| bc`
arvutus2=`echo "scale=1;$arvutus1/$nadal"| bc`
umardamine="`echo  "($arvutus2+0.9)/1"| bc`"
echo $umardamine
#
#skripti lõpp
