#!/bin/bash

echo "Flipping coin"

# Variables to keep track of number of heads and tails
heads=0
tails=0

# Loop until either heads or tails wins 11 times
while [ $heads -lt 11 ] && [ $tails -lt 11 ]
do
    # Randomly generate either 0 (heads) or 1 (tails)
    flip=$((RANDOM%2))

    if [ $flip -eq 0 ]
    then
        echo "Heads!"
        heads=$((heads+1))
    else
        echo "Tails!"
        tails=$((tails+1))
    fi
done

# Print the winner
if [ $heads -eq 11 ]
then
    echo "Heads wins!"
else
    echo "Tails wins!"
fi

