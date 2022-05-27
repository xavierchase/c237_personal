#!/bin/sh
sum=0
if [[ $1 =~ [0-9] &&  $2 =~ [0-9] ]]
then
	if [[ $1 -gt $2 ]]
	then
		(( sum=$1-$2 ))
	else
		(( sum=$2-$1 ))
	fi
	echo "The difference is $sum"
else
	echo "Numbers Only"
fi

