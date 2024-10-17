variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  type        = string
}

variable "private_subnet1_id" {
  description = "The ID of the first private subnet"
  type        = string
}

variable "private_subnet2_id" {
  description = "The ID of the second private subnet"
  type        = string
}

variable "route_table_name" {
  description = "The name tag for the private route table"
  type        = string
  default     = "ce15-terraform-private-rt"
}
