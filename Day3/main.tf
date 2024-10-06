terraform {
    required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0" # AWS provider version, not terraform version
    }
    }
}




provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "rammohan" {
    instance_type = "t2.micro"
    ami = "ami-0866a3c8686eaeeba"
    subnet_id = "subnet-061fd8c1851b15c3c"
}


resource "aws_s3_bucket" "s3_bucket" {
    bucket = "mohan-s3-demo-tf-state-1"
}


resource "aws_dynamodb_table" "terraform_lock"{
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}