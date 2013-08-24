#!/bin/bash
npm install -g yo
npm install -g generator-angular

apt-get install curl
curl -L https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
rvm install 1.9.3
apt-get install libxslt-dev libxml2-dev libxml2
gem install rails
gem install bundler

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install mongodb-10gen