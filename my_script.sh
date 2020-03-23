#!/bin/bash

./bitcointool -command genkey
file="/home/jdom/libbtc/privkey.txt"
while IFS= read line
do 
 	./bitcointool -c pubfrompriv -p $line >> pubkey.txt
	var=$(./bitcointool -c pubfromprriv -p $line)
	eval $var
	echo $var
done < "$file" 

