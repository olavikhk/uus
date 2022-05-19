#!/bin/bash
#
#Skript tervitab kasutajat vastavalt kellaajast sõltuvalt
#
#
aeg=$(date +"%H")
echo "Kell on $aeg"
kasutajanimi=$(whoami)
if [ $aeg -ge 0 -a $aeg -lt 6 ];then
  echo "Head ööd, $kasutajanimi!"
elif [ $aeg -ge 6 -a $aeg -lt 12 ];then
  echo "Tere Hommikust, $kasutajanimi!"
elif [ $aeg -ge 12 -a $aeg -lt 18 ];then
  echo "Tere Päevast, $kasutajanimi!"
elif [ $aeg -ge 18 -a $aeg -lt 22 ];then
  echo "Tere Õhtust, $kasutajanimi!"
elif [ $aeg -eq 23 ];then
  echo "Head ööd, $kasutajanimi!"
else
  echo "Palun kontrolli kellaaega"
fi
