#!/usr/bin/env bash
# File: guessinggame.sh

countfile=$(ls -l | grep "^-" | wc -l)
echo "How many files are in the current directory? Make a guess: " 


function countfiles {
	
	while [[ read ]]
	
do
	read answer

	if [[  $answer =~ [A-Za-z] ]] || [[ $answer =~ [[:punct:]] ]]
			then echo "You entered non-numeric, try again"
		
	elif [[ $answer -lt $countfile ]]
			then echo "The guess was too low, try again"
	
	elif [[ answer -gt countfile ]]
		    then echo "The guess was too high, try again"
	
		 else
	 		echo "The guess is correct, Congratulations!"
	exit
	fi
done

}
countfiles