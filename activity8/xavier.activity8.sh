#!/bin/sh
echo "Give atleast 5 numbers"
numArr=()
while [ ${#numArr[@]} -lt 5 ]
do 
	read input
	if [[ $input =~ [a-zA-Z] ]]
	then
		echo "Invalid entry"
		break
	else
		numArr+=($input)
	fi
done
echo "${numArr[@]}"

