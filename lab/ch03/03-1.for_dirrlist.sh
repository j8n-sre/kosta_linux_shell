#!/bin/bash
#Directory Listing test
read -p "Input Directory Path : " path
if [ $path = '/' ]; then
	for dir in $(echo /*); do
		[ -d $dir ] || continue
		dir_list+="$dir "
	done
else
	for dir in $path/*; do
		[ -d $dir ] || continue
		dir_list+="$dir "
	done
fi
for list in $dir_list; do
	echo $list
done

#echo /* or echo *