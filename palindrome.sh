#!/bin/bash

is_palindrome() {
  num=$1
  rev=0
  temp=$num
  
  while [ $num -gt 0 ]
  do
    rem=$(( $num % 10 ))
    rev=$(( $rev * 10 + $rem ))
    num=$(( $num / 10 ))
  done
  
  if [ $temp -eq $rev ]
  then
    return 0
  else
    return 1
  fi
}

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

is_palindrome $num1
if [ $? -eq 0 ]
then
  echo "$num1 is a palindrome."
else
  echo "$num1 is not a palindrome."
fi

is_palindrome $num2
if [ $? -eq 0 ]
then
  echo "$num2 is a palindrome."
else
  echo "$num2 is not a palindrome."
fi

if [ $? -eq 0 ]
then
  echo "Both numbers are palindromes."
else
  echo "Both numbers are not palindromes."
fi
