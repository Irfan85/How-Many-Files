all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# How Many Files?\n" > README.md
	echo -n "Last makefile execution time: **">> README.md
	date | tr -d "\n" >> README.md
	echo "**\n" >> README.md
	echo -n "Number of lines in guessinggame.sh: **" >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 | tr -d "\n" >> README.md
	echo "**" >> README.md
