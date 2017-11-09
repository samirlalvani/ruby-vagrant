# ruby-vagrant

Basic CentOS 7.0 Vagrant with rbenv, Ruby 2.3.5, and Rails 5.0.6 pre-installed.

## Usage

```
$ vagrant up
$ vagrant ssh

$ cd /vagrant
$ rails new appname
$ cd appname
$ rails s -b 0.0.0.0
```

You should see the Rails smoke test screen at <http://localhost:9000/> on your
host OS.

### Pre-built Base Box

You can also use a pre-built version of this box as the basis of your Vagrant:
[peichman-umd/ruby][2]:

```
$ mkdir myproject
$ cd myproject
$ vagrant init peichman-umd/ruby
$ vagrant up
```

Note that if you use the pre-built base box, you will have to specify the port
forwarding yourself in your project's Vagrantfile:

```ruby
config.vm.network "forwarded_port", guest: 3000, host: 9000
```

## Details

* CentOS 7.0 64-bit (base box: [puppetlabs/centos-7.0-64-puppet][1])
* rbenv 1.1.1
* Ruby 2.3.5
* Rails 5.0.6

Port 3000 on the guest is forwarded to 9000 on the host.

## Notes

### IP Address and Port Forwarding

By default, `rails s` only listens on `localhost`. To allow access to the
your rails app from the host machine using the default port forwarding, you must
bind the rails server to 0.0.0.0 using the `-b` switch: `rails s -b 0.0.0.0`.

### Javascript Runtime

This Vagrant installs the Javascript Runtime by default.


[1]: https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.0-64-puppet/versions/1.0.1
[2]: https://atlas.hashicorp.com/peichman-umd/boxes/ruby/versions/1.0.0