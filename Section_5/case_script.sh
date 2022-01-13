#!/bin/bash
read -p "please enter number: " number
case "$number" in 
	[0-9]) echo "you entered single digit number";;
	[0-9][0-9]) echo "you entered a 2 digit number";;
	[0-9][0-9][0-9]) echo "you entered a 3 digit number";;
	*) echo "you have enter number more than 3 digits";;
esac
