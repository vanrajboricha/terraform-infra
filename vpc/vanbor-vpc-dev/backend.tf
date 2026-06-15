terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state in S3
  backend "s3" {
    bucket = "tfstate-vanbor-s3-ap-south-1-t4hb"
    key    = "dev/vanbor-vpc/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment  = var.environment
      ManagedBy    = "terraform"
      CreatedBy    = "backstage"
      ResourceName = var.resource_name
    }
  }
}