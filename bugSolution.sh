#!/bin/bash

# This script is a corrected version that correctly handles files and directories

DIR="/tmp/testdir"

# Create a dummy directory and files
mkdir -p "$DIR"
touch "$DIR/file1.txt" "$DIR/file2.txt" "$DIR/subdir"
touch "$DIR/subdir/file3.txt"

# Correctly process only files using find -type f
find "$DIR" -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # Simulate some processing, this will only operate on regular files
 done

# Remove the dummy directory and files
rm -rf "$DIR"