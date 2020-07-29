#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get update -y

# install pm2
sudo npm install pm2 -g

## Install mongodb
##Step 1:  Import the MongoDB public key
#wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -
#
##Step 2: Generate a file with the MongoDB repository url
#echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#
##Step 3: Refresh the local database with the packages
#sudo apt-get update -y
#
##Step 4: Install the last stable MongoDB version and all the necessary packages on our system
#sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
#
##Step 5: Getting MongoDB set up
#sudo sed -i "s,\\(^[[:blank:]]*bindIp:\\) .*,\\1 0.0.0.0," /etc/mongod.conf
#sudo systemctl start mongod
#sudo systemctl status mongod
#sudo systemctl enable mongod