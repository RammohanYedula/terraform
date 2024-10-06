terraform {
  backend "s3" {
    bucket = "mohan-s3-demo-tf-state"
    key    = "rammohan/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
