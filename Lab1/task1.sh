#!/bin/bash
########## script for making operation to floating point numbers
##Parameters
##	1st parameter: 1st float number
##	2nd parameter: 2nd float number

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [[ ! "$num1" =~ ^[+-]?[0-9]*\.?[0-9]+([eE][+-]?[0-9]+)?$ ]] || [[ ! "$num2" =~ ^[+-]?[0-9]*\.?[0-9]+([eE][+-]?[0-9]+)?$ ]]; then
  echo "Error: Invalid input values. Please enter two valid floating point numbers."
  exit 1
fi

echo "Arithmetic operations on $num1 and $num2:"
echo "--------------------------------------"

# Addition
result=$(echo "$num1 + $num2" | bc)
echo "Addition: $result"

exit 0