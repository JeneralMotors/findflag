#!/bin/bash

# Function to search for the file and display the result
search_file() {
  result=$(find / -name "$1" 2>/dev/null)
  echo "Result for $1:"
  echo "$result"
  echo "----------------------------------------"
}

# Execute the functions in parallel
search_file "flag.txt" &
search_file "flag" &
search_file "user.txt" &
search_file "root.txt" &

# Wait for all parallel searches to finish
wait
