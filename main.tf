terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1" //Tokyo
  # version = "~>2.0"
  access_key = var.awsAcctKey
  secret_key = var.awsActSecret
#   https://linspira.signin.aws.amazon.com/console
}

variable "awsAcctKey" {
  description = "Account key for AWS programmatic terraform user"
  type        = string
}

variable "awsActSecret" {
  description = "Account password for terraform user"
  type        = string
}


// TODO: 
# - s3 bucket for static frontend files
# - s3 bucket for HTTP redirects
# - configure DNS
# - configure ACM
# - configure cloudfront
# - add AppSync: GraphQL
# - add DB: dynamoDB
# - add lambda scripts for backend management
# - build API GW