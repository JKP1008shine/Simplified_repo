#!/bin/bash

echo "WELCOME TO GIT TOKEN UPDATER"
read -p "Do you want to update your token? (y/n): " key
if [[ $key == 'Y' || $key == 'y' ]]
then
	echo "Your current token is: "
	cat /home/sinjini/Gitdir/Simplified_repo/demo_token.txt
	
	read -p "Enter your new token: " token
	read -p "Valid for how many days: " ndays
	echo $token >> /home/sinjini/Gitdir/Simplified_repo/demo_token.txt
	echo "updated on: " `date` >> /home/sinjini/Gitdir/Simplified_repo/demo_token.txt
	echo -e "Expiring on: " `date --date="$ndays days"` >> /home/sinjini/Gitdir/Simplified_repo/demo_token.txt 
	echo "----------------------------------------------------------------------------------------------------" >> /home/sinjini/Gitdir/Simplified_repo/demo_token.txt
fi

