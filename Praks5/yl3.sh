#!/bin/bash
#
#See skript arvutab millal sa reisile sõidad ja millal sa tagasi jõuad
echo "Arasoidu paev: "
read a
echo "Reisi oopaevade arv: "
read b

arvutus1=`echo "($b-(($b/7)*7))+$a"|bc`
echo "Tagasi olen päeval number $arvutus1"
