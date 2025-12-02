#!/bin/bash


dirName="TEST_FILES"


#Make Directory if it doesn't exist

create_dir(){
   if [ ! -d "$dirName" ]; then
     echo "Making Directory $dirName"
     mkdir "$dirName"
   else
     echo "Directory Already Exists"
   fi
}


#Make 3 text AND 3 .c files in new Directory

make_files(){
 
   for (( count=1; count<=3;count++ )); do  
   # (()) allows +, -, *, /, &, |, ^, etc



     fullPath="./$dirName/mytext$count.txt"
     if [ -f "$fullPath" ]; then
	echo "mytext$count.txt Already Exists"
     else 
       echo "making mytext$count.txt in directory $dirName"
       touch $fullPath 

       echo -e "This is text in file $count\n:)" > $fullPath
       # > Allows output of command to redirect to our file
     fi 


     codePath="./$dirName/code$count.c"
      
     if [ -f "$codePath" ]; then
	echo "code$count.c Already Exists"
     else 
       echo "making code$count.c in directory $dirName"
       touch $codePath

       echo -e "#include <stdio.h>\n\nint main(){\nprintf("Hello from file $count");\nreturn 0;\n}\n" > $codePath 
     fi  
  done
}

	
main(){
    create_dir
    make_files
}

main
#call function main()
