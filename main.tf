# VPC 모듈 호출
module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr_block = "10.1.0.0/16"
  vpc_name       = "ce15-terraform-vpc"
}

# 퍼블릭 서브넷 모듈 호출
module "public_subnet" {
  source = "./modules/public-subnet"
  
  vpc_id            = module.vpc.vpc_id
  web_subnet1_cidr  = "10.1.1.0/24"
  web_subnet2_cidr  = "10.1.2.0/24"
  availability_zone1 = "ap-northeast-2a"
  availability_zone2 = "ap-northeast-2b"
  subnet1_name      = "ce15-terraform-public-subnet1"
  subnet2_name      = "ce15-terraform-public-subnet2"
}

# 인터넷 게이트웨이 모듈 호출
module "internet_gateway" {
  source = "./modules/internet-gateway"
  
  vpc_id   = module.vpc.vpc_id
  igw_name = "ce15-terraform-igw"
}

# Elastic IP 모듈 호출
module "elastic_ip" {
  source   = "./modules/elastic-ip"
  eip_name = "ce15-terraform-eip"
}

# NAT 게이트웨이 모듈 호출
module "nat_gateway" {
  source           = "./modules/nat-gateway"
  
  eip_id           = module.elastic_ip.eip_id
  public_subnet_id = module.public_subnet.web_subnet1_id
  nat_gateway_name = "ce15-terraform-nat-gateway"
  internet_gw_id   = module.internet_gateway.internet_gw_id
}

# 퍼블릭 라우팅 테이블 모듈 호출
module "public_route_table" {
  source           = "./modules/public-route-table"
  
  vpc_id           = module.vpc.vpc_id
  internet_gw_id   = module.internet_gateway.internet_gw_id
  public_subnet1_id = module.public_subnet.web_subnet1_id
  public_subnet2_id = module.public_subnet.web_subnet2_id
  route_table_name = "ce15-terraform-public-rt"
}

# 프라이빗 서브넷 모듈 호출
module "private_subnet" {
  source = "./modules/private-subnet"
  
  vpc_id             = module.vpc.vpc_id
  private_subnet1_cidr   = "10.1.11.0/24"     
  private_subnet2_cidr   = "10.1.21.0/24"     
  availability_zone1 = "ap-northeast-2a"  
  availability_zone2 = "ap-northeast-2b"  
  private_subnet1_name       = "private-subnet1"  
  private_subnet2_name       = "private-subnet2"  
}

# 프라이빗 라우팅 테이블 모듈 호출
module "private_route_table" {
  source = "./modules/private-route-table"
  
  vpc_id           = module.vpc.vpc_id
  nat_gateway_id   = module.nat_gateway.nat_gateway_id
  private_subnet1_id = module.private_subnet.private_subnet1_id  
  private_subnet2_id = module.private_subnet.private_subnet2_id  
  route_table_name = "ce15-terraform-private-rt"
}
