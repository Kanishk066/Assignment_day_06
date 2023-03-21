#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 n"
  exit 1
fi

n=$1
power=1
echo "Powers of 2 less than or equal to 2^$n:"
echo "2^0 = $power"

for (( i=1; i<=$n; i++ )); do
  power=$((power * 2))
  echo "2^$i = $power"
done
