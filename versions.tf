terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }
  }

  backend "s3" {
    bucket = "test-s3-11111"
    key    = "tfstate/terraform.tfstate"
    region = "us-west-2"
  }

  required_version = "~> 0.14"
}
