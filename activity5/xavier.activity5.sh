#!/bin/sh

read number
if [[ $number =~ [a-z] || $number =~ [A-Z] ]] 
then
	echo "Numbers Only"
else
	TEMP=`echo $number | rev`
fi
echo "Reversed string: $TEMP"
