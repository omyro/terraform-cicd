terraform {
  backend "s3" {
    bucket = "state-bucket-terraform-345"
    dynamodb_table = "state-lock"
    region = "us-east-1"
    key = "state"
    encrypt = true
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}