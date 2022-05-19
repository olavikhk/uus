#!/bin/bash
#Ulesanne 1 kasutades parameetreid sisendina
#
if [ $# -ne 1 ]
then
  read -p "Sisesta number: " arv
  jaak=$(( $arv%2 ))
  if [ $jaak -eq 0 ]
  then
    echo "arv $arv on paaris"
  else
    echo "arv $arv on paaritu"
  fi
else
  jaak=$(( $1%2 ))
  if [ $jaak -eq 0 ]
  then
    echo "arv $1 on paaris"
  else
    echo "arv $1 on paaritu"
  fi
fi



