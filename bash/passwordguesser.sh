#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

#myString="TestString"
#referenceString="password"

#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."

myPasswd="TestString"

i=3
while [ $i -gt 0 ]
do
  echo "Enter password:"
  read userPasswd
  if [ $myPasswd = $userPasswd ]
  then
    echo "You guessed the password right"
    break
  else
    echo "Incorrect Password"
  fi
  i=$[$i-1]
  if [ $i = 0 ]
  then
    echo "The password eludes you"
  fi
done
