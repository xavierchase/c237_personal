#!/bin/sh
FILE=$(date '+%Y-%m-%d')test.txt
#read input < /dev/tty
cat $FILE | while read line;
do
	for i in $@
	do
		if [[ $line == $i && $line != `tail -1 $FILE` ]]
		then
			echo "MATCH! '$line' and '$i'"
			break
		fi
	done
	if [[ ${@: -1}  == `tail -1 $FILE` && $line == `tail -1 $FILE` ]]
	then
		echo "You got the Super Ball!"
	fi
done
