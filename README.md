Automated Backup Bash Script. 

## Steps To Make Before Running Script: </br>
1. Create the Backup Script:
   - create a directory for the script and for the backup.
   - in the script directory, create the script and make it executable:</br>
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
5. Schedule the Backup Script with Cron:
   .......
