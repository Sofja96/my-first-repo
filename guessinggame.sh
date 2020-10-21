#!/usr/bin/env bash
# File: guessinggame.sh

countfile=$(ls -l | grep "^-" | wc -l)

function countfiles {
	
	while [[ $answer -ne $countfile ]]
do
	read -p "How many files are in the current directory? Make a guess: " answer
	
				if [[  $answer =~ [A-Za-z] ]] 
			then echo "You entered non-numeric, try again"
		
		elif [[ $answer -lt $countfile ]]
			then echo "The guess was too low, try again"
	
	elif [[ answer -gt countfile ]]
		then echo "The guess was too high, try again"
	
	else echo "The guess is correct, Congratulations!"
	
	fi
done

}
countfile
