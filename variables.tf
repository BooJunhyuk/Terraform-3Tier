# VPC CIDR 블록 정의
variable "vpc_cidr_block" {
  description = "VPC의 CIDR 블록"
  type        = string
  default     = "10.0.0.0/16"
}

# 퍼블릭 서브넷 CIDR 블록 정의
variable "public_subnet1_cidr" {
  description = "첫 번째 퍼블릭 서브넷의 CIDR 블록"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  description = "두 번째 퍼블릭 서브넷의 CIDR 블록"
  type        = string
  default     = "10.0.2.0/24"
}

# 프라이빗 서브넷 CIDR 블록 정의
variable "private_subnet1_cidr" {
  description = "첫 번째 프라이빗 서브넷의 CIDR 블록"
  type        = string
  default     = "10.0.11.0/24"
}

variable "private_subnet2_cidr" {
  description = "두 번째 프라이빗 서브넷의 CIDR 블록"
  type        = string
  default     = "10.0.12.0/24"
}

# 퍼블릭 서브넷에 사용할 가용 영역 정의
variable "availability_zone1" {
  description = "첫 번째 가용 영역"
  type        = string
  default     = "ap-northeast-2a"
}

variable "availability_zone2" {
  description = "두 번째 가용 영역"
  type        = string
  default     = "ap-northeast-2b"
}
