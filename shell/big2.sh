#!/bin/bash 

if [ $# -ne 2 ]
then
        echo " pass only 2 args "
	exit 1
fi
if [ $1 -gt $2 ]
then
        echo "$1 is big"
else
        echo "$2 is big"
fi
