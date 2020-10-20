#!/usr/bin/env bash
# File: guessinggame.sh
countfile=$(ls -l | grep "^-" | wc -l)
function countfiles {
	while (( answer != countfile ))
	do
		read -p "How many files are in the current directory? Make a guess: " answer
				if (( answer < countfile ))
			then echo "The guess was too low, try again"
				elif (( answer > countfile ))
				then echo "The guess was too high, try again"
					else echo "The guess is correct, Congratulations!"
			fi
				done
}
countfiles
