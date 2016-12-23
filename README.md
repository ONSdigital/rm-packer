# Packer Templates for Response Management and Respondent Home
This repository contains [Packer](https://www.packer.io/) scripts for building [Response Management](https://github.com/ONSdigital/response-management-service) and [Respondent Home](https://github.com/ONSdigital/respondent-home-ui).

## Prerequisites
Edit `/home/centos/code/respondent-home-ui` in `run.sh` to match the path to the Respondent Home Git repository on your machine. Create a file named `variables.json` within the same directory as this file. This is a file that provides Packer with values for the application version, AWS access key, secret key, region, subnet and VPC variables as shown below. Note that this file is ignored by Git.

```json
{
  "app_version": "...",
  "aws_access_key": "...",
  "aws_secret_key": "...",
  "region": "eu-west-1",
  "subnet_id": "subnet-...",
  "vpc_id": "vpc-..."
}
```

## Running
To build a template using Packer use:

  `./build.sh`
