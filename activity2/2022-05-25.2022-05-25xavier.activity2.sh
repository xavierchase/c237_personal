#!/bin/sh
ls $PWD | while read line;
do
	mv $line $(date '+%Y-%m-%d').$line
	echo $line
done
echo "exit status: "$?
