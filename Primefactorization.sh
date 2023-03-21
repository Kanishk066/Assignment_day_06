#!/bin/bash

echo "Enter a number:"
read n

echo "The prime factors of $n are:"

# Find prime factors of N
i=2
while [ $i -le $n ]
do
    if [ $((n%i)) -eq 0 ]
    then
        echo $i
        n=$((n/i))
    else
        i=$((i+1))
    fi
done
