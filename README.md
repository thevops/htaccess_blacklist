# htaccess_blacklist
Add blacklist IP in .htaccess to prevent spammers, hackers.

**Blacklist from: https://sblam.com/blacklisthtaccess.txt**

# Use:
- add to cron:
```
0 6 * * * cd /website/directory/public_html; /bin/bash update_htaccess_blacklist.sh ".htaccess" > /dev/null 2>&1
```
