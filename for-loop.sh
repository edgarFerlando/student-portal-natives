#!/bin/bash
for n in {1..100}
do
		out=$(( $n % 2))
		if [ $out != 0 ]
		then
				echo "$n is odd number"
		fi
done
