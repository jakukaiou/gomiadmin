#!/bin/bash
find ~/gomiadmin/gomipic > gomilist
set -- $(wc gomilist)
#echo $1
gominum=$(($1-2))
rand=$((($RANDOM % $gominum)+3))
#echo $rand
putgomi=$(sed -n ${rand}p gomilist)
#echo ${putgomi}
#echo $(basename $putgomi)
filename=$RANDOM$(basename $putgomi)
#echo $filename
cp  ${putgomi} ~/Desktop/${filename}

