# 프라이빗 라우팅 테이블 생성
resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = var.route_table_name
  }
}

# 첫 번째 프라이빗 서브넷과 라우트 테이블 연결
resource "aws_route_table_association" "private_rt_assoc1" {
  subnet_id      = var.private_subnet1_id
  route_table_id = aws_route_table.private_route_table.id
}

# 두 번째 프라이빗 서브넷과 라우트 테이블 연결
resource "aws_route_table_association" "private_rt_assoc2" {
  subnet_id      = var.private_subnet2_id
  route_table_id = aws_route_table.private_route_table.id
}
