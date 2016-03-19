#!/bin/bash

declare -a animals=(Monky Cock Dog Boar Rat Bull Tiger Rabbit Dragon Snake Horse Goat)
declare -a colours=(White Blue Green Red Yellow)

echo "Hello! Enter the year: yyyy"
read user_year
# checking for validation input data
if [ ${#user_year} -ne 4 ]
	
	then
	# in case of error
	echo "Incorrect Data!"

	else
	# in case of true 
	declare -i residue_for_animals=$((user_year%12))
	declare -i residue_for_colours=$((user_year%10/2))
	# indexes of arrays above are equivalent to residue after operations in 17th and 18th lines..
	result1=${animals[residue_for_animals]}
	result2=${colours[residue_for_colours]}

fi
# concatenation of the strings in output
result="$result2 $result1"
echo "$result"
