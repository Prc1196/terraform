terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.0"
    }
  }
 
  backend "s3" {
    bucket = "prc82s-remote-state"
    key    = "expense-backend-infra" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "prc82s-state-locking"
  }

}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}