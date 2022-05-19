#!/bin/bash
#
#See skript arvutab kolmnurga pindala
#
#skripti algus
#
echo "Sisesta kylje a vaartus:"
read a
echo "Sisesta kylje b vaartus:"
read b
echo "Sisesta kylje c vaartus:"
read c
#
#kylgede vaartused
#
echo "kylg a: $a"
echo "kylg b: $b"
echo "kylg c: $c"
#
#valem
#
p=`echo "scale=2;($a+$b+$c)/2"|bc`
pindala=`echo sqrt"($p-$a)*($p-$b)*($p-$c)"|bc -l`
echo "kolmnurga pindala on: $pindala"

