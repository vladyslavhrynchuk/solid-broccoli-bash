#!/bin/bash

PS3="PLease select your city: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester; do
	case "$city" in
		Tokyo) echo "It is Japan";;
		London | Manchester) echo "It is Great Britain";;
		"Los Angeles") echo "It is USA";;
		Moscow) echo "It is Russia";;
		Dubai) echo "It is UAE";;
	esac
	break
done

