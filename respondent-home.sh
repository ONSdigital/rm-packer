#!/bin/sh
#
# Script for running Packer to build the Respondent Home template so the Git
# commit SHA is included in the AMI description.
#
# Usage: respondent-home.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
export GIT_COMMIT=$(cd /home/centos/code/respondent-home-ui && git rev-parse --short HEAD)
packer build -var-file=./aws-variables.json -var-file=./respondent-home/variables.json ./respondent-home/template.json
