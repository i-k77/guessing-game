
.PHONY: all clean FORCE

all: README.md

README.md: guessinggame.sh FORCE
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Information" >> README.md
	echo "" >> README.md
	echo "- Date and time: $$(date)" >> README.md
	echo "- Number of lines of code: $$(wc -l < guessinggame.sh)" >> README.md

FORCE:

clean:
	rm -f README.md
