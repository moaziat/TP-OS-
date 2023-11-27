#!/bin/bash/
#Mohamed AZIAT 
#Github account: moaziat 
#Email : moha.aziat@gmail.com

if [ -d "nouvelles"] 
	echo "The repository exits already" 
else 
	mkdir nouvelles #create the repo 
fi 

ls -l /nouvelles #show files in rep in lines

touch .temoin #create a hidden file named temoin 

ls -lt /nouvelles 


