#!/bin/bash
#
#reisijate arvutamine
#
#skripti algus
#
#inimeste arv
echo -n "Sisesta inimeste arv: "
read inimesed
#
#kohtade arv bussis
echo -n "Sisesta kohtade arv: "
read kohad
#
arvutus=`expr $inimesed / $kohad`
jaak=`expr $inimesed % $kohad`
#
echo Kokku on busse $arvutus tk ja ilma kohata jääb $jaak inimest
#
#skripti lõpp
