#!/bin/bash
function inc_by_one {
	num=$1
	sum=0
	sum=`expr $num + 1`
	echo "$sum"
}
for i in $*
do
	inc_by_one $i
done
