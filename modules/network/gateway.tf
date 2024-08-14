resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-internet-gateway"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}
