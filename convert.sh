#!/bin/bash

fromMarkdown(){
	for file in *.md; do
		echo "	Making to ${file::len-3}.pdf..."
		pandoc -N --variable "geometry=margin=1.1n" --variable mainfont="OpenSans-Regular.ttf" --variable fontsize=13pt --variable version=2.0 ${file} --pdf-engine=xelatex --toc -o ${file::len-3}.pdf
	done
}

fromGroff(){
	for file in *.ms; do
		echo "	Making to ${file::len-3}.pdf..."
		groff -m ${file} -T pdf > ${file::len-3}.pdf
	done
}

echo "	Give format:	"
read format
if [ ${format} = "markdown" ]; then
	fromMarkdown
elif [ ${format} = "groff" ]; then
	fromGroff
else
	echo "	Error: Try again."
fi
