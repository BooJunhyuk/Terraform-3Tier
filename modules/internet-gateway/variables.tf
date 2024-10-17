variable "vpc_id" {
  description = "The VPC ID for the internet gateway"
  type        = string
}

variable "igw_name" {
  description = "The name tag for the internet gateway"
  type        = string
  default     = "ce15-terraform-igw"
}
