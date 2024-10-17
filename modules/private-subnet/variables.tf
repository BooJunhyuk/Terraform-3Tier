variable "vpc_id" {
  description = "The ID of the VPC this subnet belongs to"
  type        = string
}

variable "private_subnet1_cidr" {
  description = "The CIDR block for the first private subnet"
  type        = string
  default     = "10.0.11.0/24"
}

variable "private_subnet2_cidr" {
  description = "The CIDR block for the second private subnet"
  type        = string
  default     = "10.0.21.0/24"
}

variable "availability_zone1" {
  description = "The availability zone for the first private subnet"
  type        = string
  default     = "ap-northeast-2a"
}

variable "availability_zone2" {
  description = "The availability zone for the second private subnet"
  type        = string
  default     = "ap-northeast-2b"
}

variable "private_subnet1_name" {
  description = "The name tag for the first private subnet"
  type        = string
  default     = "ce15-terraform-private_subnet1"
}

variable "private_subnet2_name" {
  description = "The name tag for the second private subnet"
  type        = string
  default     = "ce15-terraform-private_subnet2"
}
