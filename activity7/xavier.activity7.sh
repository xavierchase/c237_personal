#!/bin/sh

questionArr=("Is the sky blue?" "Is the grass green?" "We've always been at war with Oceania" "2+2=5" "The Marinas Trench is the deepest part of the ocean")
ansArr=(1 1 0 0 1)
for i in ${!questionArr[@]}
do
	echo ${questionArr[$i]}
	echo "Answer 1 for true and 0 for false"
	read input
	if [[ $input == ${ansArr[$i]} ]]
	then
		echo "Correct"
	else
		echo "Wrong"
	fi
done
