#!/bin/sh
#create a new user and user group to run Aspen Discovery
adduser aspen
#Add all existing users to the group
for ID in $(cat /etc/passwd | grep /home | cut -d ':' -f1); do (usermod -a -G aspen $ID);done

#create an aspen_apache group as well for files that need to be readable (and writable) by apache
groupadd aspen_apache
#Add apache to the aspen_apache group
usermod -a -G aspen_apache apache

#Change file permissions so /usr/local/aspen-discovery is owned by the aspen user
chown -R aspen:aspen /usr/local/aspen-discovery
#Now change files back for those that need apache to own them
chown -R apache:aspen_apache /usr/local/aspen-discovery/tmp
chown -R apache:aspen_apache /usr/local/aspen-discovery/code/web
chown -R apache:aspen_apache /usr/local/aspen-discovery/sites

#Change file permissions so /data is owned by the aspen user