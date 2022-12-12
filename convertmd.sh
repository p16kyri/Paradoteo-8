#!/bin/bash

for file in *md; do
	echo "	Making ${file} to ${file::len-3}.pdf..."
	pandoc -N --variable "geometry=margin=1.1in" --variable mainfont="OpenSans-Regular.ttf" --variable fontsize=13pt --variable variable version=2.0 ${file} --pdf-engine=xelatex --toc -o ${file::len-3}.pdf
	echo "	Making ${file} to ${file::len-3}.docx..."
	pandoc -s ${file} -o ${file::len-3}.docx
done
