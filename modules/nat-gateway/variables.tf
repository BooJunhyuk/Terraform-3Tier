variable "eip_id" {
  description = "The ID of the Elastic IP"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet for the NAT Gateway"
  type        = string
}

variable "nat_gateway_name" {
  description = "The name tag for the NAT Gateway"
  type        = string
  default     = "ce15-terraform-nat-gateway"
}

variable "internet_gw_id" {
  description = "The ID of the internet gateway"
  type        = string
}
