#!/bin/bash
numA=$1
numB=$2

reg='^[0-9]+$'
if ! [[ $1 =~ $reg ]] || ! [[ $2 =~ $reg ]]; then 
	echo "Parameter is not set."; exit 1
fi


while [ $numA != 0 ] && [ $numB != 0 ]
do
	if [ $numA -gt $numB ]; then
		let numA=numA%numB
	else
		let numB=numB%numA
	fi
done

if [ $numA = 0 ]; then
	echo $numB
else
	echo $numA
fi

exit 0
