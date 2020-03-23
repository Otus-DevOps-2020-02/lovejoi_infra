#!/bin/bash
#Add key and repository for MongoDB

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xd68fa50fea312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

#Update packages list and install MongoDB

sudo apt update
sudo apt install -y mongodb-org

#Run MongoDB
sudo systemctl start mongod

#Add Autorun
sudo systemctl enable mongod

#Show resuts
echo "!!!!Script Finished!!!"

