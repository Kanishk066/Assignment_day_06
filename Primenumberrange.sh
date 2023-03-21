#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 start end"
  exit 1
fi

start=$1
end=$2

echo "Prime numbers between $start and $end:"

for (( i=$start; i<=$end; i++ )); do
  isPrime=true

  for (( j=2; j<$i; j++ )); do
    if [[ $(($i % $j)) -eq 0 ]]; then
      isPrime=false
      break
    fi
  done

  if $isPrime; then
    echo $i
  fi
done
