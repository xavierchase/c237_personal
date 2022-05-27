#!/bin/sh
rm $(date '+%Y-%m-%d')test.txt
touch $(date '+%Y-%m-%d')test.txt
FILE=$PWD/$(date '+%Y-%m-%d')test.txt
for i in {1..5}
do
	echo $(( $RANDOM % 50 + 1 ))>>$FILE
done
echo $(( $RANDOM % 10 + 1 ))>>$FILE
