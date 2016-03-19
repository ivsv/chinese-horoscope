#!/bin/bash

declare -a animals=(Monky Cock Dog Boar Rat Bull Tiger Rabbit Dragon Snake Horse Goat)
declare -a colours=(White Blue Green Red Yellow)

echo "Hello! Enter the year: yyyy"
read user_year
# checking for validation input data
if [ ${#user_year} -ne 4 ]
	
then
	# in case of false
	echo "Incorrect Data!"

else
	# in case of true 
	declare -i residue_for_animals=$((user_year%12))
	declare -i residue_for_colours=$((user_year%10/2))

	case $residue_for_animals in          # residues below:
		0 ) result1=${animals[0]};;   #0
		1 ) result1=${animals[1]};;   #1
		2 ) result1=${animals[2]};;   #2
		3 ) result1=${animals[3]};;   #3
		4 ) result1=${animals[4]};;   #4
		5 ) result1=${animals[5]};;   #5
		6 ) result1=${animals[6]};;   #6
		7 ) result1=${animals[7]};;   #7
		8 ) result1=${animals[8]};;   #8
		9 ) result1=${animals[9]};;   #9
		10 ) result1=${animals[10]};; #10
		11 ) result1=${animals[11]};; #11
	esac

	case $residue_for_colours in
		0 ) result2=${colours[0]};;   #0
		1 ) result2=${colours[1]};;   #1
		2 ) result2=${colours[2]};;   #2
		3 ) result2=${colours[3]};;   #3
		4 ) result2=${colours[4]};;   #4
	esac

fi
# concatenation of the strings in output
result="$result2 $result1"
echo "$result"
