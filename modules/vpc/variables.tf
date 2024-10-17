variable "vpc_cidr_block" {
  description = "VPC의 CIDR 블록"
  type        = string
  default     = "10.0.0.0/16"  # 기본 CIDR 블록
}

variable "vpc_name" {
  description = "VPC의 이름 (태그용)"
  type        = string
  default     = "ce15-terraform-vpc"
}
