terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "venky-remote-state"
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "venky-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}