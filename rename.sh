#!/usr/bin/bash
#Created by Adama Diop & AZIAT Mohamed 
#Github: moaziat


if [ "$#" -lt  2 ] || [ "$#" -gt 3 ] ; then 
  echo "Number of arguments must be 2 or 3" 
  exit 1 
fi 

arg1="$1"
arg2="$2"


for file in temp/*"$arg1"*; do 
  if [ -f "$file" ]; then 
  
    if [[ "$file" == *"$2" ]]; then 
      if [ "$arg2" == "-f" ] ; then
        read -p "Do you want to rename $file [y/n]"
        if [ "$input" != "y" ] ; then 
        echo "failed to rename the file" 
        continue 
        fi 
      fi 
  
      origin_filename="$1" 
      new_filename="$2" 
      new_filename=$(echo "$file" | sed "s/$2/$3/") 
      mv "$file" "$new_filename" 
    fi
  fi 
done 
