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
        *.doc | *.docx | *.txt | *.pdf) mkdir -p "$folder"/documents; mv "$file" "$folder"/documents/;;
        *.xls | *.xlsx | *.csv) mkdir -p "$folder"/spreadsheets; mv "$file" "$folder"/spreadsheets/;;
        *.sh) mkdir -p "$folder"/scripts; mv "$file" "$folder"/scripts/;;
        *.zip | *.tar | *.tar.gz | *.tar.bz2) mkdir -p "$folder"/archives; mv "$file" "$folder"/archives/;;
        *.ppt | *.pptx) mkdir -p "$folder"/presentations; mv "$file" "$folder"/presentations/;;
        *.mp3) mkdir -p "$folder"/audio; mv "$file" "$folder"/audio/;;
        *.mp4) mkdir -p "$folder"/video; mv "$file" "$folder"/video/;;
        *) ;;
        esac

done < <(ls "$folder")
