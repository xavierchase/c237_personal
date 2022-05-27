#!/bin/sh

read password
LENGTH=`expr "$password" : '.*'`
if [[ $LENGTH -lt 8 ]]
then
	echo "Password too short"
else 
	echo "Password is atleast 8 characters"
fi
if [[ $password == *@(1|2|3|4|5|6|7|8|9|0)* ]]
then
	echo "Password contains numbers"
else
	echo "Password Must Contain Numbers"
fi
if [[ $password =~ [A-Z] && $password =~ [a-z] ]]
then
	echo "Password contains captial and lower case letters"
else
	echo "Password must contain capital and lower case letters"
fi
