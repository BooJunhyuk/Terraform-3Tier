variable "vpc_id" {
  description = "The ID of the VPC this subnet belongs to"
  type        = string
}

variable "web_subnet1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "web_subnet2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone1" {
  description = "The availability zone for the first public subnet"
  type        = string
  default     = "ap-northeast-2a"
}

variable "availability_zone2" {
  description = "The availability zone for the second public subnet"
  type        = string
  default     = "ap-northeast-2b"
}

variable "subnet1_name" {
  description = "The name tag for the first public subnet"
  type        = string
  default     = "ce15-terraform-subnet1"
}

variable "subnet2_name" {
  description = "The name tag for the second public subnet"
  type        = string
  default     = "ce15-terraform-subnet2"
}
