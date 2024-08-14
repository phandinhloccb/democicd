variable "cidr_prefix" { type = string }
variable "env" { type = string }
variable "project" { type = string }
variable "service" { type = string }
variable "alb_public_1a_subnet_cidr_block" { type = string }
variable "alb_public_1c_subnet_cidr_block" { type = string }
variable "app_public_1a_subnet_cidr_block" { type = string }
variable "app_public_1c_subnet_cidr_block" { type = string }
variable "rds_private_1a_subnet_cidr_block" { type = string }
variable "rds_private_1c_subnet_cidr_block" { type = string }
variable "redis_private_1a_subnet_cidr_block" { type = string }
variable "redis_private_1c_subnet_cidr_block" { type = string }
variable "bastion_host_public_1a_subnet_cidr_block" { type = string }
variable "sg_alb_rules" {}
