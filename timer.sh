#!/bin/bash

echo -e "\n\033[94m----------------------------------TIMER----------------------------------\033[0m"
echo -e "\n\033[93mSet the TIMER\033[0m"
echo -ne "Write \033[92m'y'\033[0m to continue and \033[91many other key\033[0m for quit: "
read key

k='s'

if [ $key == 'y' ]
then
	echo -n "Enter the hours: "   #read -p didn't work inside if-else
	read h				
	echo -n "Enter the minutes: " 
	read m
	echo -n "Enter the seconds: " 
	read s
	echo "Timer has started..." 
	for (( ; ; ))
	do
		
		if [[ $(date +"%H") -eq $h ]]
		then
			if [[ $(date +"%M") -eq $m ]]
			then
				if [[ $(date +"%S") -eq $s ]]
				then
					for (( ; ; )) 
					do
				
						echo $(paplay /usr/share/sounds/sound-icons/electric-piano-3.wav)
						echo "Time up! Press ctrl+c key to stop"
						#read -n 1 -r -s -p $'Press enter to continue...\n'
						#if [ $k == 'x' ]
						#then
						#	exit 0
						#else
						# 	continue	
						#fi
					done
				fi
			fi
		fi
	done
	
elif [ $key != 'y' ]   	# if not y then the timer will exit |||||||||| 'elif' doesn't require fi but if we are using 'else if' needs fi
	then
		echo -e "\033[91mExiting from timer...\033[0m"
		exit 0
fi

