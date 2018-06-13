#!/bin/bash
read n

for (( i=1; i<=n; i++))
do
		read x
		((sum+=$x))
done
printf "%.3f" $(echo $sum/$n | bc -l)
