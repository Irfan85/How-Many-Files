all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Bash file number guessing game\n" > README.md
	echo -n "Makefile execution time: **">> README.md
	date | tr -d "\n" >> README.md
	echo "**\n" >> README.md
	echo -n "Number of lines in guessinggame.sh: **" >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 | tr -d "\n" >> README.md
	echo "**" >> README.md
