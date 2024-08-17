module "network" {
  source = "../modules/network"

  env                                      = local.env
  project                                  = local.project
  service                                  = local.service
  cidr_prefix                              = "10.1.0.0/16"
  alb_public_1a_subnet_cidr_block          = "10.1.1.0/24"
  alb_public_1c_subnet_cidr_block          = "10.1.2.0/24"
  app_public_1a_subnet_cidr_block          = "10.1.3.0/24"
  app_public_1c_subnet_cidr_block          = "10.1.4.0/24"
  rds_private_1a_subnet_cidr_block         = "10.1.128.0/24"
  rds_private_1c_subnet_cidr_block         = "10.1.129.0/24"
  redis_private_1a_subnet_cidr_block       = "10.1.130.0/24"
  redis_private_1c_subnet_cidr_block       = "10.1.131.0/24"
  bastion_host_public_1a_subnet_cidr_block = "10.1.190.0/24"


  sg_alb_rules = {
    "rule_1" = ["egress", 0, 0, "-1", null, ["0.0.0.0/0"], ""],
    "rule_2" = ["ingress", 80, 80, "tcp", null, ["116.94.0.124/32"], "HTTP access from fusic"],
    "rule_3" = ["ingress", 443, 443, "tcp", null, ["116.94.0.124/32"], "HTTPS access from fusic"],
  }
}

