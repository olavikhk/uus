#!/bin/bash
#
#Antud skript küsib kasutajalt sisendi, kui vana ta on ning siis annab talle teada kas ta on 
#laps, nooruk, taiskasvanud voi seenior
#
#
read -p "Sisesta oma vanus: " vanus
if [ $vanus -gt 0 -a $vanus -lt 11 ];then
  echo "Oled laps"
elif [ $vanus -ge 11 -a $vanus -lt 18 ];then
  echo "Oled nooruk"
elif [ $vanus -gt 18 -a $vanus -lt 63 ];then
  echo "Oled taiskasvanud"
elif [ $vanus -ge 63 ];then
  echo "Oled seenior"
else
  echo "Vigane sisend"
fi
