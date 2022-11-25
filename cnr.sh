#! /bin/bash

for file in *.c
do 
	echo "	Compiling ${file}..."
	gcc $file -o ${file%.c}.out
	echo "	${file} Compiled successfully!"
done
