#!/bin/sh
if [[ `awk 'NR==FNR{a[$0];next} ($0 in a)' $1 $2` =~ [a-zA-Z0-9] ]]
then
	echo "Files contain similair elements"
else
	echo "Files differ completely"
fi
