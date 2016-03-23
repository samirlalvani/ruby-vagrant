#!/bin/bash

# add to permanent rules
# 3000: Rails default HTTP port
firewall-cmd --zone=public --add-port=3000/tcp --permanent

# reload firewalld to make the changes take effect
systemctl stop firewalld
systemctl start firewalld
