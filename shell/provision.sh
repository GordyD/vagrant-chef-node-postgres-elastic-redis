#!/bin/bash
npm install -g yo
npm install -g generator-angular


\curl -L https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
rvm install 1.9.3
apt-get install libxslt-dev libxml2-dev
gem install rails
gem install bundler