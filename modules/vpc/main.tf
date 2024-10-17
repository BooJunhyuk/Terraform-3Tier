resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block  # 변수로 CIDR 블록을 받음
  
  tags = {
    Name = var.vpc_name  # 변수로 태그 이름을 받음
  }
}

# 필요하다면 추가적으로 인터넷 게이트웨이, NAT 게이트웨이 등을 여기에 포함할 수 있음.
