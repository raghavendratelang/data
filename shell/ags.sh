#!/bin/bash

sed '1d' $1 >> temp
while read line
do
	age=` echo "$line" | awk -F " " '{print$NF}' `
	if [ $age -gt 30 ] && [ $age -le 50 ]
	then
		echo "$line" | awk -F " " '{print$1}'
	fi
done<temp
rm temp
