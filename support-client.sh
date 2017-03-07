#!/bin/sh
#
# Script for running Packer to build the support client template.
#
# Usage: support-client.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
packer build -var-file=./aws-variables.json -var-file=./support-client/variables.json ./support-client/template.json
