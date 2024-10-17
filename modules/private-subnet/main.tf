# 첫 번째 프라이빗 서브넷 생성
resource "aws_subnet" "private_subnet1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet1_cidr
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = false
  
  tags = {
    Name = var.private_subnet1_name
  }
}

# 두 번째 프라이빗 서브넷 생성
resource "aws_subnet" "private_subnet2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet2_cidr
  availability_zone       = var.availability_zone2
  map_public_ip_on_launch = false
  
  tags = {
    Name = var.private_subnet2_name
  }
}
