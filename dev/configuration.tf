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

  backend "s3" {
    bucket  = "tfstate.demo-cicd"
    region  = "ap-northeast-1"
    key     = "dev.tfstate"
    profile = ""
  }
}

