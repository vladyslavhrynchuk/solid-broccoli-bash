#!/bin/bash

#Author: Vladyslav Hrynchuk
#Date created: 20/1/22
#last modified: 20/1/22

#Descriptions: this is a script for organizing given folder 
# by moving its files to differen directories based on their extension

#Usage: ./folder_organizer

read -p "Please select a folder to organize: " folder
while read file; do
        case "$file" in
        *.jpg | *.jpeg | *.png) mkdir -p "$folder"/images; mv "$file" "$folder"/images/;;
        *.doc | *.docx | *.txt | *.pdf) mkdir -p "$folder"/idiocuments; mv "$file" "$folder"/idocuments/;;
        *.xls | *.xlsx | *.csv) mkdir -p "$folder"/ispreadsheets; mv "$file" "$folder"/ispreadsheets/;;
        *.sh) mkdir -p "$folder"/iscripts; mv "$file" "$folder"/iscripts/;;
        *.zip | *.tar | *.tar.gz | *.tar.bz2) mkdir -p "$folder"/iarchives; mv "$file" "$folder"/iarchives/;;
        *.ppt | *.pptx) mkdir -p "$folder"/ipresentations; mv "$file" "$folder"/ipresentations/;;
        *.mp3) mkdir -p "$folder"/iaudio; mv "$file" "$folder"/iaudio/;;
        *.mp4) mkdir -p "$folder"/ivideo; mv "$file" "$folder"/ivideo/;;
        *) ;;
        esac

done < <(ls "$folder")
