#!/bin/bash

dirPath="./TEST_FILES"

make_folders()
{
  mkdir "$dirPath/C Folder"
  mkdir "$dirPath/Text Folder"
}

organize(){
  for file in "./TEST_FILES"/*;do
  
    if [ -f "$file" ]; then
      case "$file" in 
        *.c) mv "$file"  "$dirPath/C Folder" ;;	
        *.txt) mv "$file"  "$dirPath/Text Folder" ;;
      esac
    fi
  done
}

main(){
  make_folders
  organize
}


main
