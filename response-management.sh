#!/bin/sh
#
# Script for running Packer to build the Response Management template so the Git
# commit SHA is included in the AMI description.
#
# Usage: response-management.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
export RM_GIT_COMMIT=$(cd /home/centos/code/response-management-service && git rev-parse --short HEAD)
packer build -var-file=./aws-variables.json -var-file=./response-management/variables.json ./response-management/template.json
