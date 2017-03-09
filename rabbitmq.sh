#!/bin/sh
#
# Script for running Packer to build the RabbitMQ template.
#
# Usage: rabbitmq.sh
#
# Author: John Topley (john.topley@ons.gov.uk)
#
packer build -var-file=./aws-variables.json -var-file=./rabbitmq/variables.json ./rabbitmq/template.json
