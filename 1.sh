#!/bin/bash

for i in {1..4}
do 
		read -a aray
		for j in {1..4}
		do 
				echo ${aray[$j]}
		done
done
