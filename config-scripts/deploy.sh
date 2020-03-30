#!/bin/bash

#Clone App from Git
git clone -b monolith https://github.com/express42/reddit.git

#Change directory
cd reddit

#INstall application
bundle install

#Start Server
puma -d

