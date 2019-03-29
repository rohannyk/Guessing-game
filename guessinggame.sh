#!/usr/bin/env bash
# File: guessinggame.sh

function game(){
	correct_answer=$(ls -l . | egrep -c '^-')
	while true;
	do
		echo "How many files do you think are in the directory?"
		read user_input
		if [ "$user_input" -lt "$correct_answer" ]
		then
			echo "It's more than that!"
		elif [ "$user_input" -gt "$correct_answer" ]
		then
			echo "Try lesser!"
		else
			echo "Wow, you nailed it!"
			echo "Thanks for playing! :)"
		break;
		fi
	done
}
echo "Welcome to this guessing game!!!"
echo "--------------------------------"
game

