#!/bin/bash
# Read the second line from the file
current_tp=$(sed -n '2p' ./current_tp.txt)

# Generate the string based on the value of second_line
result=""
for ((i=1; i<=$current_tp; i++)); do
  result+="exercises/practice/tp-$i "
done

pytest $result