#!/bin/bash

if [ "$#" -lt 1 ]
then 
	echo "One argument is required at least" 
	exit 1
fi 

touch tempFile

for arg in "$@"
do 
	read -p "$1 (O/N)? " answer
        echo  
	if [ "$answer" == "O" ] 
        then
                echo 
		echo "$arg" >> tempFile   
	fi
	shift 
	 
done


 cat tempFile 

rm tempFile