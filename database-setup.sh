#!/bin/bash

# Get IP
LOCALIP=$(ip a | grep eth0 | grep inet | awk '{print $2}')
echo "Your IP is: ${LOCALIP}"

# Check for and if not existant, create data directory
mkdir -p data

echo "Please start the stack with docker-compose up -d, wait until active and ./data/ is populated. Then, run docker-compose down, and continue to add the above ip to your pg_fba.conf file."
