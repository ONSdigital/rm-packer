# Packer Templates for Response Management and Respondent Home
This repository contains [Packer](https://www.packer.io/) scripts for building [Response Management](https://github.com/ONSdigital/response-management-service) and [Respondent Home](https://github.com/ONSdigital/respondent-home-ui). The Packer scripts create an Amazon Machine Image (AMI) which can be used to quickly launch EC2 instances containing a pre-built Response Management or Respondent Home. [Chef](https://chef.io/) is used by Packer as a provisioner to install and configure the application software within the AMI in a consistent and repeatable fashion.

## Prerequisites
The Chef validation key (`validation.pem`) and encrypted data bag secret (`encrypted_data_bag_secret`) must be present on the machine on which Packer is running in the `/etc/chef` directory and be readable by the operating system account used to run Packer. Knife should be installed and configured on the machine on which Packer is running in order for Packer to be able to properly clean up the Chef node and client.

Edit the path `/home/centos/code/respondent-home-ui` on the first line of `build.sh` to match the path to the Respondent Home Git repository on your machine. Create a file named `variables.json` within the same directory as this file. This is a file that provides Packer with values for the application version, Chef environment, AWS access key, secret key, region, subnet and VPC variables as shown below. Note that this file is ignored by Git.

```json
{
  "app_version": "...",
  "aws_access_key": "...",
  "aws_secret_key": "...",
  "chef_environment": "...",
  "region": "eu-west-1",
  "subnet_id": "subnet-...",
  "vpc_id": "vpc-..."
}
```

## Running
To build a template using Packer use:

  `./build.sh`
