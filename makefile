all: README.md

README.md:guessinggame.sh
	touch README.md
	echo "The guessing game" >> README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md


clean:
	rm README.md
