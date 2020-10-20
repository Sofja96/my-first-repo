README.md: guessinggame.sh 
	echo "#Guessinggame" > README.md
	echo "The time run make:" $(shell date) >> README.md
	echo "This file contains the following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
