#!/bin/bash
echo "*************************************************************"
echo ":                        Error Count                        :"
echo "*************************************************************"

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


if echo "$line" | grep 'ClassStats'; then
  echo "It's there!"
  ClassStats=$((ClassStats+1))
fi


if echo "$line" | grep 'ClassProfile'; then
  echo "It's there!"
  ClassProfile=$((ClassProfile+1))
fi

done < $filename

# Final Count
echo "Errors in the project :"
echo "1. AuxClasspathEntry - " > $AuxClasspathEntry
echo "2. ClassStats        - " > $ClassStats
echo "3. ClassProfile      - " > $ClassProfile

