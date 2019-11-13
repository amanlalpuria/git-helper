#!/bin/bash
echo "This is pre-push check"

# command to build the project. and count the error 
# grep to search need to be used
number_of_errors = 2

if [ $number_of_errors != '0' ]; then
  echo "$number_of_errors tests have failed. You cannot commit until the project build successfully."
  exit 1
fi