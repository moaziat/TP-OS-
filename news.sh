#!/bin/bash/
#Mohamed AZIAT 
#Github account: moaziat 

if [ -d "nouvelles"] 
	echo "The repository exits already" 
else 
	mkdir nouvelles #create the repo 
fi 

ls -l /nouvelles #show files in rep in lines

touch /nouvelles/.temoin #create a hidden file named temoin 

ls -lt /nouvelles 


if [$# -eq 0 ]; then 
	echo "$0" 
	echo " -liste : show recent files in rep"
	echo " -lire : show recent files content"
	echo " -toutlu : set hidden file to current date" 


args = ("-liste" "-lire" "-toutlu") 

for arg in "$@"; do 
	case $arg in 
		-liste) 
			for file in nouvelles/*; do 
				if [ -f "$file" ] && [ "$file" -nt nouvelles/.temoin ]; then 
					echo "$(basename "$file")" 
				fi 
			done
			;; 
		-lire)
			for file in nouvelles/*; do 
				if [ -f "$file" ] && [ "$file" -nt nouvelles/.temoin ]; then 
					echo "$(basename "$file")" 
					cat "$file" 
				fi 
			done
			;;
		-toutlu) 
			touch .temoin 
			echo ".temoin is up to date " 
			;; 

		-purge) 
			echo "Deleting older files than .temoin"  
			for file in nouvelles/*; do 
				if [ -f "$file" ] && [ "$file" -nt nouvelles/.temoin ]; then 
					rm "$file"  
				fi 
			done
			;;
		*) 
			exit 1 
			;; 
	esac 
done 
