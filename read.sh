#!/bin/bash

#declaring variables
filename='file.xml'
AuxClasspathEntry=0
ClassStats=0
ClassProfile=0

# reading each line
while read line; do

# if error is of type AuxClasspathEntry
#if [ $line ?? 'AuxClasspathEntry' ]; then
#  echo "It's there!"
#  AuxClasspathEntry=$((AuxClasspathEntry+1))
#fi

if echo "$line" | grep 'AuxClasspathEntry'; then
  echo "It's there!"
  AuxClasspathEntry=$((AuxClasspathEntry+1))
fi


if echo "$line" | grep 'AuxClasspathEntry'; then
  echo "It's there!"
  AuxClasspathEntry=$((AuxClasspathEntry+1))
fi


if echo "$line" | grep 'AuxClasspathEntry'; then
  echo "It's there!"
  AuxClasspathEntry=$((AuxClasspathEntry+1))
fi

done < $filename

# Final Count
echo AuxClasspathEntry
