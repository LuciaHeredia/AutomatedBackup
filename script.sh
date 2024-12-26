#!/bin/bash

##### Setting up Directories
source_dir="/source/directory/path" # change
destination_dir="/destination/directory/path" # change
# checking path are for directories
if [ ! -d $source_dir ] || [ ! -d $destination_dir ]; then
  echo "ERROR Backing Up: Source and destination should be directories."
  exit 1
fi

##### Compress source directory with tar:
backup_file_name="backup_$(date '+%Y-%m-%d_%H:%M:%S')"
echo "Backing up $source_dir to $destination_dir/$backup_file_name"
tar -czf "$destination_dir/$backup_file_name.tar.gz" "$source_dir"
# check backup success
if [ ! -f "$destination_dir/$backup_file_name.tar.gz" ]; then
	echo "ERROR Backing Up."
else
	echo "Back Up Finished!"
	ls -lh $destination_dir # list of files in destination backup
fi

