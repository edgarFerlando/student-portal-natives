#!/bin/bash

read a
read b
read c

if [ $a ==	$b ]  && [ $b == $c ]; then
		echo "EQUILATERAL"
elif [ $a -lt $b ] && [$b -lt $c ]; then
		echo "SCALENE"
else
		echo "ISOSCELES"
fi
