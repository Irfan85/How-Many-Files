all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#Bash file number guessing game#" > README.md
	echo -n "Makefile execution time: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 >> README.md
