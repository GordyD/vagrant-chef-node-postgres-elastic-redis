#!/bin/bash
npm install -g yo
npm install -g generator-angular

\curl -L https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
gem install rails
gem install bundler