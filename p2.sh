#!/bin/bash

if [ $# -ne 2 ]; then
	echo "data file or output file not found"
else
	input=$1
	output=$2
	> "$output"
	if [ ! -f "$input" ]; then
		echo "<$input> not found"
	else
		awk -v OFS=" : " -v output_file="$output" 'BEGIN {FS="[;,]"}{for (i=1; i<=NF; i++) {sum[i] += $i}}END {for (i=1; i<=length(sum); i++) {print "Col " i, sum[i] > output_file}}' "$input"
	fi
fi
