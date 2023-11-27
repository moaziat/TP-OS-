#!/bin/bash/

if ["#" -lt 1]
then 
	echo "One argument is required at least" 
	exit 1
fi 

touch tempFile

for arg in "$@"
do 
	read -p "$1 (O/N)? " answer
        echo $answer
        if [ "$anwser"-eq"O" ]
        then
                echo 
                echo "$answer" >> tempFile
                echo "transfer to TempFile finished"
        fi
        shift
done


cat tempFile | while read line;do
        echo "$line"
done

