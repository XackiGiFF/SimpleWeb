#!/bin/bash

# Function to generate a random password
generate_random_string() {
    length=$1
    tr -dc A-Za-z0-9 </dev/urandom | head -c $length ; echo ''
}
generate_random_password() {
    length=$1
    tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?~' </dev/urandom | head -c $length ; echo ''
}

# Variables
MYSQL_ROOT_PASSWORD=$(generate_random_string 12)
# Генерация значений по маске
MYSQL_DATABASE="corp_database"
MYSQL_USER="corp_u00$(generate_random_string 4)"
MYSQL_PASSWORD=$(generate_random_string 10)
UPLOAD_LIMIT="1G"
MAX_EXECUTION_TIME=300

# Creating .env file
cat << EOF > .env
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
MYSQL_DATABASE=${MYSQL_DATABASE}
MYSQL_USER=${MYSQL_USER}
MYSQL_PASSWORD=${MYSQL_PASSWORD}
UPLOAD_LIMIT=${UPLOAD_LIMIT}
MAX_EXECUTION_TIME=${MAX_EXECUTION_TIME}
EOF

# Output credentials
echo "Your credentials have been generated and saved to the .env file:"
echo "--------------------------------------------------------------"
echo "MySQL Root Password: ${MYSQL_ROOT_PASSWORD}"
echo "MySQL Database: ${MYSQL_DATABASE}"
echo "MySQL User: ${MYSQL_USER}"
echo "MySQL Password: ${MYSQL_PASSWORD}"
echo "Upload Limit: ${UPLOAD_LIMIT}"
echo "Max Execution Time: ${MAX_EXECUTION_TIME}"
echo "--------------------------------------------------------------"