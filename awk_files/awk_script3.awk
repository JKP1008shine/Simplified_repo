#!/bin/awk -f

# echo 2 3 | awk ' {print "a = " $1 " b = "$2}' is the command way to read values using shell and awk

#this is the script version, now

BEGIN {}

{
	print "a = "$1 " b = "$2 
}


