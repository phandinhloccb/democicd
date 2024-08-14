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

  required_version = "~> 1.3.4"

  backend "s3" {
    bucket  = "tfstate.demo-cicd"
    region  = "ap-northeast-1"
    key     = "dev.tfstate"
    profile = ""
  }
}

provider "spacelift" {
  api_key_endpoint = "https://phandinhloc.app.spacelift.io"
  api_key_id       = "<api-key-id>"
  api_key_secret   = "<api-key-secret>"
}

data "spacelift_account" "this" {
}

output "account_name" {
  value = data.spacelift_account.this.name
}

