#!/bin/bash
#Sisestame inimeste arvu ning bussi kohtade arvu ning arvutame kuidas 
#inimesed bussi mahuvad
#
#valemi algus
#
echo -n "Sisesta reisijate arv: " 
read inimesed
echo -n "Sisesta kohtade arv: " 
read istekohad

taituvus=$(($inimesed/$istekohad))
ulejaak=$(($inimesed%$istekohad))
# 
if [ $ulejaak -gt 0 ]
then
  taituvus=$((taituvus+1))
fi

echo "Kokku on vaja $taituvus bussi"
