all:	README.md

clean:
	rm README.md

README.md: guessinggame.sh
	touch README.md;
	C=$$(stat -c '%z' README.md); \
	N=$$(cat guessinggame.sh | wc -l); \
	echo 'The title of the project is "guessinggame.sh".\n' > README.md; \
	echo 'make was run at ' $$C'.\n'   >> README.md; \
	echo 'guessinggame.sh contains ' $$N ' lines of code.' >> README.md
