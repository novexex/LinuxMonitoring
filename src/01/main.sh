#!/bin/bash

# if 1) $# - hranit kol-vo parametrov peredanih v script, -ne - algebraicheskoe sravnenie 1 i $3
# if 2) proveryaet ne pustoi li pervii parametr
# if 3) =~ - sopostablenie regulyarnogo virajeniya $expr i stroki $1

# ^ - znachit chto regulyarnoe virajenie mi budem iskat s nachala stroki
# \ - esli pered regulyanim virajeniem budet stoyat kakoi nibud simvol, on vse ravno naidet etu regularky
# [ ] - diapazon
# * - 1 ili neskolko simvolov iz diapazona
# ? - predidushii symbol ili regularka vstrechetsya 0 ili 1 raz
# + - predidyshii symbol vstrechaetsya odin ili bolee raz
# $ - budet iskat regularky v konce stroki
# ! - otricanie

expr='^\-?[0-9]*\.?[0-9]+$'

if [ $# -ne 1 ] || ! [ -n $1 ] || [[ $1 =~ $expr ]] ; then
        echo 'Error'
else
        echo "${1}"
fi
