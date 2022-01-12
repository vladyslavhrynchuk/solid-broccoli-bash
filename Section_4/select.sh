#!/bin/bash

PS3="what is the day of the week "
select day in mon tue wed thu fri sat fri sat sun;
do
echo "$day"
break
done
