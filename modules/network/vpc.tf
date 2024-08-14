resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_prefix
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-vpc"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}
