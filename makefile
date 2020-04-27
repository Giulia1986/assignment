all:	README.md

clean:
	rm README.md

README.md: guessinggame.sh
	touch README.md;
	C=$$(stat -c '%z' README.md); \
	N=$$(cat guessinggame.sh | wc -l); \
	echo 'The title of the project is "Assignment".' > README.md; \
	echo 'make was run at ' $$C'.'   >> README.md; \
	echo 'guessinggame.sh contains ' $$N ' lines of code.' >> README.md
