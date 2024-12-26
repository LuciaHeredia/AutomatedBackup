#!/bin/bash

##### Getting Variables Data
read -p "Enter path of folder to backup: " source_dir
read -p "Enter path of destination bakup: " destination_dir
backup_file_name="backup_$(date '+%Y-%m-%d_%H:%M:%S')"

# checking path are for directories
if [ ! -d $source_dir ] || [ ! -d $destination_dir ]; then
  echo "ERROR: Source and destination should be directories."
  exit 1
fi

##### Compress source directory with tar:
echo "Backing up $source_dir to $destination_dir/$backup_file_name"
tar -czf "$destination_dir/$backup_file_name.tar.gz" "$source_dir"
# check backup success
if [ ! -f "$destination_dir/$backup_file_name.tar.gz" ]; then
	echo "Error backing up."
else
	echo "Back up finished!"
	ls -lh $destination_dir # list of files in destination backup
fi

