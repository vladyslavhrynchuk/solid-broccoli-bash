#!/bin/bash

#Author: Vladyslav Hrynchuk
#Date created: 20/1/22
#last modified: 20/1/22

#Descriptions: this is a script to remove long time ummodified files in provided folder

#Usage: ./cruft_remover.sh

read -p "Please tell which folder you want to clean: " folder
read -p "Please teel how many days files should be unmodified to considered as cruft: " days

readarray -t files < <(find "$folder" -type f -mtime +"$days")
for file in "${files[@]}"; do
        rm -i "$file"
done
