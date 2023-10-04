#!/bin/bash

CSV_FILE="/mnt/c/users/xilan/documents/Github/shell-exe/Job09/Shell_Userlist.csv"

while IFP=, read -r username password userType
do
	useradd -m "$username"

	if [ "$userType" == "Admin" ]
	then
		usermod -aG sudo "$username"
	fi

	echo "$username:$password" | chpasswd

done < "$CSV_FILE"
