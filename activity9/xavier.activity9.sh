#!/bin/sh

if [[ -f $1 ]]
then
	echo "Error: file exists"
else
	touch $1
fi
