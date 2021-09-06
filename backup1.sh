#!/bin/bash

files=$(find -type f -name "backup*" ! -name ".sh")

if [ "$files" = "" ]
then
	echo "There is no existing backup. The first will be created.\n\n"
	tar -czvf backup1.tar.gz $@
else
	i=0
	for param in $(find -type f -name "backup*")
	do
		if [ ${param:8:1} != "." ]
		then
			echo ${param:8:1}
			position=${param:8:1}
			break
		fi
	done
	tar -czvf backup$((position+1)).tar.gz $@
	echo "New backup created."
fi
