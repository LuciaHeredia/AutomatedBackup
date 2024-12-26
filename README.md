Automated Backup Bash Script. 

## Steps To Make: </br>
1. Setting up the Backup Script:
   - create a directory for the script and place it there.
   - set up "source directory" and "destination directory".
   - make the script executable:</br>
     **chmod u+x script.sh**
2. Create a Group:
   - use the groupadd command to create a new group named "backupusers":</br>
   **sudo groupadd backupusers** </br>
3. Configure Group Permissions:
   - change the ownership of the script to the new group:</br>
   **chown :backupusers script.sh** </br>
   - allow the group to execute the scrip:</br>
   **chmod g+x script.sh** </br>
4. Create a User:
   - use the useradd command to create a new user named "backupuser":</br>
   **sudo useradd -m -G backupusers backupuser**
   - add new user to the group:</br>
   **sudo usermod -a -G backupusers backupuser**
   - Set a password for the new user:</br>
   **sudo passwd backupuser**
5. Schedule the Backup Script to run automatically with a Cron Job:
   - open the crontab for the "backupuser":</br>
   **sudo crontab -u backupuser -e**
   - schedule the backup script to run daily at 12:00 PM :</br>
   **0 12 * * * /path/to/script.sh**
