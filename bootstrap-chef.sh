#!/bin/sh
#
# Script for bootstrapping a new EC2 instance so it can run the Chef client.
#
# Usage: bootstrap-chef.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
sleep 60
sudo -- sh -c "echo 5.198.141.182 filestore.ctpdev.local >> /etc/hosts"
sudo mkdir /etc/chef
sudo wget --directory-prefix=/etc/chef http://filestore.ctpdev.local/chef/client/client.rb
sudo wget --directory-prefix=/etc/chef http://filestore.ctpdev.local/chef/client/encrypted_data_bag_secret
sudo wget --directory-prefix=/etc/chef http://filestore.ctpdev.local/chef/client/validation.pem
sudo chmod 0600 /etc/chef/client.rb
sudo chmod 0400 /etc/chef/encrypted_data_bag_secret
sudo chmod 0600 /etc/chef/validation.pem
curl -L http://filestore.ctpdev.local/chef/omnibus/install.sh | sudo bash -s -- -v 12.8.1
