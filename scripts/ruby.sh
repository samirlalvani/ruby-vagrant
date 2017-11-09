#!/bin/bash

RUBY_VERSION=2.3.5
RAILS_VERSION=5.0.6


# update centos
sudo yum -y update

# install dependencies
sudo yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel

# install rbenv
cd /home/vagrant
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bash_profile
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bash_profile
source /home/vagrant/.bash_profile

git clone git://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> /home/vagrant/.bash_profile
source /home/vagrant/.bash_profile

# install ruby
rbenv install -v "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"

# install bundler
gem install bundler

# install rails and rehash
gem install rails -v "$RAILS_VERSION"
rbenv rehash

# install javascript runtime and nodejs
sudo yum -y install epel-release
sudo yum -y install nodejs

# verify versions
ruby -v
rails -v
