#!/bin/bash

# install erlang repo
#sudo wget -O /etc/yum.repos.d/epel-erlang.repo http://repos.fedorapeople.org/repos/peter/erlang/epel-erlang.repo
sudo yum -y update
sudo yum -y install epel-release
sudo yum -y install nginx mod_ssl
sudo cp -fr /tmp/files/* /usr/share/nginx/html/
sudo systemctl enable nginx
sudo systemctl start nginx
