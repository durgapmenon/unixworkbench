#!/usr/bin/env bash

echo "[Welcome to the Guessing Game]"

function ask {
	echo "Enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulations on the correct answer. PFB is the list of files:"
echo "---" && ls -1