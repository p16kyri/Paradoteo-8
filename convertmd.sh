#!/bin/bash

for file in *.md
do
	echo "	Making ${file} to ${file%.md}.pdf..."
	pandoc -N --variable "geometry=margin=1.1in" --variable mainfont="OpenSans-Regular.ttf" --variable fontsize=13pt --variable version=2.0 ${file} --pdf-engine=xelatex --toc -o ${file%.md}.pdf
	echo "	Making ${file} to ${file%.md}.docx..."
	pandoc -s ${file} -o ${file%.md}.docx
done
