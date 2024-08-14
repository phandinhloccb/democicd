###############################################
# Alb
###############################################
resource "aws_route_table_association" "alb_1a_public" {
  subnet_id      = aws_subnet.alb_public_1a_subnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "alb_1c_public" {
  subnet_id      = aws_subnet.alb_public_1c_subnet.id
  route_table_id = aws_route_table.public.id
}

###############################################
# App
###############################################
resource "aws_route_table_association" "app_1a_public" {
  subnet_id      = aws_subnet.app_public_1a_subnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "app_1c_public" {
  subnet_id      = aws_subnet.app_public_1c_subnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "bastion_host_1a_public" {
  subnet_id      = aws_subnet.bastion_host_public_1a_subnet.id
  route_table_id = aws_route_table.public.id
}
