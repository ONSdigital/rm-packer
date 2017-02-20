#!/bin/bash

# install erlang repo
#sudo wget -O /etc/yum.repos.d/epel-erlang.repo http://repos.fedorapeople.org/repos/peter/erlang/epel-erlang.repo
sudo yum install -y erlang wget socat
sudo wget https://github.com/rabbitmq/rabbitmq-server/releases/download/rabbitmq_v3_6_6/rabbitmq-server-3.6.6-1.el7.noarch.rpm
sudo rpm -i rabbitmq-server-3.6.6-1.el7.noarch.rpm
sudo wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo rpm -Uvh epel-release-7-9.noarch.rpm
sudo wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
sudo rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
sudo yum -y update
sudo yum install -y erlang-17.5.3-1.el7.centos
sudo setsebool -P nis_enabled 1
sudo wget https://github.com/aweber/rabbitmq-autocluster/releases/download/0.6.1/autocluster-0.6.1.tgz
sudo tar xzf autocluster-0.6.1.tgz
sudo cp ./plugins/*.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.6/plugins/


# write rabbitmq autocluster Configuration
sudo cp /tmp/rabbitmq.config /etc/rabbitmq/rabbitmq.config


# write erlang cookie, this needs to be the same on all machines in the cluster
sudo bash -c "echo 'SDFIE8RBCOK5WBSNU3I33SRGFSDBHDFNK36DH' >> /var/lib/rabbitmq/.erlang.cookie"
sudo chown rabbitmq /var/lib/rabbitmq/.erlang.cookie
sudo chmod 600 /var/lib/rabbitmq/.erlang.cookie
sudo rabbitmq-plugins enable autocluster --offline
sudo systemctl enable rabbitmq-server
