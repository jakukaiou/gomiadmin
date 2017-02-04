#!/bin/bash
find ~/Desktop/ -maxdepth 1 -type f > throwlist
set -- $(wc throwlist)
#echo $1
thrownum=$(($1-2))
if [ ${thrownum} -eq 0 ] ; then
    echo "gomi not found"
    exit
fi
#echo ${thrownum}
rand=$((($RANDOM % $thrownum)+3))
throwgomi=$(sed -n ${rand}p throwlist)
filename=$(basename $throwgomi)
#echo ${filename}
trashCount=$(ls -U1 ~/.Trash | wc -l)
echo ${trashCount}
if [ ${trashCount} -gt 99 ] ; then
    rm ~/Desktop/${filename}
else
    mv ~/Desktop/${filename} ~/.Trash
fi