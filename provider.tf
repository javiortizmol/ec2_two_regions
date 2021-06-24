terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  alias  = "main"
  region = local.ec2.region.main
}

provider "aws" {
  alias  = "provisional"
  region = local.ec2.region.provisional
}