#!/bin/bash

#Author: Vladyslav Hrynchuk
#Date created: 20/1/22
#last modified: 20/1/22

#Descriptions: this is a script to choose between 2 provided tools

#Usage: ./toolkit.sh

PS3="Please select the tool you would like to use: "
select command in "cruft_remover" "folder_organizer"; do
	case "$command" in
		cruft_remover) ./cruft_remover.sh;;
		folder_organizer) ./folder_organizer.sh;;
	esac
	break
done
