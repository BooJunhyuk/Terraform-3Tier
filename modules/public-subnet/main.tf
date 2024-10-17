# 첫 번째 퍼블릭 서브넷 생성
resource "aws_subnet" "web_subnet1" {
  vpc_id                 = var.vpc_id
  cidr_block             = var.web_subnet1_cidr
  availability_zone      = var.availability_zone1
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.subnet1_name
  }
}

# 두 번째 퍼블릭 서브넷 생성
resource "aws_subnet" "web_subnet2" {
  vpc_id                 = var.vpc_id
  cidr_block             = var.web_subnet2_cidr
  availability_zone      = var.availability_zone2
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet2_name
  }
}
