#! /bin/bash

for file in *.ms
do
	echo "	Compiling ${file} -> ${file::len-3}.ps..."
	groff -ms ${file} > ${file::len-3}.ps
	echo "	Compiling ${file} -> ${file::len-3}.pdf..."
	groff -ms ${file} -T pdf > ${file::len-3}.pdf
done
echo "	Done!"
