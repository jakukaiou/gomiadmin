#!/bin/bash
trashCount=$(ls -U1 ~/.Trash | wc -l)
if [ ${trashCount} -ne 0 ]; then
    rm -R ~/.Trash/*
fi