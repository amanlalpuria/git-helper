#!/bin/bash
echo "This is pre-push check"

# command to build the project. and count the error 
# grep to search the ERROR
number_of_errors = 'mvn -o clean install | grep -c [ERROR]'

if [ $number_of_errors != '0' ]; then
  echo "$number_of_errors files have error. You cannot commit until the project build successfully."
  exit 1
fi
