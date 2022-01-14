#!/bin/bash

while read line; do
	mkdir "test/$line"
done < folders_to_create.txt
