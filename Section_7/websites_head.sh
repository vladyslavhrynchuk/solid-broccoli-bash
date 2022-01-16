#!/bin/bash

readarray -t websites < urls.txt

for site in "${websites[@]}"; do
	filename=$(echo "$site" | cut -d "." -f 2)
	touch $filename
	curl --head $site &> $filename
done
