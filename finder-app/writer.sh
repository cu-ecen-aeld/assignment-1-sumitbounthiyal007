#!/bin/bash
# finder script for assignment 1 
# Author: sumitbounthiyal

# Check if both arguments are provided
if [ $# -ne 2 ];
then
    echo "Error: Two arguments required. Usage: writer.sh <writefile> <writestr>"
    exit 1
fi

WRITEFILE=$1
WRITESTR=$2

# Extract directory from the file path
WRITEDIR=$(dirname "$WRITEFILE")

# Create the directory path if it doesn't exist
mkdir -p "$WRITEDIR"
if [ $? -ne 0 ]; 
then
    echo "Error: Could not create directory path '$WRITEDIR'"
    exit 1
fi

# Write the string to the file (overwrite mode)
echo "$WRITESTR" > "$WRITEFILE"
if [ $? -ne 0 ]; 
then
    echo "Error: Could not write to file '$WRITEFILE'"
    exit 1
fi

exit 0
