#!/bin/bash
#
#Antud skript väljastab muutuja lause ekraanile
#
#skripti algus
declare -i aasta=2016
president="Kersti Kaljulaid"
lause_keskosa=" aastal valiti Eesti presidendiks "
lause=$aasta$lause_keskosa$president
echo $lause
#
#skripti lõpp
