#!/bin/bash

dirPath="./TEST_FILES"


for file in "$dirPath"/*; do
  
  if [ -f "$file" ]; then
    echo "$file Contents:"
    cat "$file"
    echo
  fi

done
