Automated Backup Bash Script. 

## Steps To Make: </br>
1. Setting up the Backup Script:
   - create a directory for the script and place it there.
   - set up "source directory" and "destination directory".
   - make the script executable: ```chmod u+x script.sh```
2. Create a Group:
   - use the groupadd command to create a new group named "backupusers": ```sudo groupadd backupusers** ```
3. Configure Group Permissions:
   - change the ownership of the script to the new group: ```chown :backupusers script.sh```
   - allow the group to execute the scrip: ```chmod g+x script.sh```
4. Create a User:
   - use the useradd command to create a new user named "backupuser":</br>
   ```sudo useradd -m -G backupusers backupuser```
   - add new user to the group:</br>
   ```sudo usermod -a -G backupusers backupuser```
   - Set a password for the new user: ```sudo passwd backupuser```
5. Schedule the Backup Script to run automatically with a Cron Job:
   - open the crontab for the "backupuser": ```sudo crontab -u backupuser -e```
   - schedule the backup script to run daily at 12:00 PM : ```0 12 * * * /path/to/script.sh```
6. Testing:
   - manually testing the script to ensure it works: ```sudo -u backupuser /path/to/script.sh```
