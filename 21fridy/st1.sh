#!/bin/bash

str="abc"
len=`echo $str | wc -c`
rev=""
while [ $len -gt 0 ]
do
 last_char=`echo $str | cut -c $len`
 rev="$rev$last_char"
 len=`expr $len - 1`
done
echo $rev



