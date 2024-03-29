provider "aws" {
  region                  = "ap-northeast-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "ohr486-aws-base-terraform" # SET YOUR PROFILE
}

terraform {
  backend "s3" {
    bucket                  = "ohr486.terraform"     # SET YOUR BUCKET
    key                     = "ohr486-base.tfstate"   # SET YOUR KEY
    region                  = "ap-northeast-1"
    dynamodb_table          = "tfstate"              # SET YOUR DDB TABLE
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "ohr486-aws-base-terraform" # SET YOUR PROFILE
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.44"
    }
  }
}
