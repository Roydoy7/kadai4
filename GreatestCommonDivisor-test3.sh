#!/bin/bash

reg='^[0-9]+$'
result=$(./GreatestCommonDivisor.sh )
if [[ $result =~ $reg ]]; then
	echo "Ok"
	exit 0
else
	echo "Error"
	exit 1
fi

