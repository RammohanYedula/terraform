terraform {
  backend "s3" {
    bucket = "mohan-s3-demo-tf-state-1"
    key    = "rammohan/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
