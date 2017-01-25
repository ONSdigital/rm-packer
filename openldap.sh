#!/bin/sh
#
# Script for running Packer to build the OpenLDAP template.
#
# Usage: openldap.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
packer build -var-file=./aws-variables.json -var-file=./openldap/variables.json ./openldap/template.json
