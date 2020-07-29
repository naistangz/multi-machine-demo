#!/bin/bash

# Install mongodb
#Step 1:  Import the MongoDB public key
wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -

#Step 2: Generate a file with the MongoDB repository url
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#Step 3: Refresh the local database with the packages
sudo apt-get update -y

#Step 4: Install the last stable MongoDB version and all the necessary packages on our system
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# Step 5 removing the default conf and replacing with our configuration
sudo rm /etc/mongod.conf
sudo ln -s /home/vagrant/environment/db/mongod.conf /etc/mongod.conf

#Step 5: Getting MongoDB set up
sudo sed -i "s,\\(^[[:blank:]]*bindIp:\\) .*,\\1 0.0.0.0," /etc/mongod.conf
sudo systemctl start mongod
sudo systemctl status mongod
sudo systemctl enable mongod


