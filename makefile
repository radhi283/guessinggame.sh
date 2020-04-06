README.md:
	echo "## Guessing Game" > README.md
	echo "Guess the number of files in the current \
	directory." >> README.md
	echo -n "* *makefile* was executed on: " >> README.md
	date >> README.md
	echo >> README.md
	echo -n "* The number of lines of code contained in \
	*guessinggame.sh* is " >> README.md

	wc -l < guessinggame.sh >> README.md
