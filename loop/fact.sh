#!/bin/bash
for i in $*
do
	num=$i
	fact=1

	while [ $num -gt 0 ]
	do
		fact=`expr $num \* $fact`
		num=`expr $num - 1`
       done
       echo " fact of $i is $fact "   
done  
