terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "amseelterraformstatestore"
    key    = "amseel/terraform.tfstate"
    region = "ap-south-1"   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}


