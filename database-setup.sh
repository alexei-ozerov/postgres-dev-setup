#!/bin/bash

# Get IP
LOCALIP=$(ip a | grep eth0 | grep inet | awk '{print $2}')
echo "Your IP is: ${LOCALIP}"

# Check for and if not existant, create data directory
mkdir -p data

# Verbal instructions for next steps while I decide on the best way to automate this step ...
echo "Please start the stack with docker-compose up -d, wait until active and ./data/ is populated. Then, run docker-compose down, and continue to add the above ip to your ./data/var/lib/postgresql/data/pg_fba.conf file."
