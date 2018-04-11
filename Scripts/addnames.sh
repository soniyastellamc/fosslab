#!/bin/bash

if [[ "$1" = "" || "$2" = "" ]]
then
	echo "Too few arguments"
	exit
fi
if [ "$3" != "" ]
then
	echo "Too many arguments"
	exit
fi
ulist=$1
username=$2
if [ ! -f "$ulist" ]
then
	echo "File not found"
	exit
fi
result=$(grep $username $ulist)
if [ "$result" != "" ]
then
	echo "Username already exists in the file."
	exit
else
	echo "Username does not exist in ulist. Adding to file."
	echo "$username" >> $ulist
exit
fi
