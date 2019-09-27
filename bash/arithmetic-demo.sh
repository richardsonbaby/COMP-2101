#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "please enter the first number:" firstnum
read -p "Please enter the second number:" secondnum
sum=$((firstnum + secondnum))
subtraction=$((firstnum - secondnum))
multiply=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
dividend=$((firstnum / secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $subtraction
$firstnum multiplied by $secondnum is $multiply
$firstnum divided by $secondnum gives $dividend with a remainder $remainder
$firstnum raised to the power of the $secondnum gives $power
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
