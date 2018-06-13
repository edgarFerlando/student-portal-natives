#!/bin/bash


####################################################
awk '{ if ($1 -gt 80 ) print "nilai A";
		else if ($2 -gt 60 ) print "nilai B";
		else if ($3 -gt 50 && -lt 60 ) print "nilai C"
		else print "bosssssssok";
}' student2.txt
