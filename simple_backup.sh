#!/bin/bash
# ----------------------------------------------------------
# Script name : simple_backup.sh
# Author : Merdtheavatar
# Date ; August 25, 2025
# Description: Script to back up a MySQL/PostgreSQL database
# License: MIT
# ----------------------------------------------------------

# Enter credentials
read -p "Enter your database user : " db_user
# read -s -p "Enter your database password : " db_password

# Set space after credentials
echo " "

# Enter database type 
read -p "Enter database type (mysql/prostgres) : " db_type

# Enter database name
read -p "Enter database name : " db_name

# Create database directory if not exist
mkdir -p ~/db_backups

# Generate database file with database name and date
db_file=~/db_backups/${db_name}_$(date +%F_%H-%M).sql

if [[ "$db_type" == "mysql" ]]; then
	# Make database dump
	mysqldump -u "$db_user" "$db_name" > $db_file
	if [[ $? -eq 0 ]]; then
		echo "Backup successful ! : $db_file"
	else
		echo "An error has occurred"
	fi
elif
	[[ "$db_type" == "postgres" || "$db_type" == "postgresql" ]]; then
		
	read -s -p "Enter database password: " pg_password

	PGPASSWORD="$pg_password" pg_dump -U "$db_user" -h localhost "$db_name" > "$db_file"
    	if [[ $? -eq 0 ]]; then
        	echo "Backup successful ! : $db_file"
    	else
        	echo "An error has occurred"
    	fi
else
	echo "unsupported database"
fi
