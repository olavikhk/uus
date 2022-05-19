#!/bin/bash
#
#paarsuse kontroll
#
#skripti algus
#
echo -n "Sisesta suvaline täisarv: "
read number
#arvutamine 2-ga jagamise teel
jaak=$(( $number % 2 ))
#
if [ $jaak -eq 0 ]
then
	echo "$number  on paarisnumber "
else 	echo "$number on paaritunumber "
fi
#
#skripti lopp

