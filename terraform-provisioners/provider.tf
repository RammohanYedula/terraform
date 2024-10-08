terraform {
    required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0" # AWS provider version, not terraform version
    }
    }
    backend "s3" {
    bucket = "mohan-aws-remote-state-terraform"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "mohan-aws-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}