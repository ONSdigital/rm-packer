#!/bin/sh
#
# Script for running Packer to build the SSH bastion template.
#
# Usage: ssh-bastion.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
packer build -var-file=./aws-variables.json -var-file=./ssh-bastion/variables.json ./ssh-bastion/template.json
