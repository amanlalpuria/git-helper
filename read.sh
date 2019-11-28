#!/bin/bash
echo "*************************************************************"
echo ":                        Error Count                        :"
echo "*************************************************************"

#declaring variables
filename='file.xml'
AuxClasspathEntry=0
ClassStats=0
ClassProfile=0
bigError='AuxClasspathEntry'
mediumError='ClassStats'
smallError='ClassProfile'

# reading each line
while read line; do


if [[ "$line" == *"$bigError"* ]]; then
  echo "$line"
  AuxClasspathEntry=$((AuxClasspathEntry+1))
fi


if [[ "$line" == *"$mediumError"* ]]; then
 echo "$line"
 ClassStats=$((ClassStats+1))
fi


if [[ "$line" == *"$smallError"* ]]; then
 echo "$line"
 ClassProfile=$((ClassProfile+1))
fi

done < $filename

# Final Count
echo "Errors in the project :"
echo "1. AuxClasspathEntry - $AuxClasspathEntry"
echo "2. ClassStats        - $ClassStats"
echo "3. ClassProfile      - $ClassProfile"

echo "*************************************************************"