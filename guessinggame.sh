#!/usr/bin/env bash
# this file is used to guess the number of files in the current directory

function comparison {
	if [[ $1 -ne $2 ]]
        then
                echo "The answer is not correct!"
                if [[ $1 -lt $2 ]]
                then
                        echo "Try again!!"
                        echo "Your guess was too low."
                else
                        echo "Try again!!"
                        echo "Your guess was too high."
                fi
        else
                echo  "Correct! Bravo!!"
        fi
}


n_list=$(expr $(ls -a | wc -l) - $(ls -d | wc -l) - $(ls -a | grep "^\." | wc -l) + 1)
a=-1
while [[ $a -ne $n_list ]]
do
	echo -n "Guess how many files are in the current directory: "
	read a
	if [[ -n ${a//[0-9]/} ]]
	then
		echo "The input contains non-digits characters, please input numbers."
		a=-1
	else
		comparison a n_list
	fi
done

