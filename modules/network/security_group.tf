########################################################
# Alb security group
########################################################
resource "aws_security_group" "app_alb" {
  name   = "${var.project}-${var.service}-${var.env}-app-alb"
  vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "sg1_rules" {
  for_each = var.sg_alb_rules

  security_group_id        = aws_security_group.app_alb.id
  type                     = each.value[0]
  from_port                = each.value[1]
  to_port                  = each.value[2]
  protocol                 = each.value[3]
  source_security_group_id = each.value[4]
  cidr_blocks              = each.value[5]
  description              = each.value[6]
}

########################################################
# App security group
########################################################
resource "aws_security_group" "app" {
  name   = "${var.project}-${var.service}-${var.env}-app"
  vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "app_inbound" {
  description              = "Allow App inbound traffic"
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.app_alb.id
  security_group_id        = aws_security_group.app.id
}

resource "aws_security_group_rule" "app_outbound" {
  description       = "Allow All outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app.id
}

########################################################
# rds security group
########################################################
resource "aws_security_group" "rds" {
  name   = "${var.project}-${var.service}-${var.env}-rds"
  vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "rds_inbound_from_app" {
  description              = "Allow App inbound traffic"
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.app.id
  security_group_id        = aws_security_group.rds.id
}

resource "aws_security_group_rule" "rds_inbound_from_bastion_host" {
  description              = "Allow Bastion Host inbound traffic"
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.bastion_host.id
  security_group_id        = aws_security_group.rds.id
}

resource "aws_security_group_rule" "rds_outbound" {
  description       = "Allow All outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.rds.id
}

########################################################
# redis security group
########################################################
resource "aws_security_group" "redis" {
  name   = "${var.project}-${var.service}-${var.env}-redis"
  vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "redis_inbound_from_app" {
  description              = "Allow App inbound traffic"
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.app.id
  security_group_id        = aws_security_group.redis.id
}

resource "aws_security_group_rule" "redis_inbound_from_bastion_host" {
  description              = "Allow Bastion Host inbound traffic"
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.bastion_host.id
  security_group_id        = aws_security_group.redis.id
}

resource "aws_security_group_rule" "redis_outbound" {
  description       = "Allow All outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.redis.id
}

########################################################
# bastion host security group
########################################################
resource "aws_security_group" "bastion_host" {
  name   = "${var.project}-${var.service}-${var.env}-bastion-host"
  vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "bastion_host" {
  description       = "Allow All outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.bastion_host.id
}
