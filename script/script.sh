#!/bin/bash

##### Getting Variables Data #####
read -p "Enter path to directory of backup script: " source_dir
read -p "Enter path to directory of backup file: " destination_dir
backup_file_name="backup_$(date '+%Y-%m-%d_%H:%M:%S').tar.gz"

# checking path are for directories
if [ ! -d $source_dir -o ! -d $destination_dir ]; then
  echo "ERROR: Source and destination should be directories."
  exit 1
fi


