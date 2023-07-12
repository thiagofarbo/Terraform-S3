terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # define region as per your account
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "first-github-action-tf"

  object_lock_enabled = false

  tags = {
    Environment = "Dev"
  }
}