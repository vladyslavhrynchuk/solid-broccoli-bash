#!/bin/bash
total_seconds=0;
while getopts "m:s:" opt; do
	case "$opt" in
		m) total_seconds=$(( $total_seconds+$OPTARG*60 ));;
		s) total_seconds=$(( $total_seconds+$OPTARG ));;
	esac
done
while [ $total_seconds -ne 0 ]; do
	sleep 1
	echo "remained $total_seconds seconds"
	total_seconds=$(( $total_seconds-1 ))
done
