#!/bin/bash

while true
do
		printf "Type . To finish =>"
		read line
		case "$line" in 
				.) echo "right. ."
						break;;
				*) echo "$line >> $message" 
						break;;
		esac
done
