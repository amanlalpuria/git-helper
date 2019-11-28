#!/bin/bash
echo "*************************************************************"
echo ":                        Error Count                        :"
echo "*************************************************************"

#declaring variables
filename='file.xml'
AuxClasspathEntry=0
ClassStats=0
ClassProfile=0
key_to_find='AuxClasspathEntry'

# reading each line
while read line; do


if [[ "$line" == *"$key_to_find"* ]]; then
  AuxClasspathEntry=$((AuxClasspathEntry+1))
fi


#if echo "$line" | grep 'ClassStats'; then
#  ClassStats=$((ClassStats+1))
#fi


#if echo "$line" | grep 'ClassProfile'; then
#  ClassProfile=$((ClassProfile+1))
#fi

done < $filename

# Final Count
echo "Errors in the project :"
echo "1. AuxClasspathEntry - $AuxClasspathEntry"
echo "2. ClassStats        - $ClassStats"
echo "3. ClassProfile      - $ClassProfile"

