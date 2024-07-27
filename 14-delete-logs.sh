#!/bin/bash

source_path=/tmp/app-logs #idhi manam create cheyali linux server lo.tmp ane folder lo valli
                          # mkdir app-logs ani oka directory create chesi.next pwd cmd ichi copy the path
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $source_path ]  #-d means for directory.This will check whether above path is exists or not.
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure $source_path exists $N"
    exit 1
fi
