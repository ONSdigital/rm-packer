#!/bin/sh
#
# Script for running Packer to build the Response Operations template so the Git
# commit SHA is included in the AMI description.
#
# Usage: response-operations.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
export RO_GIT_COMMIT=$(cd /home/centos/code/response-management-ui && git rev-parse --short HEAD)
packer build -var-file=./aws-variables.json -var-file=./response-operations/variables.json ./response-operations/template.json
