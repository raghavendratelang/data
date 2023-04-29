#!/bin/bash

line=`cat $1 | wc -l`
while [ $line -gt 0 ]
do
	head -$line $1 | tail -1 >> rev
	line=`expr $line - 1`
done
cat rev
rm rev
