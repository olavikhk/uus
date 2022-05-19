#!/bin/bash
#
#Sisesta kellaaeg ning skript tervitab vastvalt paeva ajale
#
#
read -p "Sisesta kellaeg: " aeg
if [ $aeg -ge 0 -a $aeg -lt 6 ];then
  echo "Head ööd unimüts!"
elif [ $aeg -ge 6 -a $aeg -lt 12 ];then 
  echo "Tere Hommikust!"
elif [ $aeg -ge 12 -a $aeg -lt 18 ];then
  echo "Tere päevast!"
elif [ $aeg -ge 18 -a $aeg -lt 22 ];then
  echo "Tere õhtust!"
elif [ $aeg -ge 22 -a $aeg -lt 24 ];then
  echo "Head ööd unimüts!"
else
  echo "Palun kontrollige oma kellaaega"
fi


