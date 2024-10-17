resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gw_id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "pub_rt_association_1" {
  subnet_id      = var.public_subnet1_id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "pub_rt_association_2" {
  subnet_id      = var.public_subnet2_id
  route_table_id = aws_route_table.public_route_table.id
}
