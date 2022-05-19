#!/bin/bash
#
#See skript loeb kasutaja sisendid ning arvutab hüpotenuusi
echo "Sisesta a kylje vaartus: "
read a
echo "Sisesta b kylje vaartus: "
read b

aruudus=$(($a**2))
bruudus=$(($b**2))
cruudus=$(($aruudus+$bruudus))
hypotenuus=`echo "scale=2;sqrt($cruudus)"|bc`
echo $hypotenuus
