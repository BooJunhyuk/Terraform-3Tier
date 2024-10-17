variable "vpc_id" {
  description = "The VPC ID for the public route table"
  type        = string
}

variable "internet_gw_id" {
  description = "The ID of the internet gateway"
  type        = string
}

variable "public_subnet1_id" {
  description = "The ID of the first public subnet"
  type        = string
}

variable "public_subnet2_id" {
  description = "The ID of the second public subnet"
  type        = string
}

variable "route_table_name" {
  description = "The name tag for the public route table"
  type        = string
  default     = "ce15-terraform-public-rt"
}
