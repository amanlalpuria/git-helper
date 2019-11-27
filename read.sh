#!/bin/bash

#Type of errors variables
AuxClasspathEntry=0
ClassStats=0
ClassProfile=0

filename = "file.xml"

#open report file

while read line
do
    name=$line
    echo "Text read from file - $name"
done < $filename