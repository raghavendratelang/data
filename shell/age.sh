#!/bin/bash
sed '1d' $1 >> datatemp
while read line
do
	age=` echo "$line" | awk -F " " '{print$3}' `
	if [ $age -gt 50 ]
	then
		echo " $line" | awk -F " " '{print$1}' 
	fi
done<datatemp
rm datatemp 

	
