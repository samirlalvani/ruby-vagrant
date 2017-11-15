# ruby-vagrant for quick_search

Basic CentOS 7.0 Vagrant with rbenv, Ruby 2.3.5, Rails 5.0.6, and [QuickSearch][1] pre-installed.

## Usage

```
$ vagrant up
$ vagrant ssh

$ cd /vagrant
$ vagrant ssh
$ cd quick_search
$ bundle exec rails generate quick_search:install
$ bundle update
```

You will then need to insert the searcher keys and execute:

```
$ rails s -b 0.0.0.0
```

You should see the QuickSearch app at <http://localhost:9000/> on your
host OS.

## Details

* CentOS 7.0 64-bit (base box: [puppetlabs/centos-7.0-64-puppet][2])
* rbenv 1.1.1
* Ruby 2.3.5
* Rails 5.0.6
* QuickSearch 0.0.1

Port 3000 on the guest is forwarded to 9000 on the host.

## Notes

### IP Address and Port Forwarding

By default, `rails s` only listens on `localhost`. To allow access to the
your rails app from the host machine using the default port forwarding, you must
bind the rails server to 0.0.0.0 using the `-b` switch: `rails s -b 0.0.0.0`.

### Javascript Runtime

This Vagrant installs the Javascript Runtime by default.


[1]: https://github.com/samirlalvani/quick_search
[2]: https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.0-64-puppet/versions/1.0.1	