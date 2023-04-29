#!/bin/bash
num=$1
fact=1
while [ $num -gt 0 ]
do
	fact=`expr $num \* $fact`
	num=`expr $num - 1`
done
echo " fact of $1 is $fact"

