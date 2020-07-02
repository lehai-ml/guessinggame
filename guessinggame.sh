#!/usr/bin/env bash
#File:guessinggame.sh

function guess {
	echo "Guess: and then press enter "
	read response
}


len=$(ls|wc -l)
while [[ 1 -gt 0 ]]
do
	guess
	if [[ $response -gt $len ]]
	then
		echo "too high; try again"
	elif [[ $response -lt $len ]]
	then
		echo "too low; try again"
	else
		echo "Congratulation you guessed the number"
		break
	fi
done
