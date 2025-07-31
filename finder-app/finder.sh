#!/bin/bash
# finder script for assignment 1 
# Author: sumitbounthiyal

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required. Usage: finder.sh <filesdir> <searchstr>"
    exit 1
fi

FILESDIR=$1
SEARCHSTR=$2

# Check if filesdir is a valid directory
if [ ! -d "$FILESDIR" ]; then
    echo "Error: Directory '$FILESDIR' does not exist."
    exit 1
fi

# Count number of files
FILE_COUNT=$(find "$FILESDIR" -type f | wc -l)

# Count number of matching lines
MATCHING_STR=$(grep -r "$SEARCHSTR" "$FILESDIR" 2>/dev/null | wc -l)

# Print result
echo "The number of files are $FILE_COUNT and the number of matching lines are $MATCHING_STR"

exit 0
