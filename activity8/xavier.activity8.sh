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
echo "Add up to 5 more numbers or exit by entering invalid entry"
while true
do
        read input
        if [[ $input =~ [a-zA-Z] || ${#numArr[@]} -gt 9 ]]
        then
                echo "Array full or early exit"
                break
        else
                numArr+=($input)
        fi
done
echo ${numArr[@]}

sum=0
product=1
average=0
min=${numArr[0]}
max=${numArr[0]}
for i in ${numArr[@]}
do
	sum=$((sum+$i))
	product=$((product*$i))
	if [[ $i -lt $min ]]
	then
		min=$i
	fi
	if [[ $i -gt $max ]]
	then
		max=$i
	fi
done
average=$((sum/${#numArr[@]}))
echo $sum $average $product $min $max
