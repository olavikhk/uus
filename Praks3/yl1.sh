#!/bin/bash
#Skript väljastab kuupäeva ja kellaaja ja kalendri
#Date commandi saab siduda sõnega



date +"Today is %A,%B %d,%Y"
date +"Time is %H:%M"
echo " "
echo -n "Calendar of"
cal 
