#!/bin/bash


a=$1
b=$2
if [[ $# -eq 0 ]]
then
	echo "No arguments provided" #echo "Sum: $((a+b))"
else
	echo "Sum: $((a+b))"
fi

