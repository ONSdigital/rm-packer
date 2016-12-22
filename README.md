# Packer Templates for Response Management and Respondent Home
This repository contains [Packer](https://www.packer.io/) scripts for building [Response Management](https://github.com/ONSdigital/response-management-service) and [Respondent Home](https://github.com/ONSdigital/respondent-home-ui).

## Running
To build a template using Packer use:

  `packer build -var-file=aws-credentials.json <template>.json`

`aws-credentials.json` is a file that provides Packer with values for the AWS access key, secret key, region, subnet and VPC variables as shown below. Note that this file is ignored by Git.

```json
{
  "aws_access_key": "...",
  "aws_secret_key": "...",
  "region": "eu-west-1",
  "subnet_id": "subnet-...",
  "vpc_id": "vpc-..."
}
```
