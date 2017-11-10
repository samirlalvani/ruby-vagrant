#!/bin/bash

# install dependencies
sudo yum install -y mysql-devel qtwebkit-devel

# create test application
cd /home/vagrant
rails new quick_search
cd quick_search
echo ""  >> Gemfile
echo "# Inserted by bash script"  >> Gemfile
echo "gem 'quick_search-core', :git => 'https://github.com/samirlalvani/quick_search.git' "  >> Gemfile
echo "gem 'jquery-rails'"  >> Gemfile
bundle install