#####################################
# Alb
#####################################
resource "aws_subnet" "alb_public_1a_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = var.alb_public_1a_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-alb-public-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

resource "aws_subnet" "alb_public_1c_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = var.alb_public_1c_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-alb-public-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

#####################################
# App
#####################################
resource "aws_subnet" "app_public_1a_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = var.app_public_1a_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-app-public-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

resource "aws_subnet" "app_public_1c_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = var.app_public_1c_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-app-public-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

#####################################
# Rds
#####################################
resource "aws_subnet" "rds_private_1a_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.rds_private_1a_subnet_cidr_block
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-rds-private-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

resource "aws_subnet" "rds_private_1c_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.rds_private_1c_subnet_cidr_block
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-rds-private-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

#####################################
# ElasticCacheRedis
#####################################
resource "aws_subnet" "redis_private_1a_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.redis_private_1a_subnet_cidr_block
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-redis-private-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

resource "aws_subnet" "redis_private_1c_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.redis_private_1c_subnet_cidr_block
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-redis-private-subnet"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

#####################################
# Bastion Host
#####################################
resource "aws_subnet" "bastion_host_public_1a_subnet" {
  vpc_id            = aws_vpc.vpc.id
  availability_zone = "ap-northeast-1a"
  cidr_block        = var.bastion_host_public_1a_subnet_cidr_block

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-bastion-host-public-subnet"
    Env     = " ${var.env}"
    Project = "${var.project}-${var.service}"
  }

}
