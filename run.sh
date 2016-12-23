#!/bin/sh
#
# Script for running Packer to build the template so the Git commit SHA is
# included in the AMI description.
#
# Usage: run.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
export GIT_COMMIT=$(cd /home/centos/code/respondent-home-ui && git rev-parse --short HEAD)
packer build -var-file=./aws-credentials.json ./respondent-home.json
