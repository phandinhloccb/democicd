output "alb_public_1a_subnet" {
  value = aws_subnet.alb_public_1a_subnet
}

output "alb_public_1c_subnet" {
  value = aws_subnet.alb_public_1c_subnet
}

output "app_public_1a_subnet" {
  value = aws_subnet.app_public_1a_subnet
}

output "app_public_1c_subnet" {
  value = aws_subnet.app_public_1c_subnet
}

output "rds_private_1a_subnet" {
  value = aws_subnet.rds_private_1a_subnet
}

output "rds_private_1c_subnet" {
  value = aws_subnet.rds_private_1c_subnet
}

output "redis_private_1a_subnet" {
  value = aws_subnet.redis_private_1a_subnet
}

output "redis_private_1c_subnet" {
  value = aws_subnet.redis_private_1c_subnet
}

output "bastion_host_public_1a_subnet" {
  value = aws_subnet.bastion_host_public_1a_subnet
}

output "vpc" {
  value = aws_vpc.vpc
}

output "vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}

output "security_group_app_alb" {
  value = aws_security_group.app_alb
}

output "security_group_app" {
  value = aws_security_group.app
}

output "security_group_rds" {
  value = aws_security_group.rds
}

output "security_group_redis" {
  value = aws_security_group.redis
}

output "security_group_bastion_host" {
  value = aws_security_group.bastion_host
}
