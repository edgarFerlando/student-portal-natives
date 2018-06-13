#!/bin/bash

awk '{
	avg = ($2 + $3 + $4)/3
	if (avg >= 50 && avg < 60)
			print  $1,$2,$3,$4, ": C"
	else if (avg >= 60 && avg <= 80)
			print  $1,$2,$3,$4, ": B"
	else if (avg >= 80)
			print $1,$2,$3,$4, ": A"
	else
			print $1,$2,$3,$4, ": Fail"
}'
