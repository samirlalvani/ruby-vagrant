# ruby-vagrant

Basic CentOS 7.0 Vagrant with RVM, Ruby, and Rails pre-installed

## Usage

```
$ vagrant up
$ vagrant ssh

$ cd /vagrant
$ rails new appname
$ cd appname
$ bin/rails server -b 0.0.0.0
```

You should see the Rails smoke test screen at <http://localhost:9000/> on your
host OS.

## Details

* CentOS 7.7 64-bit (base box: [puppetlabs/centos-7.0-64-puppet][1])
* RVM 1.26.11
* Ruby 2.2.4
* Rails 4.2.6

Port 3000 on the guest is forwarded to 9000 on the host.

## Notes

### IP Address and Port Forwarding

By default, `rails server` only listens on `localhost`. To allow access to the
your rails app from the host machine using the default port forwarding, you must
bind the rails server to 0.0.0.0 using the `-b` switch: `rails server -b 0.0.0.0`.

### Javascript Runtime

By default, Rails requires a Javascript runtime to operate. While such a runtime is
included on OS X and Windows, for Linux machines (like this Vagrant box), you must
modify the `Gemfile` created by `rails new` to uncomment the line including the `therubyracer` gem, and then run `bundle install` to update your gems. See the
[Starting up the Web Server][2] section of the official Ruby on Rails tutorial for
more details.


[1]: https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.0-64-puppet/versions/1.0.1
[2]: http://guides.rubyonrails.org/getting_started.html#starting-up-the-web-server