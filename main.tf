provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# Stores the terraform state file in S3
terraform {
  backend "s3" {
    bucket = "techwithdk-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}