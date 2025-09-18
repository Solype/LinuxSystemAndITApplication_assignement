#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
	echo "Invalid input" >&2
	exit 1
fi

if [ $1 -le 0 ] || [ $2 -le 0 ]; then
	echo "Input must be greater than 0"
	exit 1
fi

number1=$(($1 + 1))
number2=$(($2 + 1))


i=1

while [ $i -lt $number1 ]; do
	j=1
	while [ $j -lt $number2 ]; do
		result=$(($j * $i))
	   str="${i}*${j}=${result}";

		if [ $j -eq $2 ]; then
			printf "%s" $str
		else
			printf "%-8s" $str ;
		fi
		j=$(($j + 1))
	done
	printf "\n"
	i=$(($i + 1))
done
