#!/bin/bash
#
#Sisesta kuu number ning skript väljastab aastaaja
read -p "Sisesta kuu number: " kuu
if [ $kuu -ge 1 -a $kuu -lt 3 ];then
  echo "Praegu on veel talv!"
elif [ $kuu -ge 3 -a $kuu -lt 6 ];then
  echo "Praegu on veel kevad!"
elif [ $kuu -ge 6 -a $kuu -lt 9 ];then
  echo "Praegu on veel suvi!"
elif [ $kuu -ge 9 -a $kuu -lt 12 ];then
  echo "Praegu on veel sugis!"
elif [ $kuu -eq 12 ];then
  echo "Praegu on veel talv!"
else
  echo "Sellist kuud ei eksisteeri"
fi

