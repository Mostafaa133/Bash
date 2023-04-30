#!/bin/bash

#####script to be executed every 1 min to monitor system load, and add it to file /var/log/system-load. The script must be run using root.

# Check if script is being run as root

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root." >&2
  exit 1
fi

# Log system load to file every minute

while true; do
  
  # Get the current date and time

  timestamp=$(date +"%Y-%m-%d %H:%M:%S")

  # Get the system load using the uptime command

  load=$(uptime)

  # Append the system load and timestamp to the log file

  echo "[$timestamp] $load" >> /var/log/system-load

  # Wait for 60 seconds before logging again
  
  sleep 60
done