terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.21.0"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 0.1.30"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

