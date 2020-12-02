#!/bin/bash

# Check for and if not existant, create data directory, output instructions
mkdir -p data
echo -e "Setup has been completed. Please run docker-compose up -d to initialize DB.\n"
echo -e "You may connect to the database with the following string: psql -p 5433 -d db_name -U user -h localhost"
