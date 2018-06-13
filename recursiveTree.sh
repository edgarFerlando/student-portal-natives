#!/bin/bash
declare -A matrix
for ((i=1; i<=63;i++))
do
		for((j=1;j<=100;j++))
		do
				matrix[$i,$j]='_'
		done
done

# end of the first line
i=0
declare -A aray
function update_matrix {
    local a1 a2 a3 a4 a5 a6 b1 b2 b3 b4 b5 b6 b7 b8 b9
	    a1=$1
		a2=$(echo $2-1|bc)
		a1=$(echo $a1-1|bc)
		a3=$(echo 2^$a2|bc)
		a4=$(echo 2*$a3|bc)
		a5=$(echo $a3/2|bc)
		a6=$3
		for ((b1=$a3;b1<$a4;b1++))
		do
				if [ "$(echo $b1-$a3|bc)" -lt "$a5" ]
				then
						b2=$(echo 18+$a6-$(echo $a5-$(echo $b1-$a3|bc)|bc)|bc)
						b3=$(echo 18+$a6+$(echo $a5-$(echo $b1-$a3|bc)|bc)|bc)
						matrix[$b1,$b2]=1
						matrix[$b1,$b3]=1
				else
						matrix[$b1,$(echo 18+$a6|bc)]=1
				fi
done

if [ $a1 -ge 1 ]
then
		b4=$a1
		b5=$a2
		b6=$(echo $a6-$a5|bc)
		b7=$(echo $a6+$a5|bc)
		b8=$a1
		b9=$a2

		update_matrix $b4 $b5 $b6

		update_matrix $b8 $b9 $b7
		t=4
else
		s=2
fi
		}
read iteration
if [ $iteration -ge 1 ]
then
		update_matrix $iteration 6 32
fi
for ((i=1; i<63; i++)) do
		for ((j=1;j<=100;j++)) do
				printf '%s' "${matrix[$i,$j]}"
		done
		echo ""
done
