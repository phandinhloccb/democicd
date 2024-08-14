#####################################
# Internet Gatway
#####################################
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-igw-route-table"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

#####################################
# Private
#####################################
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${var.project}-${var.service}-${var.env}-private-table"
    Env     = "${var.env}"
    Project = "${var.project}-${var.service}"
  }
}
