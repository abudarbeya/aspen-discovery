#!/bin/sh
### BEGIN INIT INFO
# Provides: aspen_solr
# Required-Start: mysqld httpd
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Description: Aspen Discovery Solr init script.
#   Change {servername} to your server name.
#   Ensure the required-start daemons above match the daemon names on your server. use chkconfig --list
#   Move the file to /etc/init.d/
#   Rename as aspen_solr.sh, make executable.
#   Add to startup sequence with "chkconfig aspen_solr on"
### END INIT INFO

# Solr Engine for {servername} instance
cd /usr/local/aspen-discovery/sites/basinlibraries.production
./basinlibraries.production.sh $*
# this script is passed a "start" or "stop" argument which is passed on to the solr script
