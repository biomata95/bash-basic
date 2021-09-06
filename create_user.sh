#!/bin/bash

create_user=$1

for entry in `cut -d: -f1 /etc/passwd`
do
	if [ "$entry" = "$create_user" ]
	then
		echo "User already existing in the system."
		exit 
	fi
done

useradd "$create_user"
echo "Successfully registered user."

for entry in `cut -d: -f1 /etc/passwd`
do
	if [ "$entry" = "$create_user" ]
	then
		echo "$entry <- HERE IS THE NEW USER"
	else
		echo "$entry"
	fi
done