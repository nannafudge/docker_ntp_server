#!/bin/bash

# This script checks to see if there is already an existing chrony PID file
# and deletes it if there is (usually is in the case of an ungraceful shutdown).

PID_FILE_PATH="/var/run/chronyd.pid"

if [[ -f $PID_FILE_PATH ]]; then
  rm $PID_FILE_PATH
fi

/usr/sbin/chronyd "$@"
