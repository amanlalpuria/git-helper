#!/bin/bash

# command to build the project. and count the error 
echo "This is pre-push check"
number_of_errors = 2

if [ $number_of_errors != '0' ]; then
  echo "$num_of_failures tests have failed. You cannot commit until all project build successfully."
  exit 1
fi