#!/bin/bash

read i

if [["$i" == "Y" || "$i" == "y"]]
then
		echo "YES"
elif [["$i" == "N" || "$i" ==  "n"]] 
then
		echo "NO"
fi
