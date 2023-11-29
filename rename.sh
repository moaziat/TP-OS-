#!/usr/bin/bash
#Created by AZIAT Mohamed 
#Github: moaziat


if [ "$#" == 2 ] || [ "$#" == 3 ] ; then 
  echo "Number of arguments must be 2 or 3" 
  exit 1 
fi 

arg1="$1"
arg2="$2"


for file in temp/*"$arg1"*; do 
  origin_filename=$(basename "$file")
  echo "$origin_filename" 
  new_filename=$(sed "s/$arg1/$arg2")
  echo "$origin_filename is renamed to $new_filename"  

  if [ "$#" -ge 3 ] && [ "$3" = "-f" ]; then 
  read -p "do you want to rename this file: [Y/n]?" 
  case "$input" in 
    [yY]) 
      ;; 
    *) 

      continue 
      ;; 
  esac 
  fi 
  mv "$file" "temp/$new_filename"
done 




