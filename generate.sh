#!/bin/bash

latin="ABCDEFGHIJKLMNOPQRSTUVWXYZ";

da="ÆØÅ";
se="ÅÄÖ";
de="ÄÖÜẞ";
es="Ñ";
fr="ŒÆ";


for alphabet in latin da se de es fr;
do 
	mkdir -p $alphabet;
	for letter in $(echo "${!alphabet}" | sed -e 's/\(.\)/\1\n/g');
	do
		echo "Generating $alphabet/$letter";
		openscad letter.scad -D "letter=\"$letter\"" -o $alphabet/$letter.stl;
	done;
done;


