#!/bin/bash

if [ -d $HOME/performance ]; then
	echo "folder $HOME/performance exists"
else
	mkdir $HOME/performance
fi

echo $(free) >> $HOME/performance/memory.log
