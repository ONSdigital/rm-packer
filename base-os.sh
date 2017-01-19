#!/bin/sh
#
# Script for running Packer to build the Base OS template.
#
# Usage: base-os.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
packer build -var-file=./aws-variables.json -var-file=./base-os/variables.json ./base-os/template.json
