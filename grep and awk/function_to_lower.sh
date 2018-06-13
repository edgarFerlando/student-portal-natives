#!/bin/bash

function to_lower ()
{
	input=$1
	output=$(tr [AZ] [az] <<< "$input" )
	return $output
}

while true
do

		read -p "enter c to continue or q to quit" 
		$REPLY=$( to_lower  "$REPLY" )
		if [ $REPLY == "q" || "Q" ] ; then
				break
		fi
done
echo "finisheed"
