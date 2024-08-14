data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

locals {
  env     = "dev"
  project = "demo-cicd"
  service = "demo"
}

